function SharadRdr = readsharadrdr( RdrFile, ParameterName, StartRecord, StopRecord, SkipRecords )

% RdrFile: 
RecordBytes = 5822;

Parameter       = cell( 102, 1 );
Precision       = cell( 102, 1 );
OutputPrecision = cell( 102, 1 );
MachineFormat   = cell( 102, 1 );

Parameter{   1 } = 'ScetBlockWhole'               ; Offset(   1 ) =    0; Items(   1 ) =   1; Precision{   1 } =  'uint32'; OutputPrecision{   1 } =  'uint32'; MachineFormat{   1 } = 'ieee-le'; ParameterBytes(   1 ) = 4;
Parameter{   2 } = 'ScetBlockFrac'                ; Offset(   2 ) =    4; Items(   2 ) =   1; Precision{   2 } =  'uint16'; OutputPrecision{   2 } =  'uint16'; MachineFormat{   2 } = 'ieee-le'; ParameterBytes(   2 ) = 2;
Parameter{   3 } = 'TlmCounter'                   ; Offset(   3 ) =    6; Items(   3 ) =   1; Precision{   3 } =  'uint32'; OutputPrecision{   3 } =  'uint32'; MachineFormat{   3 } = 'ieee-le'; ParameterBytes(   3 ) = 4;
Parameter{   4 } = 'FmtLength'                    ; Offset(   4 ) =   10; Items(   4 ) =   1; Precision{   4 } =  'uint16'; OutputPrecision{   4 } =  'uint16'; MachineFormat{   4 } = 'ieee-le'; ParameterBytes(   4 ) = 2;
Parameter{   5 } = 'ScetOstWhole'                 ; Offset(   5 ) =   12; Items(   5 ) =   1; Precision{   5 } =  'uint32'; OutputPrecision{   5 } =  'uint32'; MachineFormat{   5 } = 'ieee-le'; ParameterBytes(   5 ) = 4;
Parameter{   6 } = 'ScetOstFrac'                  ; Offset(   6 ) =   16; Items(   6 ) =   1; Precision{   6 } =  'uint16'; OutputPrecision{   6 } =  'uint16'; MachineFormat{   6 } = 'ieee-le'; ParameterBytes(   6 ) = 2;
Parameter{   7 } = 'OstLineNumber'                ; Offset(   7 ) =   18; Items(   7 ) =   1; Precision{   7 } =   'uint8'; OutputPrecision{   7 } =   'uint8'; MachineFormat{   7 } = 'ieee-le'; ParameterBytes(   7 ) = 1;
Parameter{   8 } = 'PulseRepetitionInterval'      ; Offset(   8 ) =   19; Items(   8 ) =   1; Precision{   8 } =   'uint8'; OutputPrecision{   8 } =   'uint8'; MachineFormat{   8 } = 'ieee-le'; ParameterBytes(   8 ) = 1;
Parameter{   9 } = 'PhaseCompensationType'        ; Offset(   9 ) =   20; Items(   9 ) =   1; Precision{   9 } =   'uint8'; OutputPrecision{   9 } =   'uint8'; MachineFormat{   9 } = 'ieee-le'; ParameterBytes(   9 ) = 1;
Parameter{  10 } = 'DataTakeLength'               ; Offset(  10 ) =   21; Items(  10 ) =   1; Precision{  10 } =  'uint32'; OutputPrecision{  10 } =  'uint32'; MachineFormat{  10 } = 'ieee-le'; ParameterBytes(  10 ) = 4;
Parameter{  11 } = 'OperativeMode'                ; Offset(  11 ) =   25; Items(  11 ) =   1; Precision{  11 } =   'uint8'; OutputPrecision{  11 } =   'uint8'; MachineFormat{  11 } = 'ieee-le'; ParameterBytes(  11 ) = 1;
Parameter{  12 } = 'ManualGainControl'            ; Offset(  12 ) =   26; Items(  12 ) =   1; Precision{  12 } =   'uint8'; OutputPrecision{  12 } =   'uint8'; MachineFormat{  12 } = 'ieee-le'; ParameterBytes(  12 ) = 1;
Parameter{  13 } = 'CompressionSelection'         ; Offset(  13 ) =   27; Items(  13 ) =   1; Precision{  13 } =   'uint8'; OutputPrecision{  13 } =   'uint8'; MachineFormat{  13 } = 'ieee-le'; ParameterBytes(  13 ) = 1;
Parameter{  14 } = 'ClosedLoopTracking'           ; Offset(  14 ) =   28; Items(  14 ) =   1; Precision{  14 } =   'uint8'; OutputPrecision{  14 } =   'uint8'; MachineFormat{  14 } = 'ieee-le'; ParameterBytes(  14 ) = 1;
Parameter{  15 } = 'TrackingDataStorage'          ; Offset(  15 ) =   29; Items(  15 ) =   1; Precision{  15 } =   'uint8'; OutputPrecision{  15 } =   'uint8'; MachineFormat{  15 } = 'ieee-le'; ParameterBytes(  15 ) = 1;
Parameter{  16 } = 'TrackingPreSumming'           ; Offset(  16 ) =   30; Items(  16 ) =   1; Precision{  16 } =   'uint8'; OutputPrecision{  16 } =   'uint8'; MachineFormat{  16 } = 'ieee-le'; ParameterBytes(  16 ) = 1;
Parameter{  17 } = 'TrackingLogicSelection'       ; Offset(  17 ) =   31; Items(  17 ) =   1; Precision{  17 } =   'uint8'; OutputPrecision{  17 } =   'uint8'; MachineFormat{  17 } = 'ieee-le'; ParameterBytes(  17 ) = 1;
Parameter{  18 } = 'ThresholdLogicSelection'      ; Offset(  18 ) =   32; Items(  18 ) =   1; Precision{  18 } =   'uint8'; OutputPrecision{  18 } =   'uint8'; MachineFormat{  18 } = 'ieee-le'; ParameterBytes(  18 ) = 1;
Parameter{  19 } = 'SampleNumber'                 ; Offset(  19 ) =   33; Items(  19 ) =   1; Precision{  19 } =   'uint8'; OutputPrecision{  19 } =   'uint8'; MachineFormat{  19 } = 'ieee-le'; ParameterBytes(  19 ) = 1;
Parameter{  20 } = 'AlphaBeta'                    ; Offset(  20 ) =   34; Items(  20 ) =   1; Precision{  20 } =   'uint8'; OutputPrecision{  20 } =   'uint8'; MachineFormat{  20 } = 'ieee-le'; ParameterBytes(  20 ) = 1;
Parameter{  21 } = 'ReferenceBit'                 ; Offset(  21 ) =   35; Items(  21 ) =   1; Precision{  21 } =   'uint8'; OutputPrecision{  21 } =   'uint8'; MachineFormat{  21 } = 'ieee-le'; ParameterBytes(  21 ) = 1;
Parameter{  22 } = 'Threshold'                    ; Offset(  22 ) =   36; Items(  22 ) =   1; Precision{  22 } =   'uint8'; OutputPrecision{  22 } =   'uint8'; MachineFormat{  22 } = 'ieee-le'; ParameterBytes(  22 ) = 1;
Parameter{  23 } = 'ThresholdIncrement'           ; Offset(  23 ) =   37; Items(  23 ) =   1; Precision{  23 } =   'uint8'; OutputPrecision{  23 } =   'uint8'; MachineFormat{  23 } = 'ieee-le'; ParameterBytes(  23 ) = 1;
Parameter{  24 } = 'InitialEchoValue'             ; Offset(  24 ) =   38; Items(  24 ) =   1; Precision{  24 } =   'uint8'; OutputPrecision{  24 } =   'uint8'; MachineFormat{  24 } = 'ieee-le'; ParameterBytes(  24 ) = 1;
Parameter{  25 } = 'ExpectedEchoShift'            ; Offset(  25 ) =   39; Items(  25 ) =   1; Precision{  25 } =   'uint8'; OutputPrecision{  25 } =   'uint8'; MachineFormat{  25 } = 'ieee-le'; ParameterBytes(  25 ) = 1;
Parameter{  26 } = 'WindowLeftShift'              ; Offset(  26 ) =   40; Items(  26 ) =   1; Precision{  26 } =   'uint8'; OutputPrecision{  26 } =   'uint8'; MachineFormat{  26 } = 'ieee-le'; ParameterBytes(  26 ) = 1;
Parameter{  27 } = 'WindowRightShift'             ; Offset(  27 ) =   41; Items(  27 ) =   1; Precision{  27 } =   'uint8'; OutputPrecision{  27 } =   'uint8'; MachineFormat{  27 } = 'ieee-le'; ParameterBytes(  27 ) = 1;
Parameter{  28 } = 'DataBlockId'                  ; Offset(  28 ) =   42; Items(  28 ) =   1; Precision{  28 } =  'uint32'; OutputPrecision{  28 } =  'uint32'; MachineFormat{  28 } = 'ieee-le'; ParameterBytes(  28 ) = 4;
Parameter{  29 } = 'ScienceDataSourceCounter'     ; Offset(  29 ) =   46; Items(  29 ) =   1; Precision{  29 } =  'uint16'; OutputPrecision{  29 } =  'uint16'; MachineFormat{  29 } = 'ieee-le'; ParameterBytes(  29 ) = 2;
Parameter{  30 } = 'ScientificDataType'           ; Offset(  30 ) =   48; Items(  30 ) =   1; Precision{  30 } =   'uint8'; OutputPrecision{  30 } =   'uint8'; MachineFormat{  30 } = 'ieee-le'; ParameterBytes(  30 ) = 1;
Parameter{  31 } = 'SegmentationFlag'             ; Offset(  31 ) =   49; Items(  31 ) =   1; Precision{  31 } =   'uint8'; OutputPrecision{  31 } =   'uint8'; MachineFormat{  31 } = 'ieee-le'; ParameterBytes(  31 ) = 1;
Parameter{  32 } = 'DmaError'                     ; Offset(  32 ) =   50; Items(  32 ) =   1; Precision{  32 } =   'uint8'; OutputPrecision{  32 } =   'uint8'; MachineFormat{  32 } = 'ieee-le'; ParameterBytes(  32 ) = 1;
Parameter{  33 } = 'TcOverrun'                    ; Offset(  33 ) =   51; Items(  33 ) =   1; Precision{  33 } =   'uint8'; OutputPrecision{  33 } =   'uint8'; MachineFormat{  33 } = 'ieee-le'; ParameterBytes(  33 ) = 1;
Parameter{  34 } = 'FifoFull'                     ; Offset(  34 ) =   52; Items(  34 ) =   1; Precision{  34 } =   'uint8'; OutputPrecision{  34 } =   'uint8'; MachineFormat{  34 } = 'ieee-le'; ParameterBytes(  34 ) = 1;
Parameter{  35 } = 'Test'                         ; Offset(  35 ) =   53; Items(  35 ) =   1; Precision{  35 } =   'uint8'; OutputPrecision{  35 } =   'uint8'; MachineFormat{  35 } = 'ieee-le'; ParameterBytes(  35 ) = 1;
Parameter{  36 } = 'DataBlockFirstPri'            ; Offset(  36 ) =   54; Items(  36 ) =   1; Precision{  36 } =  'uint32'; OutputPrecision{  36 } =  'uint32'; MachineFormat{  36 } = 'ieee-le'; ParameterBytes(  36 ) = 4;
Parameter{  37 } = 'TimeDataBlockWhole'           ; Offset(  37 ) =   58; Items(  37 ) =   1; Precision{  37 } =  'uint32'; OutputPrecision{  37 } =  'uint32'; MachineFormat{  37 } = 'ieee-le'; ParameterBytes(  37 ) = 4;
Parameter{  38 } = 'TimeDataBlockFrac'            ; Offset(  38 ) =   62; Items(  38 ) =   1; Precision{  38 } =  'uint16'; OutputPrecision{  38 } =  'uint16'; MachineFormat{  38 } = 'ieee-le'; ParameterBytes(  38 ) = 2;
Parameter{  39 } = 'SdiBitField'                  ; Offset(  39 ) =   64; Items(  39 ) =   1; Precision{  39 } =  'uint16'; OutputPrecision{  39 } =  'uint16'; MachineFormat{  39 } = 'ieee-le'; ParameterBytes(  39 ) = 2;
Parameter{  40 } = 'TimeN'                        ; Offset(  40 ) =   66; Items(  40 ) =   1; Precision{  40 } = 'float32'; OutputPrecision{  40 } = 'float32'; MachineFormat{  40 } = 'ieee-le'; ParameterBytes(  40 ) = 4;
Parameter{  41 } = 'RadiusN'                      ; Offset(  41 ) =   70; Items(  41 ) =   1; Precision{  41 } = 'float32'; OutputPrecision{  41 } = 'float32'; MachineFormat{  41 } = 'ieee-le'; ParameterBytes(  41 ) = 4;
Parameter{  42 } = 'TangentialVelocityN'          ; Offset(  42 ) =   74; Items(  42 ) =   1; Precision{  42 } = 'float32'; OutputPrecision{  42 } = 'float32'; MachineFormat{  42 } = 'ieee-le'; ParameterBytes(  42 ) = 4;
Parameter{  43 } = 'RadialVelocityN'              ; Offset(  43 ) =   78; Items(  43 ) =   1; Precision{  43 } = 'float32'; OutputPrecision{  43 } = 'float32'; MachineFormat{  43 } = 'ieee-le'; ParameterBytes(  43 ) = 4;
Parameter{  44 } = 'Tlp'                          ; Offset(  44 ) =   82; Items(  44 ) =   1; Precision{  44 } = 'float32'; OutputPrecision{  44 } = 'float32'; MachineFormat{  44 } = 'ieee-le'; ParameterBytes(  44 ) = 4;
Parameter{  45 } = 'TimeWpf'                      ; Offset(  45 ) =   86; Items(  45 ) =   1; Precision{  45 } = 'float32'; OutputPrecision{  45 } = 'float32'; MachineFormat{  45 } = 'ieee-le'; ParameterBytes(  45 ) = 4;
Parameter{  46 } = 'DeltaTime'                    ; Offset(  46 ) =   90; Items(  46 ) =   1; Precision{  46 } = 'float32'; OutputPrecision{  46 } = 'float32'; MachineFormat{  46 } = 'ieee-le'; ParameterBytes(  46 ) = 4;
Parameter{  47 } = 'TlpInterpolate'               ; Offset(  47 ) =   94; Items(  47 ) =   1; Precision{  47 } = 'float32'; OutputPrecision{  47 } = 'float32'; MachineFormat{  47 } = 'ieee-le'; ParameterBytes(  47 ) = 4;
Parameter{  48 } = 'RadiusInterpolate'            ; Offset(  48 ) =   98; Items(  48 ) =   1; Precision{  48 } = 'float32'; OutputPrecision{  48 } = 'float32'; MachineFormat{  48 } = 'ieee-le'; ParameterBytes(  48 ) = 4;
Parameter{  49 } = 'TangentialVelocityInterpolate'; Offset(  49 ) =  102; Items(  49 ) =   1; Precision{  49 } = 'float32'; OutputPrecision{  49 } = 'float32'; MachineFormat{  49 } = 'ieee-le'; ParameterBytes(  49 ) = 4;
Parameter{  50 } = 'RadialVelocityInterpolate'    ; Offset(  50 ) =  106; Items(  50 ) =   1; Precision{  50 } = 'float32'; OutputPrecision{  50 } = 'float32'; MachineFormat{  50 } = 'ieee-le'; ParameterBytes(  50 ) = 4;
Parameter{  51 } = 'EndTlp'                       ; Offset(  51 ) =  110; Items(  51 ) =   1; Precision{  51 } = 'float32'; OutputPrecision{  51 } = 'float32'; MachineFormat{  51 } = 'ieee-le'; ParameterBytes(  51 ) = 4;
Parameter{  52 } = 'SCoeffs'                      ; Offset(  52 ) =  114; Items(  52 ) =   8; Precision{  52 } = 'float32'; OutputPrecision{  52 } = 'float32'; MachineFormat{  52 } = 'ieee-le'; ParameterBytes(  52 ) = 4;
Parameter{  53 } = 'CCoeffs'                      ; Offset(  53 ) =  146; Items(  53 ) =   7; Precision{  53 } = 'float32'; OutputPrecision{  53 } = 'float32'; MachineFormat{  53 } = 'ieee-le'; ParameterBytes(  53 ) = 4;
Parameter{  54 } = 'Slope'                        ; Offset(  54 ) =  174; Items(  54 ) =   1; Precision{  54 } = 'float32'; OutputPrecision{  54 } = 'float32'; MachineFormat{  54 } = 'ieee-le'; ParameterBytes(  54 ) = 4;
Parameter{  55 } = 'Topography'                   ; Offset(  55 ) =  178; Items(  55 ) =   1; Precision{  55 } = 'float32'; OutputPrecision{  55 } = 'float32'; MachineFormat{  55 } = 'ieee-le'; ParameterBytes(  55 ) = 4;
Parameter{  56 } = 'PhaseCompensationStep'        ; Offset(  56 ) =  182; Items(  56 ) =   1; Precision{  56 } = 'float32'; OutputPrecision{  56 } = 'float32'; MachineFormat{  56 } = 'ieee-le'; ParameterBytes(  56 ) = 4;
Parameter{  57 } = 'ReceiveWindowOpeningTime'     ; Offset(  57 ) =  186; Items(  57 ) =   1; Precision{  57 } = 'float32'; OutputPrecision{  57 } = 'float32'; MachineFormat{  57 } = 'ieee-le'; ParameterBytes(  57 ) = 4;
Parameter{  58 } = 'AntennaRelativeGain'          ; Offset(  58 ) =  190; Items(  58 ) =   1; Precision{  58 } = 'float32'; OutputPrecision{  58 } = 'float32'; MachineFormat{  58 } = 'ieee-le'; ParameterBytes(  58 ) = 4;
Parameter{  59 } = 'EchoSamplesReal'              ; Offset(  59 ) =  194; Items(  59 ) = 667; Precision{  59 } = 'float32'; OutputPrecision{  59 } = 'float32'; MachineFormat{  59 } = 'ieee-le'; ParameterBytes(  59 ) = 4;
Parameter{  60 } = 'EchoSamplesImaginary'         ; Offset(  60 ) = 2862; Items(  60 ) = 667; Precision{  60 } = 'float32'; OutputPrecision{  60 } = 'float32'; MachineFormat{  60 } = 'ieee-le'; ParameterBytes(  60 ) = 4;
Parameter{  61 } = 'NPre'                         ; Offset(  61 ) = 5530; Items(  61 ) =   1; Precision{  61 } =  'uint16'; OutputPrecision{  61 } =  'uint16'; MachineFormat{  61 } = 'ieee-le'; ParameterBytes(  61 ) = 2;
Parameter{  62 } = 'BlockNr'                      ; Offset(  62 ) = 5532; Items(  62 ) =   1; Precision{  62 } =  'uint16'; OutputPrecision{  62 } =  'uint16'; MachineFormat{  62 } = 'ieee-le'; ParameterBytes(  62 ) = 2;
Parameter{  63 } = 'BlockRows'                    ; Offset(  63 ) = 5534; Items(  63 ) =   1; Precision{  63 } =  'uint16'; OutputPrecision{  63 } =  'uint16'; MachineFormat{  63 } = 'ieee-le'; ParameterBytes(  63 ) = 2;
Parameter{  64 } = 'DopplerBw'                    ; Offset(  64 ) = 5536; Items(  64 ) =   1; Precision{  64 } = 'float32'; OutputPrecision{  64 } = 'float32'; MachineFormat{  64 } = 'ieee-le'; ParameterBytes(  64 ) = 4;
Parameter{  65 } = 'DopplerCentroid'              ; Offset(  65 ) = 5540; Items(  65 ) =   1; Precision{  65 } = 'float32'; OutputPrecision{  65 } = 'float32'; MachineFormat{  65 } = 'ieee-le'; ParameterBytes(  65 ) = 4;
Parameter{  66 } = 'AzTimeSpacing'                ; Offset(  66 ) = 5544; Items(  66 ) =   1; Precision{  66 } = 'float32'; OutputPrecision{  66 } = 'float32'; MachineFormat{  66 } = 'ieee-le'; ParameterBytes(  66 ) = 4;
Parameter{  67 } = 'AzRes'                        ; Offset(  67 ) = 5548; Items(  67 ) =   1; Precision{  67 } = 'float32'; OutputPrecision{  67 } = 'float32'; MachineFormat{  67 } = 'ieee-le'; ParameterBytes(  67 ) = 4;
Parameter{  68 } = 'TInt'                         ; Offset(  68 ) = 5552; Items(  68 ) =   1; Precision{  68 } = 'float32'; OutputPrecision{  68 } = 'float32'; MachineFormat{  68 } = 'ieee-le'; ParameterBytes(  68 ) = 4;
Parameter{  69 } = 'AvgTanVelocity'               ; Offset(  69 ) = 5556; Items(  69 ) =   1; Precision{  69 } = 'float32'; OutputPrecision{  69 } = 'float32'; MachineFormat{  69 } = 'ieee-le'; ParameterBytes(  69 ) = 4;
Parameter{  70 } = 'RangeShift'                   ; Offset(  70 ) = 5560; Items(  70 ) =   1; Precision{  70 } =   'int16'; OutputPrecision{  70 } =   'int16'; MachineFormat{  70 } = 'ieee-le'; ParameterBytes(  70 ) = 2;
Parameter{  71 } = 'EphemerisTime'                ; Offset(  71 ) = 5562; Items(  71 ) =   1; Precision{  71 } = 'float64'; OutputPrecision{  71 } = 'float64'; MachineFormat{  71 } = 'ieee-le'; ParameterBytes(  71 ) = 8;
Parameter{  72 } = 'GeometryEpoch'                ; Offset(  72 ) = 5570; Items(  72 ) =  23; Precision{  72 } =    'char'; OutputPrecision{  72 } =    'char'; MachineFormat{  72 } = 'ieee-le'; ParameterBytes(  72 ) = 1;
Parameter{  73 } = 'SolarLongitude'               ; Offset(  73 ) = 5593; Items(  73 ) =   1; Precision{  73 } = 'float64'; OutputPrecision{  73 } = 'float64'; MachineFormat{  73 } = 'ieee-le'; ParameterBytes(  73 ) = 8;
Parameter{  74 } = 'OrbitNumber'                  ; Offset(  74 ) = 5601; Items(  74 ) =   1; Precision{  74 } =   'int32'; OutputPrecision{  74 } =   'int32'; MachineFormat{  74 } = 'ieee-le'; ParameterBytes(  74 ) = 4;
Parameter{  75 } = 'MarsScPositionVector'         ; Offset(  75 ) = 5605; Items(  75 ) =   3; Precision{  75 } = 'float64'; OutputPrecision{  75 } = 'float64'; MachineFormat{  75 } = 'ieee-le'; ParameterBytes(  75 ) = 8;
Parameter{  76 } = 'SpacecraftAltitude'           ; Offset(  76 ) = 5629; Items(  76 ) =   1; Precision{  76 } = 'float64'; OutputPrecision{  76 } = 'float64'; MachineFormat{  76 } = 'ieee-le'; ParameterBytes(  76 ) = 8;
Parameter{  77 } = 'SubScEastLongitude'           ; Offset(  77 ) = 5637; Items(  77 ) =   1; Precision{  77 } = 'float64'; OutputPrecision{  77 } = 'float64'; MachineFormat{  77 } = 'ieee-le'; ParameterBytes(  77 ) = 8;
Parameter{  78 } = 'SubScPlanetocentricLatitude'  ; Offset(  78 ) = 5645; Items(  78 ) =   1; Precision{  78 } = 'float64'; OutputPrecision{  78 } = 'float64'; MachineFormat{  78 } = 'ieee-le'; ParameterBytes(  78 ) = 8;
Parameter{  79 } = 'SubScPlanetographicLatitude'  ; Offset(  79 ) = 5653; Items(  79 ) =   1; Precision{  79 } = 'float64'; OutputPrecision{  79 } = 'float64'; MachineFormat{  79 } = 'ieee-le'; ParameterBytes(  79 ) = 8;
Parameter{  80 } = 'MarsScVelocityVector'         ; Offset(  80 ) = 5661; Items(  80 ) =   3; Precision{  80 } = 'float64'; OutputPrecision{  80 } = 'float64'; MachineFormat{  80 } = 'ieee-le'; ParameterBytes(  80 ) = 8;
Parameter{  81 } = 'MarsScRadialVelocity'         ; Offset(  81 ) = 5685; Items(  81 ) =   1; Precision{  81 } = 'float64'; OutputPrecision{  81 } = 'float64'; MachineFormat{  81 } = 'ieee-le'; ParameterBytes(  81 ) = 8;
Parameter{  82 } = 'MarsScTangentialVelocity'     ; Offset(  82 ) = 5693; Items(  82 ) =   1; Precision{  82 } = 'float64'; OutputPrecision{  82 } = 'float64'; MachineFormat{  82 } = 'ieee-le'; ParameterBytes(  82 ) = 8;
Parameter{  83 } = 'LocalTrueSolarTime'           ; Offset(  83 ) = 5701; Items(  83 ) =   1; Precision{  83 } = 'float64'; OutputPrecision{  83 } = 'float64'; MachineFormat{  83 } = 'ieee-le'; ParameterBytes(  83 ) = 8;
Parameter{  84 } = 'SolarZenithAngle'             ; Offset(  84 ) = 5709; Items(  84 ) =   1; Precision{  84 } = 'float64'; OutputPrecision{  84 } = 'float64'; MachineFormat{  84 } = 'ieee-le'; ParameterBytes(  84 ) = 8;
Parameter{  85 } = 'ScPitchAngle'                 ; Offset(  85 ) = 5717; Items(  85 ) =   1; Precision{  85 } = 'float64'; OutputPrecision{  85 } = 'float64'; MachineFormat{  85 } = 'ieee-le'; ParameterBytes(  85 ) = 8;
Parameter{  86 } = 'ScYawAngle'                   ; Offset(  86 ) = 5725; Items(  86 ) =   1; Precision{  86 } = 'float64'; OutputPrecision{  86 } = 'float64'; MachineFormat{  86 } = 'ieee-le'; ParameterBytes(  86 ) = 8;
Parameter{  87 } = 'ScRollAngle'                  ; Offset(  87 ) = 5733; Items(  87 ) =   1; Precision{  87 } = 'float64'; OutputPrecision{  87 } = 'float64'; MachineFormat{  87 } = 'ieee-le'; ParameterBytes(  87 ) = 8;
Parameter{  88 } = 'MroSamxInnerGimbalAngle'      ; Offset(  88 ) = 5741; Items(  88 ) =   1; Precision{  88 } = 'float64'; OutputPrecision{  88 } = 'float64'; MachineFormat{  88 } = 'ieee-le'; ParameterBytes(  88 ) = 8;
Parameter{  89 } = 'MroSamxOuterGimbalAngle'      ; Offset(  89 ) = 5749; Items(  89 ) =   1; Precision{  89 } = 'float64'; OutputPrecision{  89 } = 'float64'; MachineFormat{  89 } = 'ieee-le'; ParameterBytes(  89 ) = 8;
Parameter{  90 } = 'MroSapxInnerGimbalAngle'      ; Offset(  90 ) = 5757; Items(  90 ) =   1; Precision{  90 } = 'float64'; OutputPrecision{  90 } = 'float64'; MachineFormat{  90 } = 'ieee-le'; ParameterBytes(  90 ) = 8;
Parameter{  91 } = 'MroSapxOuterGimbalAngle'      ; Offset(  91 ) = 5765; Items(  91 ) =   1; Precision{  91 } = 'float64'; OutputPrecision{  91 } = 'float64'; MachineFormat{  91 } = 'ieee-le'; ParameterBytes(  91 ) = 8;
Parameter{  92 } = 'MroHgaInnerGimbalAngle'       ; Offset(  92 ) = 5773; Items(  92 ) =   1; Precision{  92 } = 'float64'; OutputPrecision{  92 } = 'float64'; MachineFormat{  92 } = 'ieee-le'; ParameterBytes(  92 ) = 8;
Parameter{  93 } = 'MroHgaOuterGimbalAngle'       ; Offset(  93 ) = 5781; Items(  93 ) =   1; Precision{  93 } = 'float64'; OutputPrecision{  93 } = 'float64'; MachineFormat{  93 } = 'ieee-le'; ParameterBytes(  93 ) = 8;
Parameter{  94 } = 'DesTemp'                      ; Offset(  94 ) = 5789; Items(  94 ) =   1; Precision{  94 } = 'float32'; OutputPrecision{  94 } = 'float32'; MachineFormat{  94 } = 'ieee-le'; ParameterBytes(  94 ) = 4;
Parameter{  95 } = 'Des5v'                        ; Offset(  95 ) = 5793; Items(  95 ) =   1; Precision{  95 } = 'float32'; OutputPrecision{  95 } = 'float32'; MachineFormat{  95 } = 'ieee-le'; ParameterBytes(  95 ) = 4;
Parameter{  96 } = 'Des12v'                       ; Offset(  96 ) = 5797; Items(  96 ) =   1; Precision{  96 } = 'float32'; OutputPrecision{  96 } = 'float32'; MachineFormat{  96 } = 'ieee-le'; ParameterBytes(  96 ) = 4;
Parameter{  97 } = 'Des2v5'                       ; Offset(  97 ) = 5801; Items(  97 ) =   1; Precision{  97 } = 'float32'; OutputPrecision{  97 } = 'float32'; MachineFormat{  97 } = 'ieee-le'; ParameterBytes(  97 ) = 4;
Parameter{  98 } = 'RxTemp'                       ; Offset(  98 ) = 5805; Items(  98 ) =   1; Precision{  98 } = 'float32'; OutputPrecision{  98 } = 'float32'; MachineFormat{  98 } = 'ieee-le'; ParameterBytes(  98 ) = 4;
Parameter{  99 } = 'TxTemp'                       ; Offset(  99 ) = 5809; Items(  99 ) =   1; Precision{  99 } = 'float32'; OutputPrecision{  99 } = 'float32'; MachineFormat{  99 } = 'ieee-le'; ParameterBytes(  99 ) = 4;
Parameter{ 100 } = 'TxLev'                        ; Offset( 100 ) = 5813; Items( 100 ) =   1; Precision{ 100 } = 'float32'; OutputPrecision{ 100 } = 'float32'; MachineFormat{ 100 } = 'ieee-le'; ParameterBytes( 100 ) = 4;
Parameter{ 101 } = 'TxCurr'                       ; Offset( 101 ) = 5817; Items( 101 ) =   1; Precision{ 101 } = 'float32'; OutputPrecision{ 101 } = 'float32'; MachineFormat{ 101 } = 'ieee-le'; ParameterBytes( 101 ) = 4;
Parameter{ 102 } = 'QualityCode'                  ; Offset( 102 ) = 5821; Items( 102 ) =   1; Precision{ 102 } =   'uint8'; OutputPrecision{ 102 } =   'uint8'; MachineFormat{ 102 } = 'ieee-le'; ParameterBytes( 102 ) = 1;



