clc
clearvars
close all

% Name of the RDR data product file

RdrFile = 'H:\SHARAD_DATA\RDR\r_0580901_001_ss19_700_a.dat';



% Physical constants
c = 299792458; % speed of light in vacuo
r = 3389.95e3; % Mars mean radius in m
r_sphere  = 3389.95;                  % Mars mean radius in Km

% Parameters defining the characteristics of the radargram image
VerticalExagg = 20; % vertical exaggeration of the radargram
DynamicRange = 40; % dynamic range of the radargram, in dB
BDepth = 8; % bit depth of the output image

% Definition of which records you want to extract from the file, to be
% toggled to avoid memory problems, as data products are rather large. Note
% that the procedure "readsharadrdr" used with the data product file name
% as single argument provides the number of records in the data product
% file.

Records  = readsharadrdr( RdrFile );

longitude = readsharadrdr( RdrFile, 'SubScEastLongitude',          1, Records, Records - 1 );
latitude  = readsharadrdr( RdrFile, 'SubScPlanetocentricLatitude', 1, Records, Records - 1 );

theta = pi ./ 180 .* longitude;
phi   = pi ./ 180 .* latitude;
[ x, y, z ] = sph2cart( theta, phi, 1 );
horizdist = r .* acos( x( 1 ) * x( end ) + y( 1 ) * y( end ) + z( 1 ) * z( end ) );

RecordsRequired = horizdist / (c ./ 2 .* 0.075e-6) / VerticalExagg;

SkipRecords = round( Records / RecordsRequired );
if SkipRecords < 1; SkipRecords = 1; end

% Extract from the SHARAD RDR data product the parameters you want to plot
% through the use of the procedure "readsharadrdr"

echoreal  = readsharadrdr( RdrFile, 'EchoSamplesReal',      1, Records, SkipRecords );
echoimag  = readsharadrdr( RdrFile, 'EchoSamplesImaginary', 1, Records, SkipRecords );
rangesh   = readsharadrdr( RdrFile, 'RangeShift',           1, Records, SkipRecords );

% Express the power of the radar signal in dB.

echopower = 10 .* log10( double( echoreal ).^2 + double( echoimag ).^2 );

% Align correctly blocks that have been misaligned because of processing.
rangesh = round( - double( rangesh ) ./ 2 );

for i = 1 : length( rangesh )
    echopower( :, i ) = circshift( echopower( :, i ), rangesh( i ) );
end

% Set the dynamic range in dB's of the radargram for display, toggling
% until you get a clear image. Good radargrams have a dynamic range greater
% than 40 dB, lousy radargrams have a range of 20 dB or so. Less than that,
% it's just noise.

maxechopower = max( max( echopower ) );
echopower( echopower < ( maxechopower - DynamicRange ) ) = maxechopower - DynamicRange;

% any numerical oddity, due to the logarithm of a non-positive quantity, is
% removed
echopower( ~isfinite( echopower ) ) = maxechopower - DynamicRange;

% the radargram is normalized, so that it can be easily written into an
% image
echopower = ( echopower - maxechopower + DynamicRange ) / DynamicRange;

% the radargram is written in an image file with the same name as the data
% product, in PNG format 
imwrite( echopower, [ RdrFile( 1 : end - 4 ), '.png' ], 'BitDepth', BDepth );