% If there are no input arguments, the function returns the list of
% parameters contained in SHARAD RDR data product.
if nargin == 0
    SharadRdr = Parameter;
    return
end

% The data product file is opened.
fid = fopen( RdrFile, 'r' );

if fid < 0
    error( 'ReadSharadRdr:MissingInputFile', ...
           'The required data product file %s could not be opened.', ...
            RdrFile )
end

% The length in bytes of the data product file is retrieved, and divided by
% the length of a file record in bytes to obtain the number of records in
% the file.
fseek( fid, 0, 'eof' );
FileBytes = ftell( fid );
FileRecords = FileBytes / RecordBytes;

if round( FileRecords ) ~= FileRecords
    error( 'ReadSharadRdr:FractionalNumberOfRecords', ...
           'The data product file contains %g records, a non integer number of records.', ...
            FileRecords )
end

% If the only input argument is the name of a data product file, the
% function returns the number of records contained in that file.
if nargin == 1
    SharadRdr = FileRecords;
    return
end

% The name of the parameter to be extracted from the data product file is
% compared to the list of parameters in the data product, to determine its
% position in the list.
ParameterIndex = strcmp( Parameter, ParameterName );
ParameterIndex = find( ParameterIndex == 1 );

if isempty( ParameterIndex )
    error( 'ReadSharadRdr:ParameterNotFound', ...
           'The parameter %s is not listed among those contained in a SHARAD RDR data product.', ...
            ParameterName )
end

% If input values are not provided, default values are assigned to
% StartRecord, StopRecord and SkipRecords
if nargin < 3
    StartRecord = 1;
end

if nargin < 4
    StopRecord  = FileRecords;
end

if nargin < 5
    SkipRecords = 1;
end

% StartRecord, StopRecord and SkipRecords are checked for consistency.
if StartRecord < 1 | StartRecord > FileRecords
    error( 'ReadSharadRdr:InvalidValueForStartRecord', ...
           'The first record to be extracted is record %g, which is outside the valid interval [ 1, %g ].', ...
            StartRecord, FileRecords )
end

if StopRecord  < 1 | StopRecord  > FileRecords
    error( 'ReadSharadRdr:InvalidValueForStopRecord', ...
           'The last record to be extracted is record %g, which is outside the valid interval [ 1, %g ].', ...
            StopRecord, FileRecords )
end

if SkipRecords < 1 | SkipRecords > FileRecords
    error( 'ReadSharadRdr:InvalidValueForSkipRecords', ...
           'The number of records to be skipped is %g, which is outside the valid interval [ 1, %g ].', ...
            SkipRecords, FileRecords )
end

if StopRecord  < StartRecord
    error( 'ReadSharadRdr:StopRecordBeforeStartRecord', ...
           'The first record to be extracted is record %g and is greater than last record to be extracted, which is record %g.', ...
            StartRecord, StopRecord )
end

% the number of records to be extracted fromn the data product file is
% determined.
Records = length( [ StartRecord : SkipRecords : StopRecord ] );

if Records == 0
    error( 'ReadSharadRdr:NoRecordsExtracted', ...
           'The combination of StartRecord = %g, StopRecord = %g, SkipRecords = %g does not allow the extraction of records from this data product file.', ...
            StartRecord, StopRecord, SkipRecords )
end

% The requested parameter is extracted from the data product file.

offset = ( StartRecord - 1 ) * RecordBytes + Offset( ParameterIndex );
fseek( fid, offset, 'bof' );

size          = [ Items( ParameterIndex ), Records ];
precision     = [ int2str( Items( ParameterIndex ) ), '*', Precision{ ParameterIndex }, '=>', OutputPrecision{ ParameterIndex } ];
skip          = ( SkipRecords - 1 ) * RecordBytes + RecordBytes - Items( ParameterIndex ) * ParameterBytes( ParameterIndex );
machineformat = MachineFormat{ ParameterIndex };

SharadRdr = fread( fid, size, precision, skip, machineformat );

fclose( fid );