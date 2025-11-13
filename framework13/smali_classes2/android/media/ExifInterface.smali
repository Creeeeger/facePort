.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;,
        Landroid/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ASCII:Ljava/nio/charset/Charset;

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final greylist-max-o BITS_PER_SAMPLE_RGB:[I

.field private static final greylist-max-o BYTE_ALIGN_II:S = 0x4949s

.field private static final greylist-max-o BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final greylist-max-o DATA_DEFLATE_ZIP:I = 0x8

.field private static final greylist-max-o DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final greylist-max-o DATA_JPEG:I = 0x6

.field private static final greylist-max-o DATA_JPEG_COMPRESSED:I = 0x7

.field private static final greylist-max-o DATA_LOSSY_JPEG:I = 0x884c

.field private static final greylist-max-o DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final greylist-max-o DATA_UNCOMPRESSED:I = 0x1

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o EXIF_ASCII_PREFIX:[B

.field private static final greylist-max-o EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final blacklist HEIF_BRAND_AVIF:[B

.field private static final blacklist HEIF_BRAND_AVIS:[B

.field private static final greylist-max-o HEIF_BRAND_HEIC:[B

.field private static final greylist-max-o HEIF_BRAND_MIF1:[B

.field private static final greylist-max-o HEIF_TYPE_FTYP:[B

.field private static final greylist-max-o IDENTIFIER_EXIF_APP1:[B

.field private static final blacklist IDENTIFIER_XMP_APP1:[B

.field private static final greylist-max-o IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_FORMAT_BYTE:I = 0x1

.field private static final greylist-max-o IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final greylist-max-o IFD_FORMAT_DOUBLE:I = 0xc

.field private static final greylist-max-o IFD_FORMAT_IFD:I = 0xd

.field private static final greylist-max-o IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o IFD_FORMAT_SBYTE:I = 0x6

.field private static final greylist-max-o IFD_FORMAT_SINGLE:I = 0xb

.field private static final greylist-max-o IFD_FORMAT_SLONG:I = 0x9

.field private static final greylist-max-o IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final greylist-max-o IFD_FORMAT_SSHORT:I = 0x8

.field private static final greylist-max-o IFD_FORMAT_STRING:I = 0x2

.field private static final greylist-max-o IFD_FORMAT_ULONG:I = 0x4

.field private static final greylist-max-o IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final greylist-max-o IFD_FORMAT_URATIONAL:I = 0x5

.field private static final greylist-max-o IFD_FORMAT_USHORT:I = 0x3

.field private static final greylist-max-o IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_OFFSET:I = 0x8

.field private static final greylist-max-o IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o IFD_TYPE_EXIF:I = 0x1

.field private static final greylist-max-o IFD_TYPE_GPS:I = 0x2

.field private static final greylist-max-o IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final greylist-max-o IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final greylist-max-o IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final greylist-max-o IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final greylist-max-o IFD_TYPE_PEF:I = 0x9

.field private static final greylist-max-o IFD_TYPE_PREVIEW:I = 0x5

.field private static final greylist-max-o IFD_TYPE_PRIMARY:I = 0x0

.field private static final greylist-max-o IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_ARW:I = 0x1

.field private static final greylist-max-o IMAGE_TYPE_CR2:I = 0x2

.field private static final greylist-max-o IMAGE_TYPE_DNG:I = 0x3

.field private static final greylist-max-o IMAGE_TYPE_HEIF:I = 0xc

.field private static final greylist-max-o IMAGE_TYPE_JPEG:I = 0x4

.field private static final greylist-max-o IMAGE_TYPE_NEF:I = 0x5

.field private static final greylist-max-o IMAGE_TYPE_NRW:I = 0x6

.field private static final greylist-max-o IMAGE_TYPE_ORF:I = 0x7

.field private static final greylist-max-o IMAGE_TYPE_PEF:I = 0x8

.field private static final blacklist IMAGE_TYPE_PNG:I = 0xd

.field private static final greylist-max-o IMAGE_TYPE_RAF:I = 0x9

.field private static final greylist-max-o IMAGE_TYPE_RW2:I = 0xa

.field private static final greylist-max-o IMAGE_TYPE_SRW:I = 0xb

.field private static final greylist-max-o IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist IMAGE_TYPE_WEBP:I = 0xe

.field private static final greylist-max-o JPEG_SIGNATURE:[B

.field private static final greylist-max-o MARKER:B = -0x1t

.field private static final greylist-max-o MARKER_APP1:B = -0x1ft

.field private static final greylist-max-o MARKER_COM:B = -0x2t

.field private static final greylist-max-o MARKER_EOI:B = -0x27t

.field private static final greylist-max-o MARKER_SOF0:B = -0x40t

.field private static final greylist-max-o MARKER_SOF1:B = -0x3ft

.field private static final greylist-max-o MARKER_SOF10:B = -0x36t

.field private static final greylist-max-o MARKER_SOF11:B = -0x35t

.field private static final greylist-max-o MARKER_SOF13:B = -0x33t

.field private static final greylist-max-o MARKER_SOF14:B = -0x32t

.field private static final greylist-max-o MARKER_SOF15:B = -0x31t

.field private static final greylist-max-o MARKER_SOF2:B = -0x3et

.field private static final greylist-max-o MARKER_SOF3:B = -0x3dt

.field private static final greylist-max-o MARKER_SOF5:B = -0x3bt

.field private static final greylist-max-o MARKER_SOF6:B = -0x3at

.field private static final greylist-max-o MARKER_SOF7:B = -0x39t

.field private static final greylist-max-o MARKER_SOF9:B = -0x37t

.field private static final greylist-max-o MARKER_SOI:B = -0x28t

.field private static final greylist-max-o MARKER_SOS:B = -0x26t

.field private static final greylist-max-o MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final greylist-max-o ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2:[B

.field private static final greylist-max-o ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final greylist-max-o ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o ORF_SIGNATURE_1:S = 0x4f52s

.field private static final greylist-max-o ORF_SIGNATURE_2:S = 0x5352s

.field public static final whitelist ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final whitelist ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final whitelist ORIENTATION_NORMAL:I = 0x1

.field public static final whitelist ORIENTATION_ROTATE_180:I = 0x3

.field public static final whitelist ORIENTATION_ROTATE_270:I = 0x8

.field public static final whitelist ORIENTATION_ROTATE_90:I = 0x6

.field public static final whitelist ORIENTATION_TRANSPOSE:I = 0x5

.field public static final whitelist ORIENTATION_TRANSVERSE:I = 0x7

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field private static final greylist-max-o ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final greylist-max-o PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final greylist-max-o PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final greylist-max-o PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final greylist-max-o PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final blacklist PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist PNG_CHUNK_TYPE_EXIF:[B

.field private static final blacklist PNG_CHUNK_TYPE_IEND:[B

.field private static final blacklist PNG_CHUNK_TYPE_IHDR:[B

.field private static final blacklist PNG_SIGNATURE:[B

.field private static final greylist-max-o RAF_INFO_SIZE:I = 0xa0

.field private static final greylist-max-o RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final greylist-max-o RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final greylist-max-o RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final greylist-max-o REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final greylist-max-o RW2_SIGNATURE:S = 0x55s

.field private static final greylist-max-o SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final greylist-max-o START_CODE:B = 0x2at

.field public static final whitelist STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final whitelist STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ExifInterface"

.field public static final whitelist TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final whitelist TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final whitelist TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final whitelist TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final whitelist TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final whitelist TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final whitelist TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final whitelist TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final whitelist TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final whitelist TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final whitelist TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final whitelist TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final whitelist TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final whitelist TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final whitelist TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final whitelist TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final whitelist TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final whitelist TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final whitelist TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final greylist-max-o TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final whitelist TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final whitelist TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final whitelist TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final whitelist TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final whitelist TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final whitelist TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final whitelist TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final whitelist TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final whitelist TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final whitelist TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final whitelist TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final whitelist TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final whitelist TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final whitelist TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final whitelist TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final whitelist TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final whitelist TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final whitelist TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final whitelist TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final whitelist TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final whitelist TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final whitelist TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final whitelist TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final whitelist TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final whitelist TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final whitelist TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final whitelist TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final whitelist TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final whitelist TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final whitelist TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final whitelist TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final whitelist TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final greylist-max-o TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final whitelist TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final whitelist TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final whitelist TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final whitelist TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final whitelist TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final whitelist TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final whitelist TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final whitelist TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final whitelist TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final whitelist TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final whitelist TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final whitelist TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final whitelist TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final whitelist TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final whitelist TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final greylist-max-o TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final whitelist TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final whitelist TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final whitelist TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final whitelist TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final greylist-max-o TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final whitelist TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final whitelist TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final whitelist TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final whitelist TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final whitelist TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final whitelist TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final whitelist TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final whitelist TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final whitelist TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final whitelist TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final whitelist TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final whitelist TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final whitelist TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final whitelist TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final whitelist TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final greylist-max-o TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final greylist-max-o TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final whitelist TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final whitelist TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final whitelist TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final whitelist TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final whitelist TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final whitelist TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final whitelist TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final whitelist TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final greylist-max-o TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final whitelist TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final whitelist TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final whitelist TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final whitelist TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final whitelist TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final whitelist TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final whitelist TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final whitelist TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final whitelist TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final whitelist TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final whitelist TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final whitelist TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final whitelist TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final whitelist TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final whitelist TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final whitelist TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final whitelist TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final whitelist TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final whitelist TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final whitelist TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final whitelist TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final whitelist TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final whitelist TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final whitelist TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final whitelist TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final whitelist TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final whitelist TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final whitelist TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final whitelist TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final whitelist TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final whitelist TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final greylist-max-o TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final greylist-max-o TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final whitelist TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final greylist-max-o TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final greylist-max-o TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final whitelist TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final whitelist TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final whitelist TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final whitelist TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final whitelist TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final whitelist TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final whitelist TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final whitelist TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final whitelist TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final whitelist TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final whitelist TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final blacklist WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_ANIM:[B

.field private static final blacklist WEBP_CHUNK_TYPE_ANMF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_CHUNK_TYPE_EXIF:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8L:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X:[B

.field private static final blacklist WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final blacklist WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final blacklist WEBP_SIGNATURE_1:[B

.field private static final blacklist WEBP_SIGNATURE_2:[B

.field private static final blacklist WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final blacklist WEBP_VP8_SIGNATURE:[B

.field public static final whitelist WHITEBALANCE_AUTO:I = 0x0

.field public static final whitelist WHITEBALANCE_MANUAL:I = 0x1

.field private static final greylist-max-o sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final greylist-max-o sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static blacklist sFormatter:Ljava/text/SimpleDateFormat;

.field private static blacklist sFormatterTz:Ljava/text/SimpleDateFormat;

.field private static final greylist-max-o sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAreThumbnailStripsConsecutive:Z

.field private greylist-max-o mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final greylist mAttributes:[Ljava/util/HashMap;

.field private greylist-max-o mExifByteOrder:Ljava/nio/ByteOrder;

.field private blacklist mExifHasLength:Z

.field private blacklist mExifHasOrientation:Z

.field private blacklist mExifHasWidth:Z

.field private greylist-max-o mExifOffset:I

.field private blacklist mFilename:Ljava/lang/String;

.field private blacklist mHandledIfdOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbnail:Z

.field private blacklist mHasThumbnailStrips:Z

.field private blacklist mIsExifDataOnly:Z

.field private greylist-max-o mIsInputStream:Z

.field private greylist-max-o mIsSupportedFile:Z

.field private greylist-max-o mMimeType:I

.field private blacklist mModified:Z

.field private greylist-max-o mOrfMakerNoteOffset:I

.field private greylist-max-o mOrfThumbnailLength:I

.field private greylist-max-o mOrfThumbnailOffset:I

.field private greylist-max-o mRw2JpgFromRawOffset:I

.field private greylist-max-o mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private greylist-max-o mThumbnailBytes:[B

.field private greylist-max-o mThumbnailCompression:I

.field private greylist-max-o mThumbnailLength:I

.field private greylist-max-o mThumbnailOffset:I

.field private blacklist mXmpIsFromSeparateMarker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetASCII()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEXIF_ASCII_PREFIX()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 38

    .line 99
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    .line 542
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 548
    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 549
    new-array v2, v0, [B

    fill-array-data v2, :array_2

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 550
    new-array v2, v0, [B

    fill-array-data v2, :array_3

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 551
    new-array v2, v0, [B

    fill-array-data v2, :array_4

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 552
    new-array v2, v0, [B

    fill-array-data v2, :array_5

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 560
    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 562
    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_7

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 578
    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_8

    sput-object v5, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 582
    new-array v5, v0, [B

    fill-array-data v5, :array_9

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 584
    new-array v5, v0, [B

    fill-array-data v5, :array_a

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 586
    new-array v5, v0, [B

    fill-array-data v5, :array_b

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 592
    new-array v5, v0, [B

    fill-array-data v5, :array_c

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 593
    new-array v5, v0, [B

    fill-array-data v5, :array_d

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 595
    new-array v5, v0, [B

    fill-array-data v5, :array_e

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 597
    new-array v5, v1, [B

    fill-array-data v5, :array_f

    sput-object v5, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 600
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8X"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 601
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8L"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 602
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8 "

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 603
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 604
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANMF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 643
    const-string v6, ""

    const-string v7, "BYTE"

    const-string v8, "STRING"

    const-string v9, "USHORT"

    const-string v10, "ULONG"

    const-string v11, "URATIONAL"

    const-string v12, "SBYTE"

    const-string v13, "UNDEFINED"

    const-string v14, "SSHORT"

    const-string v15, "SLONG"

    const-string v16, "SRATIONAL"

    const-string v17, "SINGLE"

    const-string v18, "DOUBLE"

    const-string v19, "IFD"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 648
    const/16 v5, 0xe

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    sput-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 651
    new-array v6, v4, [B

    fill-array-data v6, :array_11

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 674
    new-array v6, v1, [I

    fill-array-data v6, :array_12

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 675
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 676
    new-array v7, v6, [I

    aput v4, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 1108
    const/16 v7, 0x2a

    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageLength"

    const/16 v15, 0x101

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v11, 0x5

    aput-object v9, v7, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x9

    aput-object v9, v7, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v3, 0x112

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xb

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v3, 0x115

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xc

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "RowsPerStrip"

    const/16 v20, 0x116

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v15, 0xd

    aput-object v9, v7, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "StripByteCounts"

    const/16 v20, 0x117

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v9, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0xf

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v9, v15, v5, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x10

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x11

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x12

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x13

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Software"

    const/16 v5, 0x131

    invoke-direct {v9, v15, v5, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x14

    aput-object v9, v7, v5

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v3, 0x13f

    invoke-direct {v5, v15, v3, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0x18

    aput-object v5, v7, v3

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Copyright"

    const v15, 0x8298

    invoke-direct {v3, v5, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorTopBorder"

    invoke-direct {v3, v5, v0, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v3, v5, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorBottomBorder"

    invoke-direct {v3, v5, v2, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorRightBorder"

    invoke-direct {v3, v5, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ISO"

    invoke-direct {v3, v5, v9, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v3, v5, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v3, v5, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x29

    aput-object v3, v7, v5

    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1158
    const/16 v3, 0x3e

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ExposureTime"

    const v9, 0x829a

    invoke-direct {v5, v15, v9, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v8

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FNumber"

    const v15, 0x829d

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v6

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v10

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v1

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v0

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OECF"

    const v15, 0x8828

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v2

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v13

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v4

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xa

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xb

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xc

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xd

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ShutterSpeedValue"

    const v15, 0x9201

    const/16 v14, 0xa

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xe

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xf

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x10

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x11

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x12

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x13

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x14

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "LightSource"

    const v14, 0x9208

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Flash"

    const v14, 0x9209

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLength"

    const v14, 0x920a

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x18

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MakerNote"

    const v14, 0x927c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x19

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "UserComment"

    const v14, 0x9286

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelXDimension"

    const v26, 0xa002

    const/16 v27, 0x3

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x20

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelYDimension"

    const v26, 0xa003

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x21

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x22

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v5, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x23

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x24

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x25

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x26

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x27

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x28

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x29

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FileSource"

    const v14, 0xa300

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneType"

    const v14, 0xa301

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x30

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x31

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x32

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x33

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x34

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "GainControl"

    const v14, 0xa407

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x35

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Contrast"

    const v14, 0xa408

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x36

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Saturation"

    const v14, 0xa409

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x37

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x38

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x39

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v5, v9, v14, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "DefaultCropSize"

    const v26, 0xc620

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3d

    aput-object v5, v3, v9

    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1224
    const/16 v5, 0x1f

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSVersionID"

    invoke-direct {v9, v14, v8, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitudeRef"

    invoke-direct {v9, v14, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitude"

    invoke-direct {v9, v14, v10, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitudeRef"

    invoke-direct {v9, v14, v1, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitude"

    invoke-direct {v9, v14, v0, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitudeRef"

    invoke-direct {v9, v14, v11, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    invoke-direct {v9, v14, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    invoke-direct {v9, v14, v13, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSatellites"

    invoke-direct {v9, v14, v4, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    const/16 v15, 0x9

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    const/16 v15, 0xa

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    const/16 v15, 0xb

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x14

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x15

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x16

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x18

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x19

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1a

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1b

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1c

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1d

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v9, v14, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1e

    aput-object v9, v5, v14

    sput-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1258
    new-array v9, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "InteroperabilityIndex"

    invoke-direct {v14, v15, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v14, v9, v8

    sput-object v9, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1262
    const/16 v14, 0x26

    new-array v14, v14, [Landroid/media/ExifInterface$ExifTag;

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "NewSubfileType"

    const/16 v13, 0xfe

    invoke-direct {v15, v4, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v15, v14, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "ThumbnailImageWidth"

    const/16 v28, 0x100

    const/16 v29, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v33, "ThumbnailImageLength"

    const/16 v34, 0x101

    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x0

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v37}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v11

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x8

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x9

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripOffsets"

    const/16 v28, 0x111

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xa

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xb

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xc

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "RowsPerStrip"

    const/16 v28, 0x116

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xd

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripByteCounts"

    const/16 v28, 0x117

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xe

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xf

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x10

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x11

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x12

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x13

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Software"

    const/16 v15, 0x131

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x14

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x15

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x16

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x17

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x18

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x19

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1a

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1b

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1c

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1d

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1e

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1f

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x20

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x21

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x22

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x23

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x24

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v18, "DefaultCropSize"

    const v19, 0xc620

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x25

    aput-object v4, v14, v13

    sput-object v14, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1306
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    sput-object v4, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 1310
    new-array v4, v1, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ThumbnailImage"

    const/16 v2, 0x100

    const/4 v11, 0x7

    invoke-direct {v13, v15, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v4, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v13, 0x2020

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v13, 0x2040

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v10

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1315
    new-array v2, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageStart"

    const/16 v15, 0x101

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v8

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageLength"

    const/16 v15, 0x102

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v6

    sput-object v2, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1319
    new-array v11, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "AspectFrame"

    const/16 v0, 0x1113

    invoke-direct {v13, v15, v0, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v11, v8

    sput-object v11, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1323
    new-array v0, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ColorSpace"

    const/16 v10, 0x37

    invoke-direct {v13, v15, v10, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v0, v8

    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1350
    const/16 v10, 0xa

    new-array v10, v10, [[Landroid/media/ExifInterface$ExifTag;

    aput-object v7, v10, v8

    aput-object v3, v10, v6

    const/4 v3, 0x2

    aput-object v5, v10, v3

    aput-object v9, v10, v1

    const/4 v3, 0x4

    aput-object v14, v10, v3

    const/4 v3, 0x5

    aput-object v7, v10, v3

    const/4 v3, 0x6

    aput-object v4, v10, v3

    const/4 v4, 0x7

    aput-object v2, v10, v4

    const/16 v2, 0x8

    aput-object v11, v10, v2

    const/16 v2, 0x9

    aput-object v0, v10, v2

    sput-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 1356
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v5

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1366
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1368
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1369
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v7, "GPSTimeStamp"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 1380
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 1382
    const-string v2, "Exif\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1384
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 1426
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1427
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1428
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss XXX"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    .line 1429
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1432
    const/4 v0, 0x0

    .local v0, "ifdType":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1433
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1434
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    .line 1435
    aget-object v2, v2, v0

    array-length v3, v2

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1436
    .local v5, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget v9, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget-object v9, v5, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .end local v5    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1432
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    .end local v0    # "ifdType":I
    :cond_1
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v2, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    aget-object v3, v2, v6

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget v4, v4, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    aget-object v3, v2, v1

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const/4 v1, 0x4

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const/4 v1, 0x5

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1483
    nop

    .line 1484
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 1483
    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_b
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_c
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_e
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_f
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_11
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasLength:Z

    .line 1488
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    .line 1489
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    .line 1500
    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1504
    return-void

    .line 1501
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasLength:Z

    .line 1488
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    .line 1489
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    .line 1532
    if-eqz p1, :cond_6

    .line 1541
    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1542
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 1543
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1546
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1547
    iput-object v2, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1549
    const/4 v3, 0x0

    .line 1552
    .local v3, "isFdDuped":Z
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 1553
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1558
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    .line 1559
    const/4 v3, 0x1

    .line 1562
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1564
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1566
    :goto_0
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 1567
    const/4 v0, 0x0

    .line 1569
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 1570
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1573
    if-eqz v3, :cond_2

    .line 1574
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1576
    :cond_2
    if-eqz v1, :cond_3

    .line 1577
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1580
    :cond_3
    return-void

    .line 1572
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1573
    if-eqz v3, :cond_4

    .line 1574
    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1576
    :cond_4
    if-eqz v1, :cond_5

    .line 1577
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1579
    :cond_5
    throw v2

    .line 1533
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "modernFd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "isFdDuped":Z
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1593
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    .line 1610
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "shouldBeExifDataOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasLength:Z

    .line 1488
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    .line 1489
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    .line 1614
    if-eqz p1, :cond_4

    .line 1617
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1619
    if-eqz p2, :cond_1

    .line 1620
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    .line 1621
    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-static {v1}, Landroid/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1622
    const-string v0, "ExifInterface"

    const-string v1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void

    .line 1625
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    .line 1626
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1627
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1629
    :cond_1
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_2

    .line 1630
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1631
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1632
    :cond_2
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 1633
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1634
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1635
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 1637
    :cond_3
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1638
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 1641
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 1642
    return-void

    .line 1615
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1459
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    .line 1460
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasLength:Z

    .line 1488
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    .line 1489
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    .line 1515
    if-eqz p1, :cond_0

    .line 1518
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    .line 1519
    return-void

    .line 1516
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addDefaultValuesForCompatibility()V
    .locals 7

    .line 3978
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3979
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3980
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 3981
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 3980
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3985
    :cond_0
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    .line 3986
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3987
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3986
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3989
    :cond_1
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3990
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3991
    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 3990
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3993
    :cond_2
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3994
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3995
    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 3994
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3998
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3999
    invoke-static {v4, v5, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3998
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4001
    :cond_4
    return-void
.end method

.method public static blacklist convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 13
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 2559
    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2562
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2563
    .local v3, "pair":[Ljava/lang/String;
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 2564
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 2566
    .local v4, "degrees":D
    aget-object v7, v1, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2567
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v9, v3, v6

    .line 2568
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 2570
    .local v7, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2571
    .end local v3    # "pair":[Ljava/lang/String;
    .local v0, "pair":[Ljava/lang/String;
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v0, v6

    .line 2572
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 2574
    .local v2, "seconds":D
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double v9, v7, v9

    add-double/2addr v9, v4

    const-wide v11, 0x40ac200000000000L    # 3600.0

    div-double v11, v2, v11

    add-double/2addr v9, v11

    .line 2575
    .local v9, "result":D
    const-string v6, "S"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "W"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    goto :goto_0

    .line 2578
    :cond_0
    double-to-float v6, v9

    return v6

    .line 2576
    :cond_1
    :goto_0
    neg-double v11, v9

    double-to-float v6, v11

    return v6

    .line 2579
    .end local v0    # "pair":[Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v4    # "degrees":D
    .end local v7    # "minutes":D
    .end local v9    # "result":D
    :catch_0
    move-exception v0

    .line 2581
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private blacklist copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 6
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "firstGivenType"    # [B
    .param p4, "secondGivenType"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3940
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3941
    .local v0, "type":[B
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 3942
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3944
    if-nez p4, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " or "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3947
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3948
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    .line 3949
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3950
    goto :goto_2

    .line 3952
    .end local v0    # "type":[B
    :cond_2
    goto :goto_0

    .line 3953
    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 3
    .param p1, "inputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "outputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p3, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3957
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 3958
    .local v0, "size":I
    invoke-virtual {p2, p3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3959
    invoke-virtual {p2, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3961
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p1, p2, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3962
    return-void
.end method

.method private greylist-max-o getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1684
    if-eqz p1, :cond_2

    .line 1689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1690
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1691
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1692
    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    .line 1689
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 1685
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 27
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3090
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Xmp"

    const-string/jumbo v3, "yes"

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3092
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface$1;

    invoke-direct {v5, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 3143
    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3145
    .local v5, "exifOffsetStr":Ljava/lang/String;
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 3147
    .local v6, "exifLengthStr":Ljava/lang/String;
    const/16 v7, 0x1a

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 3149
    .local v7, "hasImage":Ljava/lang/String;
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 3152
    .local v8, "hasVideo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3153
    .local v9, "width":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3154
    .local v10, "height":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3155
    .local v11, "rotation":Ljava/lang/String;
    move-object v12, v3

    .line 3159
    .local v12, "METADATA_VALUE_YES":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3160
    const/16 v3, 0x1d

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3162
    const/16 v3, 0x1e

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3164
    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_0

    .line 3166
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3167
    const/16 v3, 0x12

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 3169
    const/16 v3, 0x13

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 3171
    const/16 v3, 0x18

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 3175
    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v9, :cond_2

    .line 3176
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v3

    const-string v14, "ImageWidth"

    .line 3177
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iget-object v3, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v15, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 3176
    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    :cond_2
    if-eqz v10, :cond_3

    .line 3181
    iget-object v3, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    const-string v13, "ImageLength"

    .line 3182
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3181
    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    :cond_3
    if-eqz v11, :cond_4

    .line 3186
    const/4 v3, 0x1

    .line 3189
    .local v3, "orientation":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    .line 3197
    :sswitch_0
    const/16 v3, 0x8

    goto :goto_1

    .line 3194
    :sswitch_1
    const/4 v3, 0x3

    .line 3195
    goto :goto_1

    .line 3191
    :sswitch_2
    const/4 v3, 0x6

    .line 3192
    nop

    .line 3201
    :goto_1
    iget-object v13, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3202
    invoke-static {v3, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 3201
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3205
    .end local v3    # "orientation":I
    :cond_4
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    .line 3206
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3207
    .local v3, "offset":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3208
    .local v13, "length":I
    const/4 v14, 0x6

    if-le v13, v14, :cond_8

    .line 3211
    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3212
    const/4 v14, 0x6

    new-array v15, v14, [B

    .line 3213
    .local v15, "identifier":[B
    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    move-object/from16 v18, v5

    const/4 v5, 0x6

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .local v18, "exifOffsetStr":Ljava/lang/String;
    if-ne v14, v5, :cond_7

    .line 3216
    add-int/2addr v3, v5

    .line 3217
    add-int/lit8 v13, v13, -0x6

    .line 3218
    sget-object v5, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3223
    new-array v5, v13, [B

    .line 3224
    .local v5, "bytes":[B
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-ne v14, v13, :cond_5

    .line 3228
    iput v3, v1, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3229
    const/4 v14, 0x0

    invoke-direct {v1, v5, v14}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_2

    .line 3225
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v14, "Can\'t read exif"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3219
    .end local v5    # "bytes":[B
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Invalid identifier"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3214
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Can\'t read identifier"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3209
    .end local v15    # "identifier":[B
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_8
    move-object/from16 v18, v5

    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Invalid exif length"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3205
    .end local v3    # "offset":I
    .end local v13    # "length":I
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_9
    move-object/from16 v18, v5

    .line 3232
    .end local v5    # "exifOffsetStr":Ljava/lang/String;
    .restart local v18    # "exifOffsetStr":Ljava/lang/String;
    :goto_2
    const/16 v3, 0x29

    invoke-virtual {v4, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 3234
    .local v3, "xmpOffsetStr":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 3236
    .local v5, "xmpLengthStr":Ljava/lang/String;
    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    .line 3237
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3238
    .local v13, "offset":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3239
    .local v14, "length":I
    move-object/from16 v17, v5

    move-object v15, v6

    .end local v5    # "xmpLengthStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .local v15, "exifLengthStr":Ljava/lang/String;
    .local v17, "xmpLengthStr":Ljava/lang/String;
    int-to-long v5, v13

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3240
    new-array v5, v14, [B

    .line 3241
    .local v5, "xmpBytes":[B
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v14, :cond_b

    .line 3244
    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 3245
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v20, 0x1

    array-length v2, v5

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .local v16, "hasImage":Ljava/lang/String;
    .local v26, "hasVideo":Ljava/lang/String;
    int-to-long v7, v13

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v2

    move-wide/from16 v22, v7

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v25}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3244
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    goto :goto_3

    .line 3242
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read XMP from HEIF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v0

    .line 3236
    .end local v13    # "offset":I
    .end local v14    # "length":I
    .end local v15    # "exifLengthStr":Ljava/lang/String;
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "xmpLengthStr":Ljava/lang/String;
    .restart local v6    # "exifLengthStr":Ljava/lang/String;
    .restart local v7    # "hasImage":Ljava/lang/String;
    .restart local v8    # "hasVideo":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_c
    move-object/from16 v17, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    .line 3250
    .end local v5    # "xmpLengthStr":Ljava/lang/String;
    .end local v6    # "exifLengthStr":Ljava/lang/String;
    .end local v7    # "hasImage":Ljava/lang/String;
    .end local v8    # "hasVideo":Ljava/lang/String;
    .restart local v15    # "exifLengthStr":Ljava/lang/String;
    .restart local v16    # "hasImage":Ljava/lang/String;
    .restart local v17    # "xmpLengthStr":Ljava/lang/String;
    .restart local v26    # "hasVideo":Ljava/lang/String;
    :goto_3
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 3251
    const-string v0, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3254
    .end local v3    # "xmpOffsetStr":Ljava/lang/String;
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "height":Ljava/lang/String;
    .end local v11    # "rotation":Ljava/lang/String;
    .end local v12    # "METADATA_VALUE_YES":Ljava/lang/String;
    .end local v15    # "exifLengthStr":Ljava/lang/String;
    .end local v16    # "hasImage":Ljava/lang/String;
    .end local v17    # "xmpLengthStr":Ljava/lang/String;
    .end local v18    # "exifOffsetStr":Ljava/lang/String;
    .end local v26    # "hasVideo":Ljava/lang/String;
    :cond_d
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3255
    nop

    .line 3256
    return-void

    .line 3254
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3255
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 24
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2858
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 2859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2866
    move/from16 v3, p2

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2867
    move/from16 v5, p2

    .line 2870
    .local v5, "bytesRead":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    move v7, v6

    .local v7, "marker":B
    const-string v8, "Invalid marker: "

    const/4 v9, -0x1

    if-ne v6, v9, :cond_12

    .line 2873
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 2874
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_11

    .line 2877
    add-int/2addr v5, v6

    .line 2879
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2880
    if-ne v7, v9, :cond_10

    .line 2883
    add-int/lit8 v5, v5, 0x1

    .line 2884
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    .line 2885
    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 2886
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found JPEG segment indicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_1
    add-int/2addr v5, v6

    .line 2892
    const/16 v10, -0x27

    if-eq v7, v10, :cond_f

    const/16 v10, -0x26

    if-ne v7, v10, :cond_2

    .line 2893
    goto/16 :goto_5

    .line 2895
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    .line 2896
    .local v10, "length":I
    add-int/lit8 v5, v5, 0x2

    .line 2897
    if-eqz v8, :cond_3

    .line 2898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JPEG segment: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " (length: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_3
    const-string v8, "Invalid length"

    if-ltz v10, :cond_e

    .line 2904
    sparse-switch v7, :sswitch_data_0

    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    .line 2936
    :sswitch_0
    new-array v11, v10, [B

    .line 2937
    .local v11, "bytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_5

    .line 2940
    const/4 v10, 0x0

    .line 2941
    const-string v12, "UserComment"

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2942
    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    new-instance v14, Ljava/lang/String;

    sget-object v15, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    .end local v11    # "bytes":[B
    :cond_4
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    .line 2938
    .restart local v11    # "bytes":[B
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2906
    .end local v11    # "bytes":[B
    :sswitch_1
    move v11, v5

    .line 2907
    .local v11, "start":I
    new-array v12, v10, [B

    .line 2908
    .local v12, "bytes":[B
    invoke-virtual {v1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2909
    add-int/2addr v5, v10

    .line 2910
    const/4 v10, 0x0

    .line 2912
    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v12, v13}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2913
    array-length v14, v13

    add-int/2addr v14, v11

    int-to-long v14, v14

    .line 2914
    .local v14, "offset":J
    array-length v13, v13

    array-length v9, v12

    invoke-static {v12, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2917
    .local v9, "value":[B
    long-to-int v13, v14

    iput v13, v0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 2918
    invoke-direct {v0, v9, v2}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 2919
    .end local v9    # "value":[B
    .end local v14    # "offset":J
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_4

    :cond_6
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v12, v9}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2921
    array-length v13, v9

    add-int/2addr v13, v11

    int-to-long v13, v13

    .line 2922
    .local v13, "offset":J
    array-length v9, v9

    array-length v15, v12

    invoke-static {v12, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2926
    .restart local v9    # "value":[B
    const-string v15, "Xmp"

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7

    .line 2927
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v3, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v17, 0x1

    move-object/from16 v23, v4

    array-length v4, v9

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v4

    move-wide/from16 v19, v13

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_1

    .line 2926
    :cond_7
    move-object/from16 v23, v4

    move v3, v6

    .line 2931
    .end local v9    # "value":[B
    .end local v13    # "offset":J
    :goto_1
    goto :goto_4

    .line 2919
    :cond_8
    move-object/from16 v23, v4

    move v3, v6

    goto :goto_4

    .line 2961
    .end local v11    # "start":I
    .end local v12    # "bytes":[B
    :sswitch_2
    move-object/from16 v23, v4

    move v3, v6

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 2964
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_9

    .line 2965
    const-string v9, "ImageLength"

    goto :goto_2

    :cond_9
    const-string v9, "ThumbnailImageLength"

    .line 2966
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 2964
    invoke-virtual {v4, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    if-eq v2, v6, :cond_a

    .line 2968
    const-string v6, "ImageWidth"

    goto :goto_3

    :cond_a
    const-string v6, "ThumbnailImageWidth"

    .line 2969
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v11, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 2967
    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2970
    add-int/lit8 v10, v10, -0x5

    .line 2971
    goto :goto_4

    .line 2962
    :cond_b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid SOFx"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2978
    :goto_4
    if-ltz v10, :cond_d

    .line 2981
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v10, :cond_c

    .line 2984
    add-int/2addr v5, v10

    .line 2985
    .end local v10    # "length":I
    move v6, v3

    move-object/from16 v4, v23

    const/4 v9, -0x1

    move/from16 v3, p2

    goto/16 :goto_0

    .line 2982
    .restart local v10    # "length":I
    :cond_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid JPEG segment"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2979
    :cond_d
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2902
    :cond_e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2987
    .end local v10    # "length":I
    :cond_f
    :goto_5
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2988
    return-void

    .line 2881
    :cond_10
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2875
    :cond_11
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2871
    :cond_12
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_2
        -0x3f -> :sswitch_2
        -0x3e -> :sswitch_2
        -0x3d -> :sswitch_2
        -0x3b -> :sswitch_2
        -0x3a -> :sswitch_2
        -0x39 -> :sswitch_2
        -0x37 -> :sswitch_2
        -0x36 -> :sswitch_2
        -0x35 -> :sswitch_2
        -0x33 -> :sswitch_2
        -0x32 -> :sswitch_2
        -0x31 -> :sswitch_2
        -0x1f -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2613
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2614
    new-array v0, v0, [B

    .line 2615
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2616
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2617
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2618
    const/4 v1, 0x4

    return v1

    .line 2619
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2620
    const/16 v1, 0x9

    return v1

    .line 2621
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2622
    const/16 v1, 0xc

    return v1

    .line 2623
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2624
    const/4 v1, 0x7

    return v1

    .line 2625
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2626
    const/16 v1, 0xa

    return v1

    .line 2627
    :cond_4
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isPngFormat([B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2628
    const/16 v1, 0xd

    return v1

    .line 2629
    :cond_5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isWebpFormat([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2630
    const/16 v1, 0xe

    return v1

    .line 2633
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 16
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3281
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3286
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3287
    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3288
    .local v1, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_4

    .line 3290
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3292
    .local v3, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3296
    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v5, v4

    new-array v5, v5, [B

    .line 3297
    .local v5, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3298
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3299
    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v7, v6

    new-array v7, v7, [B

    .line 3300
    .local v7, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3302
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3303
    const-wide/16 v8, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 3304
    :cond_0
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3305
    const-wide/16 v8, 0xc

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3309
    :cond_1
    :goto_0
    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3312
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x7

    aget-object v4, v4, v6

    .line 3313
    const-string v8, "PreviewImageStart"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 3314
    .local v4, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v8, v6

    .line 3315
    const-string v8, "PreviewImageLength"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    .line 3317
    .local v6, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 3318
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    :cond_2
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    .line 3328
    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 3329
    .local v8, "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_4

    .line 3330
    const/4 v9, 0x4

    new-array v9, v9, [I

    .line 3331
    .local v9, "aspectFrameValues":[I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    .line 3332
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_4

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_4

    .line 3334
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 3335
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 3337
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_3

    .line 3338
    add-int/2addr v10, v11

    .line 3339
    sub-int v11, v10, v11

    .line 3340
    sub-int/2addr v10, v11

    .line 3342
    :cond_3
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3343
    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 3344
    .local v2, "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3345
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3347
    .local v13, "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    .end local v2    # "primaryImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "makerNoteHeader1Bytes":[B
    .end local v6    # "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "makerNoteHeader2Bytes":[B
    .end local v8    # "aspectFrameAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_4
    return-void
.end method

.method private blacklist getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 10
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3381
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3390
    const/4 v0, 0x0

    .line 3393
    .local v0, "bytesRead":I
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3394
    array-length v1, v1

    add-int/2addr v0, v1

    .line 3408
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 3409
    .local v1, "length":I
    add-int/lit8 v0, v0, 0x4

    .line 3411
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 3412
    .local v2, "type":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_7

    .line 3416
    add-int/lit8 v0, v0, 0x4

    .line 3419
    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3420
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3

    .line 3424
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_2
    :goto_1
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3426
    goto :goto_2

    .line 3427
    :cond_3
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3429
    new-array v3, v1, [B

    .line 3430
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 3436
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    .line 3438
    .local v4, "dataCrcValue":I
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 3439
    .local v5, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 3440
    invoke-virtual {v5, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3441
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v6, v4, :cond_4

    .line 3447
    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3448
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3450
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3451
    nop

    .line 3462
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .end local v3    # "data":[B
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    :goto_2
    nop

    .line 3463
    return-void

    .line 3442
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    .restart local v3    # "data":[B
    .restart local v4    # "dataCrcValue":I
    .restart local v5    # "crc":Ljava/util/zip/CRC32;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", calculated CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3444
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3431
    .end local v4    # "dataCrcValue":I
    .end local v5    # "crc":Ljava/util/zip/CRC32;
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3432
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3454
    .end local v3    # "data":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3455
    add-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    .line 3457
    .end local v1    # "length":I
    .end local v2    # "type":[B
    goto/16 :goto_0

    .line 3413
    .restart local v1    # "length":I
    .restart local v2    # "type":[B
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3458
    .end local v1    # "length":I
    .end local v2    # "type":[B
    .restart local v0    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v1

    .line 3461
    .local v1, "e":Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3043
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3044
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 3045
    .local v3, "jpegOffsetBytes":[B
    new-array v4, v2, [B

    .line 3046
    .local v4, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3048
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3049
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3050
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 3051
    .local v2, "rafJpegOffset":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 3054
    .local v5, "rafCfaHeaderOffset":I
    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3057
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3060
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3061
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3062
    .local v6, "numberOfDirectoryEntry":I
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v8, "ExifInterface"

    if-eqz v7, :cond_0

    .line 3063
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numberOfDirectoryEntry: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 3069
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3070
    .local v9, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 3071
    .local v10, "numberOfBytes":I
    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_2

    .line 3072
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    .line 3073
    .local v11, "imageLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    .line 3074
    .local v12, "imageWidth":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3075
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3076
    .local v13, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3077
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 3078
    .local v14, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .local v17, "rafJpegOffset":I
    const-string v2, "ImageLength"

    invoke-virtual {v15, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    const-string v15, "ImageWidth"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated to length: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", width: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    :cond_1
    return-void

    .line 3085
    .end local v11    # "imageLength":I
    .end local v12    # "imageWidth":I
    .end local v13    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v14    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_2
    move/from16 v17, v2

    .end local v2    # "rafJpegOffset":I
    .restart local v17    # "rafJpegOffset":I
    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3068
    .end local v9    # "tagNumber":I
    .end local v10    # "numberOfBytes":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3087
    .end local v7    # "i":I
    .end local v17    # "rafJpegOffset":I
    .restart local v2    # "rafJpegOffset":I
    :cond_3
    return-void
.end method

.method private greylist-max-o getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2992
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2995
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2998
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2999
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3000
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3003
    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    .line 3005
    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3008
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 3009
    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3010
    .local v0, "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 3012
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3014
    .local v2, "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3017
    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3020
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3023
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    .line 3024
    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 3025
    .local v3, "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_0

    .line 3026
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    .end local v0    # "makerNoteAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    return-void
.end method

.method private greylist-max-o getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3359
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 3362
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3363
    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 3364
    .local v0, "jpgFromRawAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 3365
    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 3369
    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    .line 3370
    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 3371
    .local v1, "rw2IsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 3372
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3373
    .local v2, "exifIsoAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 3375
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    :cond_1
    return-void
.end method

.method private blacklist getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3259
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3261
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 3262
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3264
    array-length v0, v0

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3265
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3266
    return-void
.end method

.method private blacklist getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3469
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3475
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3478
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 3479
    .local v0, "fileSize":I
    const/16 v1, 0x8

    .line 3480
    .local v1, "bytesRead":I
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3493
    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    .line 3494
    .local v2, "code":[B
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_7

    .line 3498
    add-int/lit8 v1, v1, 0x4

    .line 3499
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 3500
    .local v3, "chunkSize":I
    add-int/lit8 v1, v1, 0x4

    .line 3501
    sget-object v4, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3503
    new-array v4, v3, [B

    .line 3504
    .local v4, "payload":[B
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 3509
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3510
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 3513
    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 3514
    goto :goto_2

    .line 3505
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3506
    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v5

    .line 3517
    .end local v4    # "payload":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_2
    rem-int/lit8 v4, v3, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    move v3, v4

    .line 3519
    add-int v4, v1, v3

    if-ne v4, v0, :cond_4

    .line 3521
    nop

    .line 3537
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    :goto_2
    nop

    .line 3538
    return-void

    .line 3522
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    :cond_4
    add-int v4, v1, v3

    const-string v5, "Encountered WebP file with invalid chunk size"

    if-gt v4, v0, :cond_6

    .line 3526
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    .line 3527
    .local v4, "skipped":I
    if-ne v4, v3, :cond_5

    .line 3530
    add-int/2addr v1, v4

    .line 3532
    .end local v2    # "code":[B
    .end local v3    # "chunkSize":I
    .end local v4    # "skipped":I
    goto :goto_0

    .line 3528
    .restart local v2    # "code":[B
    .restart local v3    # "chunkSize":I
    .restart local v4    # "skipped":I
    :cond_5
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v6

    .line 3523
    .end local v4    # "skipped":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v4

    .line 3495
    .end local v3    # "chunkSize":I
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileSize":I
    .end local v1    # "bytesRead":I
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    throw v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3533
    .end local v2    # "code":[B
    .restart local v0    # "fileSize":I
    .restart local v1    # "bytesRead":I
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "in":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v2

    .line 3536
    .local v2, "e":Ljava/io/EOFException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4858
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4907
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4858
    const/4 v5, -0x1

    .line 4907
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4858
    if-eqz v1, :cond_9

    .line 4859
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4860
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 4861
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4862
    return-object v1

    .line 4864
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 4865
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 4866
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 4867
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v9, v10, :cond_1

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, v10, :cond_2

    .line 4869
    :cond_1
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4871
    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_4

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v9, v10, :cond_3

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v9, v10, :cond_4

    .line 4873
    :cond_3
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4875
    :cond_4
    if-ne v7, v5, :cond_5

    if-ne v8, v5, :cond_5

    .line 4876
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 4878
    :cond_5
    if-ne v7, v5, :cond_6

    .line 4879
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4880
    goto :goto_1

    .line 4882
    :cond_6
    if-ne v8, v5, :cond_7

    .line 4883
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 4864
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4887
    .end local v2    # "i":I
    :cond_8
    return-object v1

    .line 4890
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_f

    .line 4891
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4892
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_e

    .line 4894
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 4895
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 4896
    .local v9, "denominator":J
    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_d

    cmp-long v3, v9, v7

    if-gez v3, :cond_a

    goto :goto_3

    .line 4899
    :cond_a
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_c

    cmp-long v3, v9, v7

    if-lez v3, :cond_b

    goto :goto_2

    .line 4902
    :cond_b
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4900
    :cond_c
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 4897
    :cond_d
    :goto_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 4903
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_0
    move-exception v1

    .line 4907
    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4910
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4911
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_10

    .line 4912
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4914
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_11

    .line 4915
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4917
    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 4918
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v0

    .line 4922
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 4923
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 4924
    :catch_2
    move-exception v0

    .line 4927
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4350
    nop

    .line 4351
    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4352
    .local v0, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4353
    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4354
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4356
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4357
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4359
    .local v3, "thumbnailLength":I
    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 4361
    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    .line 4364
    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4366
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 4367
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4369
    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4370
    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 4371
    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4373
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_1

    .line 4377
    new-array v5, v3, [B

    .line 4378
    .local v5, "thumbnailBytes":[B
    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4379
    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4380
    iput-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4383
    .end local v5    # "thumbnailBytes":[B
    :cond_1
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 4384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    :cond_2
    return-void
.end method

.method private greylist-max-o handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4394
    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4395
    .local v3, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    nop

    .line 4396
    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4398
    .local v4, "stripByteCountsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 4399
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4400
    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    .line 4401
    .local v5, "stripOffsets":[J
    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4402
    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    .line 4404
    .local v6, "stripByteCounts":[J
    const-string v7, "ExifInterface"

    if-eqz v5, :cond_8

    array-length v8, v5

    if-nez v8, :cond_0

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 4408
    :cond_0
    if-eqz v6, :cond_7

    array-length v8, v6

    if-nez v8, :cond_1

    move-object/from16 v17, v3

    goto/16 :goto_2

    .line 4412
    :cond_1
    array-length v8, v5

    array-length v9, v6

    if-eq v8, v9, :cond_2

    .line 4413
    const-string/jumbo v8, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    return-void

    .line 4419
    :cond_2
    nop

    .line 4420
    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [B

    .line 4422
    .local v8, "totalStripBytes":[B
    const/4 v9, 0x0

    .line 4423
    .local v9, "bytesRead":I
    const/4 v10, 0x0

    .line 4424
    .local v10, "bytesAdded":I
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4425
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v5

    if-ge v12, v13, :cond_6

    .line 4426
    aget-wide v14, v5, v12

    long-to-int v14, v14

    .line 4427
    .local v14, "stripOffset":I
    move/from16 v16, v14

    .end local v14    # "stripOffset":I
    .local v16, "stripOffset":I
    aget-wide v13, v6, v12

    long-to-int v14, v13

    .line 4431
    .local v14, "stripByteCount":I
    array-length v13, v5

    sub-int/2addr v13, v11

    if-ge v12, v13, :cond_3

    add-int v13, v16, v14

    move-object/from16 v17, v3

    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v17, "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v2, v13

    add-int/lit8 v13, v12, 0x1

    aget-wide v18, v5, v13

    cmp-long v2, v2, v18

    if-eqz v2, :cond_4

    .line 4433
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_1

    .line 4431
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_3
    move-object/from16 v17, v3

    .line 4437
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_4
    :goto_1
    sub-int v2, v16, v9

    .line 4438
    .local v2, "skipBytes":I
    if-gez v2, :cond_5

    .line 4439
    const-string v3, "Invalid strip offset value"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :cond_5
    move v15, v12

    .end local v12    # "i":I
    .local v15, "i":I
    int-to-long v11, v2

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4442
    add-int/2addr v9, v2

    .line 4446
    new-array v11, v14, [B

    .line 4447
    .local v11, "stripBytes":[B
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4448
    add-int/2addr v9, v14

    .line 4451
    array-length v12, v11

    const/4 v13, 0x0

    invoke-static {v11, v13, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4453
    array-length v12, v11

    add-int/2addr v10, v12

    .line 4425
    .end local v2    # "skipBytes":I
    .end local v11    # "stripBytes":[B
    .end local v14    # "stripByteCount":I
    .end local v16    # "stripOffset":I
    add-int/lit8 v12, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    const/4 v11, 0x1

    .end local v15    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_6
    move-object/from16 v17, v3

    move v15, v12

    .line 4455
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v12    # "i":I
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iput-object v8, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 4457
    iget-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v2, :cond_a

    .line 4459
    const/4 v2, 0x0

    aget-wide v2, v5, v2

    long-to-int v2, v2

    iget v3, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4460
    array-length v2, v8

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_4

    .line 4408
    .end local v8    # "totalStripBytes":[B
    .end local v9    # "bytesRead":I
    .end local v10    # "bytesAdded":I
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_7
    move-object/from16 v17, v3

    .line 4409
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_2
    const-string/jumbo v2, "stripByteCounts should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    return-void

    .line 4404
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_8
    move-object/from16 v17, v3

    .line 4405
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_3
    const-string/jumbo v2, "stripOffsets should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    return-void

    .line 4398
    .end local v5    # "stripOffsets":[J
    .end local v6    # "stripByteCounts":[J
    .end local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_9
    move-object/from16 v17, v3

    .line 4463
    .end local v3    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v17    # "stripOffsetsAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_a
    :goto_4
    return-void
.end method

.method private blacklist initForFilename(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2586
    const/4 v0, 0x0

    .line 2587
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2588
    .local v1, "modernFd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 2589
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 2590
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 2592
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2593
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 2594
    if-eqz v1, :cond_0

    .line 2595
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2596
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2597
    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 2598
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2599
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 2601
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2603
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2604
    if-eqz v1, :cond_2

    .line 2605
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2608
    :cond_2
    return-void

    .line 2603
    :catchall_0
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2604
    if-eqz v1, :cond_3

    .line 2605
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2607
    :cond_3
    throw v2
.end method

.method private static blacklist isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2833
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2834
    array-length v0, v0

    new-array v0, v0, [B

    .line 2835
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 2836
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 2837
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2838
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    .line 2839
    const/4 v2, 0x0

    return v2

    .line 2837
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2842
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isHeifFormat([B)Z
    .locals 21
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2666
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2668
    .local v2, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    .line 2670
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    .line 2671
    .local v4, "chunkSize":J
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 2672
    .local v6, "chunkType":[B
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2674
    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 2675
    nop

    .line 2732
    nop

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v0, 0x0

    .line 2675
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2678
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_0
    const-wide/16 v7, 0x8

    .line 2679
    .local v7, "chunkDataOffset":J
    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_2

    .line 2682
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v14

    .line 2683
    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_1

    .line 2685
    nop

    .line 2732
    nop

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v0, 0x0

    .line 2685
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2687
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    add-long/2addr v7, v12

    .line 2691
    :cond_2
    :try_start_2
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_3

    .line 2692
    array-length v11, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v11

    .line 2695
    :cond_3
    sub-long v14, v4, v7

    .line 2699
    .local v14, "chunkDataSize":J
    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    .line 2700
    nop

    .line 2732
    nop

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v0, 0x0

    .line 2700
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    return v3

    .line 2703
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_4
    :try_start_3
    new-array v0, v0, [B

    .line 2704
    .local v0, "brand":[B
    const/4 v11, 0x0

    .line 2705
    .local v11, "isMif1":Z
    const/4 v12, 0x0

    .line 2706
    .local v12, "isHeic":Z
    const/4 v13, 0x0

    .line 2707
    .local v13, "isAvif":Z
    const-wide/16 v16, 0x0

    .local v16, "i":J
    :goto_0
    const-wide/16 v18, 0x4

    div-long v18, v14, v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_d

    .line 2708
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    array-length v10, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v10, :cond_5

    .line 2709
    nop

    .line 2732
    nop

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v2, 0x0

    .line 2709
    return v3

    .line 2711
    :cond_5
    const-wide/16 v9, 0x1

    cmp-long v20, v16, v9

    if-nez v20, :cond_6

    .line 2713
    goto :goto_2

    .line 2715
    :cond_6
    :try_start_4
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2716
    const/4 v11, 0x1

    goto :goto_1

    .line 2717
    :cond_7
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2718
    const/4 v12, 0x1

    goto :goto_1

    .line 2719
    :cond_8
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 2720
    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_a

    .line 2721
    :cond_9
    const/4 v13, 0x1

    .line 2723
    :cond_a
    :goto_1
    if-eqz v11, :cond_c

    if-nez v12, :cond_b

    if-eqz v13, :cond_c

    .line 2724
    :cond_b
    const/4 v3, 0x1

    .line 2732
    nop

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v2, 0x0

    .line 2724
    return v3

    .line 2707
    :cond_c
    :goto_2
    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    goto :goto_0

    .line 2732
    .end local v0    # "brand":[B
    .end local v4    # "chunkSize":J
    .end local v6    # "chunkType":[B
    .end local v7    # "chunkDataOffset":J
    .end local v11    # "isMif1":Z
    .end local v12    # "isHeic":Z
    .end local v13    # "isAvif":Z
    .end local v14    # "chunkDataSize":J
    .end local v16    # "i":J
    :cond_d
    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2727
    :catch_0
    move-exception v0

    .line 2728
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 2729
    const-string v4, "ExifInterface"

    const-string v5, "Exception parsing HEIF file type box."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2732
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    if-eqz v2, :cond_f

    .line 2733
    :goto_3
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v0, 0x0

    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_4

    .line 2732
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_f
    move-object v0, v2

    .line 2737
    .end local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_4
    return v3

    .line 2732
    .end local v0    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v2    # "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_5
    if-eqz v2, :cond_10

    .line 2733
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2734
    const/4 v2, 0x0

    .line 2736
    :cond_10
    throw v0
.end method

.method private static greylist-max-o isJpegFormat([B)Z
    .locals 3
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2642
    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2643
    const/4 v1, 0x0

    return v1

    .line 2641
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2646
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isOrfFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    const/4 v0, 0x0

    .line 2752
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2755
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2757
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2759
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    .local v2, "orfSignature":S
    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2764
    :cond_1
    nop

    .line 2765
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2760
    return v1

    .line 2764
    .end local v2    # "orfSignature":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 2765
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2767
    :cond_2
    throw v1

    .line 2761
    :catch_0
    move-exception v2

    .line 2764
    if-eqz v0, :cond_3

    .line 2765
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2768
    :cond_3
    return v1
.end method

.method private blacklist isPngFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2805
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2806
    const/4 v1, 0x0

    return v1

    .line 2804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2809
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isRafFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2656
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2657
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2658
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_0

    .line 2659
    const/4 v2, 0x0

    return v2

    .line 2657
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2662
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o isRw2Format([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2776
    const/4 v0, 0x0

    .line 2779
    .local v0, "signatureInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    .line 2782
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2784
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2786
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 2787
    .local v2, "signatureByte":S
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 2792
    :cond_0
    nop

    .line 2793
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2788
    return v1

    .line 2792
    .end local v2    # "signatureByte":S
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 2793
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2795
    :cond_1
    throw v1

    .line 2789
    :catch_0
    move-exception v2

    .line 2792
    if-eqz v0, :cond_2

    .line 2793
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 2796
    :cond_2
    return v1
.end method

.method private static greylist-max-o isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 2072
    const-wide/16 v0, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    const/4 v0, 0x1

    return v0

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/system/ErrnoException;
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2076
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 7
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4467
    nop

    .line 4468
    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4469
    .local v0, "bitsPerSampleAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 4470
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4472
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4473
    return v4

    .line 4477
    :cond_0
    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 4478
    nop

    .line 4479
    const-string v3, "PhotometricInterpretation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4480
    .local v3, "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_3

    .line 4481
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4482
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 4483
    .local v5, "photometricInterpretationValue":I
    if-ne v5, v4, :cond_1

    sget-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 4484
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 4486
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4487
    :cond_2
    return v4

    .line 4494
    .end local v1    # "bitsPerSampleValue":[I
    .end local v3    # "photometricInterpretationAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "photometricInterpretationValue":I
    :cond_3
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4495
    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSupportedFormatForSavingAttributes()Z
    .locals 2

    .line 5295
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5298
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 5300
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSupportedMimeType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 1651
    if-eqz p0, :cond_1

    .line 1655
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "image/x-canon-cr2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "image/x-nikon-nrw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "image/x-nikon-nef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "image/x-olympus-orf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "image/x-pentax-pef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_6
    const-string v2, "image/x-panasonic-rw2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "image/x-adobe-dng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_8
    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_9
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_a
    const-string v2, "image/heif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_b
    const-string v2, "image/heic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "image/x-sony-arw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_d
    const-string v2, "image/x-samsung-srw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_e
    const-string v2, "image/x-fuji-raf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1673
    return v3

    .line 1671
    :pswitch_0
    return v4

    .line 1652
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o isThumbnail(Ljava/util/HashMap;)Z
    .locals 5
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4503
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4504
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4506
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4507
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 4508
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4509
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_0

    if-gt v3, v4, :cond_0

    .line 4510
    const/4 v4, 0x1

    return v4

    .line 4513
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isWebpFormat([B)Z
    .locals 4
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 2819
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 2820
    return v3

    .line 2818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2823
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2824
    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_2

    .line 2826
    return v3

    .line 2823
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2829
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 1985
    if-eqz p1, :cond_5

    .line 1990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1991
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1995
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_1

    .line 1996
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 1997
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 2001
    :cond_1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2003
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    iget-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v2, :cond_2

    .line 2004
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_0

    .line 2045
    goto :goto_1

    .line 2030
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2031
    goto :goto_1

    .line 2026
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2027
    goto :goto_1

    .line 2014
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2015
    goto :goto_1

    .line 2022
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2023
    goto :goto_1

    .line 2010
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2011
    goto :goto_1

    .line 2018
    :pswitch_5
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2019
    goto :goto_1

    .line 2006
    :pswitch_6
    invoke-direct {p0, v0, v1, v1}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 2007
    goto :goto_1

    .line 2041
    :pswitch_7
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2042
    goto :goto_1

    .line 2049
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2052
    :goto_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2053
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2064
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2065
    :goto_2
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    goto :goto_3

    .line 2062
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2054
    :catch_0
    move-exception v0

    .line 2057
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 2058
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2062
    nop

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2064
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2065
    goto :goto_2

    .line 2068
    :cond_3
    :goto_3
    return-void

    .line 2062
    :goto_4
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 2064
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2065
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    .line 2067
    :cond_4
    throw v0

    .line 1986
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputstream shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0, "dateTimeString"    # Ljava/lang/String;
    .param p1, "subSecs"    # Ljava/lang/String;
    .param p2, "offsetString"    # Ljava/lang/String;

    .line 2488
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_5

    sget-object v2, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2489
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 2491
    :cond_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2496
    .local v2, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2497
    :try_start_1
    sget-object v5, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 2498
    .local v5, "datetime":Ljava/util/Date;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2500
    if-eqz p2, :cond_1

    .line 2501
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 2502
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v4

    .line 2503
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v4, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2504
    :try_start_3
    sget-object v6, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 2505
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_4
    throw v6

    .line 2508
    .end local v3    # "position":Ljava/text/ParsePosition;
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    return-wide v0

    .line 2509
    :cond_2
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2511
    .local v3, "msecs":J
    if-eqz p1, :cond_4

    .line 2513
    :try_start_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2514
    .local v6, "sub":J
    :goto_1
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 2515
    const-wide/16 v8, 0xa

    div-long v8, v6, v8
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    move-wide v6, v8

    goto :goto_1

    .line 2517
    :cond_3
    add-long/2addr v3, v6

    .line 2520
    .end local v6    # "sub":J
    goto :goto_2

    .line 2518
    :catch_0
    move-exception v0

    .line 2522
    :cond_4
    :goto_2
    return-wide v3

    .line 2498
    .end local v3    # "msecs":J
    .end local v5    # "datetime":Ljava/util/Date;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "dateTimeString":Ljava/lang/String;
    .end local p1    # "subSecs":Ljava/lang/String;
    .end local p2    # "offsetString":Ljava/lang/String;
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2523
    .restart local v2    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "dateTimeString":Ljava/lang/String;
    .restart local p1    # "subSecs":Ljava/lang/String;
    .restart local p2    # "offsetString":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2524
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v0

    .line 2489
    .end local v2    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_3
    return-wide v0
.end method

.method private greylist-max-o parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4026
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4028
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4031
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 4032
    .local v0, "startCode":I
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4033
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4037
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 4038
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    if-ge v1, p2, :cond_4

    .line 4041
    add-int/lit8 v1, v1, -0x8

    .line 4042
    if-lez v1, :cond_3

    .line 4043
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 4044
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4047
    :cond_3
    :goto_1
    return-void

    .line 4039
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o printAttributes()V
    .locals 7

    .line 2084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2087
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2088
    .local v4, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2089
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2088
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 2084
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2092
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4006
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 4007
    .local v0, "byteOrder":S
    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_0

    .line 4019
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4014
    :sswitch_0
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4015
    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 4009
    :sswitch_1
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 4010
    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_1
        0x4d4d -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o readExifSegment([BI)V
    .locals 2
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3966
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 3970
    .local v0, "dataInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3973
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 3974
    return-void
.end method

.method private greylist-max-o readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 29
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4053
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4055
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v3, v5, :cond_0

    .line 4057
    return-void

    .line 4060
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 4061
    .local v3, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v5, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    if-gt v5, v6, :cond_2b

    if-gtz v3, :cond_1

    move/from16 v23, v3

    goto/16 :goto_f

    .line 4067
    :cond_1
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_2

    .line 4068
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":S
    :goto_0
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-ge v5, v3, :cond_25

    .line 4073
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 4075
    .local v13, "tagNumber":I
    const/16 v14, 0x100

    if-ne v13, v14, :cond_3

    .line 4076
    iput-boolean v11, v0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    goto :goto_1

    .line 4077
    :cond_3
    const/16 v14, 0x101

    if-ne v13, v14, :cond_4

    .line 4078
    iput-boolean v11, v0, Landroid/media/ExifInterface;->mExifHasLength:Z

    goto :goto_1

    .line 4079
    :cond_4
    const/16 v14, 0x112

    if-ne v13, v14, :cond_5

    .line 4080
    iput-boolean v11, v0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    .line 4083
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v14

    .line 4084
    .local v14, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v15

    .line 4086
    .local v15, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v16

    add-int/lit8 v9, v16, 0x4

    int-to-long v9, v9

    .line 4089
    .local v9, "nextEntryOffset":J
    sget-object v16, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v16, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifTag;

    .line 4091
    .local v4, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_7

    .line 4092
    new-array v7, v7, [Ljava/lang/Object;

    .line 4093
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v7, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x1

    aput-object v20, v7, v16

    .line 4094
    if-eqz v4, :cond_6

    iget-object v8, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    const/16 v21, 0x2

    aput-object v8, v7, v21

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x4

    aput-object v8, v7, v19

    .line 4092
    const-string v8, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    :cond_7
    const-wide/16 v7, 0x0

    .line 4098
    .local v7, "byteCount":J
    const/16 v21, 0x0

    .line 4099
    .local v21, "valid":Z
    if-nez v4, :cond_9

    .line 4100
    if-eqz v12, :cond_8

    .line 4101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .local v23, "numberOfDirectoryEntry":S
    const-string v3, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v24, v7

    goto :goto_5

    .line 4100
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_8
    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    move-wide/from16 v24, v7

    goto :goto_5

    .line 4103
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_9
    move/from16 v23, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    if-lez v14, :cond_e

    sget-object v3, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v3

    if-lt v14, v11, :cond_a

    move-wide/from16 v24, v7

    goto :goto_4

    .line 4108
    :cond_a
    move-wide/from16 v24, v7

    .end local v7    # "byteCount":J
    .local v24, "byteCount":J
    int-to-long v7, v15

    aget v3, v3, v14

    int-to-long v2, v3

    mul-long/2addr v7, v2

    .line 4109
    .end local v24    # "byteCount":J
    .restart local v7    # "byteCount":J
    const-wide/16 v2, 0x0

    cmp-long v11, v7, v2

    if-ltz v11, :cond_c

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v7, v2

    if-lez v2, :cond_b

    goto :goto_3

    .line 4115
    :cond_b
    const/16 v21, 0x1

    move/from16 v2, v21

    goto :goto_6

    .line 4110
    :cond_c
    :goto_3
    if-eqz v12, :cond_d

    .line 4111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_d
    move/from16 v2, v21

    goto :goto_6

    .line 4103
    :cond_e
    move-wide/from16 v24, v7

    .line 4104
    .end local v7    # "byteCount":J
    .restart local v24    # "byteCount":J
    :goto_4
    if-eqz v12, :cond_f

    .line 4105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    .end local v24    # "byteCount":J
    .restart local v7    # "byteCount":J
    :cond_f
    :goto_5
    move/from16 v2, v21

    move-wide/from16 v7, v24

    .end local v21    # "valid":Z
    .local v2, "valid":Z
    :goto_6
    if-nez v2, :cond_10

    .line 4119
    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4120
    move/from16 v25, v5

    goto/16 :goto_d

    .line 4125
    :cond_10
    const-wide/16 v24, 0x4

    cmp-long v3, v7, v24

    const-string v11, "Compression"

    if-lez v3, :cond_18

    .line 4126
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    .line 4127
    .local v3, "offset":I
    if-eqz v12, :cond_11

    .line 4128
    move/from16 v24, v2

    .end local v2    # "valid":Z
    .local v24, "valid":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v5

    .end local v5    # "i":S
    .local v25, "i":S
    const-string v5, "seek to data offset: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4127
    .end local v24    # "valid":Z
    .end local v25    # "i":S
    .restart local v2    # "valid":Z
    .restart local v5    # "i":S
    :cond_11
    move/from16 v24, v2

    move/from16 v25, v5

    .line 4130
    .end local v2    # "valid":Z
    .end local v5    # "i":S
    .restart local v24    # "valid":Z
    .restart local v25    # "i":S
    :goto_7
    iget v2, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_14

    .line 4131
    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "MakerNote"

    if-ne v2, v5, :cond_12

    .line 4133
    iput v3, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v21, v15

    goto :goto_8

    .line 4134
    :cond_12
    const/4 v2, 0x6

    move/from16 v5, p2

    if-ne v5, v2, :cond_13

    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "ThumbnailImage"

    if-ne v2, v5, :cond_13

    .line 4137
    iput v3, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 4138
    iput v15, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 4140
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4141
    const/4 v5, 0x6

    invoke-static {v5, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 4142
    .local v2, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v5, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v26, v14

    move/from16 v21, v15

    .end local v14    # "dataFormat":I
    .end local v15    # "numberOfComponents":I
    .local v21, "numberOfComponents":I
    .local v26, "dataFormat":I
    int-to-long v14, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4143
    invoke-static {v14, v15, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4144
    .local v5, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move/from16 v27, v13

    .end local v13    # "tagNumber":I
    .local v27, "tagNumber":I
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4145
    invoke-static {v14, v15, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4147
    .local v13, "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v14, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormatLength"

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    .end local v2    # "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v13    # "jpegInterchangeFormatLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_8

    .line 4134
    .end local v21    # "numberOfComponents":I
    .end local v26    # "dataFormat":I
    .end local v27    # "tagNumber":I
    .local v13, "tagNumber":I
    .restart local v14    # "dataFormat":I
    .restart local v15    # "numberOfComponents":I
    :cond_13
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v21, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "dataFormat":I
    .end local v15    # "numberOfComponents":I
    .restart local v21    # "numberOfComponents":I
    .restart local v26    # "dataFormat":I
    .restart local v27    # "tagNumber":I
    goto :goto_8

    .line 4153
    .end local v21    # "numberOfComponents":I
    .end local v26    # "dataFormat":I
    .end local v27    # "tagNumber":I
    .restart local v13    # "tagNumber":I
    .restart local v14    # "dataFormat":I
    .restart local v15    # "numberOfComponents":I
    :cond_14
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v21, v15

    .end local v13    # "tagNumber":I
    .end local v14    # "dataFormat":I
    .end local v15    # "numberOfComponents":I
    .restart local v21    # "numberOfComponents":I
    .restart local v26    # "dataFormat":I
    .restart local v27    # "tagNumber":I
    const/16 v5, 0xa

    if-ne v2, v5, :cond_15

    .line 4154
    iget-object v2, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "JpgFromRaw"

    if-ne v2, v5, :cond_15

    .line 4155
    iput v3, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 4158
    :cond_15
    :goto_8
    int-to-long v13, v3

    add-long/2addr v13, v7

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v2

    move-object/from16 v28, v4

    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v28, "tag":Landroid/media/ExifInterface$ExifTag;
    int-to-long v4, v2

    cmp-long v2, v13, v4

    if-gtz v2, :cond_16

    .line 4159
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_9

    .line 4162
    :cond_16
    if-eqz v12, :cond_17

    .line 4163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    :cond_17
    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4166
    goto/16 :goto_d

    .line 4125
    .end local v3    # "offset":I
    .end local v21    # "numberOfComponents":I
    .end local v24    # "valid":Z
    .end local v25    # "i":S
    .end local v26    # "dataFormat":I
    .end local v27    # "tagNumber":I
    .end local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v2, "valid":Z
    .restart local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v5, "i":S
    .restart local v13    # "tagNumber":I
    .restart local v14    # "dataFormat":I
    .restart local v15    # "numberOfComponents":I
    :cond_18
    move/from16 v24, v2

    move-object/from16 v28, v4

    move/from16 v25, v5

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v21, v15

    .line 4171
    .end local v2    # "valid":Z
    .end local v4    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v5    # "i":S
    .end local v13    # "tagNumber":I
    .end local v14    # "dataFormat":I
    .end local v15    # "numberOfComponents":I
    .restart local v21    # "numberOfComponents":I
    .restart local v24    # "valid":Z
    .restart local v25    # "i":S
    .restart local v26    # "dataFormat":I
    .restart local v27    # "tagNumber":I
    .restart local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    :goto_9
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4172
    .local v2, "nextIfdType":Ljava/lang/Integer;
    if-eqz v12, :cond_19

    .line 4173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    :cond_19
    if-eqz v2, :cond_1e

    .line 4177
    const-wide/16 v3, -0x1

    .line 4179
    .local v3, "offset":J
    sparse-switch v26, :sswitch_data_0

    goto :goto_a

    .line 4194
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v3, v5

    .line 4195
    goto :goto_a

    .line 4185
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    int-to-long v3, v5

    .line 4186
    goto :goto_a

    .line 4189
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 4190
    goto :goto_a

    .line 4181
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v3, v5

    .line 4182
    nop

    .line 4202
    :goto_a
    if-eqz v12, :cond_1a

    .line 4203
    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    move-object/from16 v13, v28

    .end local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    .local v13, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v11, v15

    const-string v14, "Offset: %d, tagName: %s"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4202
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_1a
    move-object/from16 v13, v28

    const/4 v5, 0x2

    .line 4209
    .end local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    :goto_b
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-lez v11, :cond_1c

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v11

    int-to-long v14, v11

    cmp-long v11, v3, v14

    if-gez v11, :cond_1c

    .line 4210
    iget-object v11, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    long-to-int v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 4211
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4212
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v0, v1, v11}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_c

    .line 4214
    :cond_1b
    if-eqz v12, :cond_1d

    .line 4215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4220
    :cond_1c
    if-eqz v12, :cond_1d

    .line 4221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_1d
    :goto_c
    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4226
    goto/16 :goto_d

    .line 4229
    .end local v3    # "offset":J
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_1e
    move-object/from16 v13, v28

    const/4 v5, 0x2

    .end local v28    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    iget v4, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v3, v4

    .line 4230
    .local v3, "bytesOffset":I
    long-to-int v4, v7

    new-array v4, v4, [B

    .line 4231
    .local v4, "bytes":[B
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 4232
    new-instance v12, Landroid/media/ExifInterface$ExifAttribute;

    int-to-long v14, v3

    const/16 v22, 0x0

    move-wide/from16 v18, v14

    move/from16 v14, v21

    .end local v21    # "numberOfComponents":I
    .local v14, "numberOfComponents":I
    move-object v15, v12

    move/from16 v16, v26

    move/from16 v17, v14

    move-object/from16 v20, v4

    move-object/from16 v21, v22

    invoke-direct/range {v15 .. v21}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    .line 4234
    .local v12, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, p2

    iget-object v5, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v15, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4239
    iget-object v5, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "DNGVersion"

    if-ne v5, v15, :cond_1f

    .line 4240
    const/4 v5, 0x3

    iput v5, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4246
    :cond_1f
    iget-object v5, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Make"

    if-eq v5, v15, :cond_20

    iget-object v5, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Model"

    if-ne v5, v15, :cond_21

    :cond_20
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4247
    invoke-virtual {v12, v5}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "PENTAX"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    :cond_21
    iget-object v5, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    if-ne v5, v11, :cond_23

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4249
    invoke-virtual {v12, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    const v11, 0xffff

    if-ne v5, v11, :cond_23

    .line 4250
    :cond_22
    const/16 v5, 0x8

    iput v5, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 4254
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v5

    move-object v11, v2

    move v15, v3

    .end local v2    # "nextIfdType":Ljava/lang/Integer;
    .end local v3    # "bytesOffset":I
    .local v11, "nextIfdType":Ljava/lang/Integer;
    .local v15, "bytesOffset":I
    int-to-long v2, v5

    cmp-long v2, v2, v9

    if-eqz v2, :cond_24

    .line 4255
    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4072
    .end local v4    # "bytes":[B
    .end local v7    # "byteCount":J
    .end local v9    # "nextEntryOffset":J
    .end local v11    # "nextIfdType":Ljava/lang/Integer;
    .end local v12    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v13    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v14    # "numberOfComponents":I
    .end local v15    # "bytesOffset":I
    .end local v24    # "valid":Z
    .end local v26    # "dataFormat":I
    .end local v27    # "tagNumber":I
    :cond_24
    :goto_d
    add-int/lit8 v5, v25, 0x1

    int-to-short v5, v5

    move/from16 v2, p2

    move/from16 v3, v23

    const/4 v4, 0x2

    .end local v25    # "i":S
    .restart local v5    # "i":S
    goto/16 :goto_0

    .end local v23    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    :cond_25
    move/from16 v23, v3

    move/from16 v25, v5

    .line 4259
    .end local v3    # "numberOfDirectoryEntry":S
    .end local v5    # "i":S
    .restart local v23    # "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_2a

    .line 4260
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 4261
    .local v2, "nextIfdOffset":I
    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 4262
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    :cond_26
    int-to-long v4, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_29

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_29

    .line 4268
    iget-object v4, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 4269
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4271
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4272
    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_e

    .line 4273
    :cond_27
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4274
    invoke-direct {v0, v1, v7}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_e

    .line 4277
    :cond_28
    if-eqz v3, :cond_2a

    .line 4278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4283
    :cond_29
    if-eqz v3, :cond_2a

    .line 4284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    .end local v2    # "nextIfdOffset":I
    :cond_2a
    :goto_e
    return-void

    .line 4061
    .end local v23    # "numberOfDirectoryEntry":S
    .restart local v3    # "numberOfDirectoryEntry":S
    :cond_2b
    move/from16 v23, v3

    .line 4064
    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v23    # "numberOfDirectoryEntry":S
    :goto_f
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 1975
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1976
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1978
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ifdType"    # I
    .param p2, "invalidTag"    # Ljava/lang/String;
    .param p3, "validTag"    # Ljava/lang/String;

    .line 5285
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5286
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5287
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5288
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5287
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5289
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5292
    :cond_0
    return-void
.end method

.method private greylist-max-o retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4300
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 4301
    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 4302
    .local v0, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4303
    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4305
    .local v1, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 4307
    :cond_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4308
    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4309
    .local v2, "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    .line 4310
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4311
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 4314
    .local v3, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4317
    .end local v2    # "jpegInterchangeFormatAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormat":I
    :cond_1
    return-void
.end method

.method private greylist-max-o saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3544
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3549
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3551
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 3554
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3555
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_b

    .line 3558
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3563
    const/4 v2, 0x0

    .line 3564
    .local v2, "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "Xmp"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v6, :cond_1

    .line 3565
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 3569
    :cond_1
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3570
    const/16 v6, -0x1f

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3571
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3574
    if-eqz v2, :cond_2

    .line 3575
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3578
    :cond_2
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 3581
    .local v5, "bytes":[B
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3582
    .local v6, "marker":B
    if-ne v6, v4, :cond_a

    .line 3585
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 3586
    const-string v8, "Invalid length"

    sparse-switch v6, :sswitch_data_0

    .line 3631
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3632
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3633
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 3634
    .local v9, "length":I
    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3635
    add-int/lit8 v9, v9, -0x2

    .line 3636
    if-ltz v9, :cond_9

    goto :goto_2

    .line 3588
    .end local v9    # "length":I
    :sswitch_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 3589
    .restart local v9    # "length":I
    if-ltz v9, :cond_7

    .line 3592
    const/4 v10, 0x6

    new-array v11, v10, [B

    .line 3593
    .local v11, "identifier":[B
    if-lt v9, v10, :cond_5

    .line 3594
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_4

    .line 3597
    sget-object v12, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3599
    add-int/lit8 v10, v9, -0x6

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    add-int/lit8 v12, v9, -0x6

    if-ne v10, v12, :cond_3

    goto :goto_3

    .line 3600
    :cond_3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3595
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid exif"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3606
    :cond_5
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3607
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3608
    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3609
    if-lt v9, v10, :cond_6

    .line 3610
    add-int/lit8 v9, v9, -0x6

    .line 3611
    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3614
    :cond_6
    :goto_1
    if-lez v9, :cond_8

    array-length v8, v5

    .line 3615
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3614
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .local v10, "read":I
    if-ltz v8, :cond_8

    .line 3616
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3617
    sub-int/2addr v9, v10

    goto :goto_1

    .line 3590
    .end local v10    # "read":I
    .end local v11    # "identifier":[B
    :cond_7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3623
    .end local v9    # "length":I
    :sswitch_1
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3624
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3626
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3627
    return-void

    .line 3640
    .restart local v9    # "length":I
    :goto_2
    if-lez v9, :cond_8

    array-length v8, v5

    .line 3641
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3640
    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    .restart local v10    # "read":I
    if-ltz v8, :cond_8

    .line 3642
    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 3643
    sub-int/2addr v9, v10

    goto :goto_2

    .line 3648
    .end local v6    # "marker":B
    .end local v9    # "length":I
    .end local v10    # "read":I
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 3637
    .restart local v6    # "marker":B
    .restart local v9    # "length":I
    :cond_9
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3583
    .end local v9    # "length":I
    :cond_a
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3556
    .end local v2    # "xmpAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "bytes":[B
    .end local v6    # "marker":B
    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3552
    :cond_c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_1
        -0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3653
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3661
    .local v1, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3668
    iget v3, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v4, 0x4

    if-nez v3, :cond_1

    .line 3670
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3671
    .local v2, "ihdrChunkLength":I
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3672
    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3674
    .end local v2    # "ihdrChunkLength":I
    goto :goto_0

    .line 3676
    :cond_1
    array-length v2, v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    .line 3679
    .local v3, "copyLength":I
    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3681
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 3682
    .local v2, "exifChunkLength":I
    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 3686
    .end local v2    # "exifChunkLength":I
    .end local v3    # "copyLength":I
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3689
    .local v2, "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3693
    .local v3, "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v3}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3694
    iget-object v5, v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 3695
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 3697
    .local v5, "exifBytes":[B
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3699
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 3700
    .local v6, "crc":Ljava/util/zip/CRC32;
    array-length v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v4, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3701
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3702
    .end local v3    # "exifDataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v5    # "exifBytes":[B
    .end local v6    # "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3704
    .end local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3705
    return-void

    .line 3686
    .restart local v2    # "exifByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method private blacklist saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 20
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3741
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    .line 3747
    .local v4, "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    .line 3751
    .local v5, "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v6, v0

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3753
    sget-object v6, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3756
    const/4 v7, 0x0

    .line 3758
    .local v7, "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v9

    .line 3759
    new-instance v9, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3763
    .local v9, "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    iget v10, v1, Landroid/media/ExifInterface;->mExifOffset:I

    if-eqz v10, :cond_1

    .line 3766
    array-length v0, v0

    add-int/2addr v0, v8

    array-length v6, v6

    add-int/2addr v0, v6

    .line 3768
    .local v0, "bytesRead":I
    sub-int/2addr v10, v0

    sub-int/2addr v10, v8

    sub-int/2addr v10, v8

    invoke-static {v4, v9, v10}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3773
    invoke-virtual {v4, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3774
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 3775
    .local v6, "exifChunkLength":I
    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3778
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3779
    .end local v0    # "bytesRead":I
    .end local v6    # "exifChunkLength":I
    goto/16 :goto_6

    .line 3781
    :cond_1
    new-array v0, v8, [B

    .line 3782
    .local v0, "firstChunkType":[B
    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    array-length v10, v0

    if-ne v6, v10, :cond_10

    .line 3787
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_6

    .line 3789
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 3791
    .local v10, "size":I
    rem-int/lit8 v14, v10, 0x2

    if-ne v14, v13, :cond_2

    add-int/lit8 v14, v10, 0x1

    goto :goto_0

    :cond_2
    move v14, v10

    :goto_0
    new-array v14, v14, [B

    .line 3792
    .local v14, "data":[B
    invoke-virtual {v4, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3795
    aget-byte v15, v14, v12

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v12

    .line 3798
    aget-byte v11, v14, v12

    shr-int/2addr v11, v13

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_3

    move v12, v13

    :cond_3
    move v11, v12

    .line 3801
    .local v11, "containsAnimation":Z
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3802
    invoke-virtual {v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3803
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3812
    if-eqz v11, :cond_5

    .line 3813
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const/4 v12, 0x0

    invoke-direct {v1, v4, v9, v6, v12}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3817
    :goto_1
    new-array v6, v8, [B

    .line 3818
    .local v6, "type":[B
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 3819
    .local v12, "read":I
    sget-object v13, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3821
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3822
    goto :goto_2

    .line 3824
    :cond_4
    invoke-direct {v1, v4, v9, v6}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 3825
    .end local v6    # "type":[B
    .end local v12    # "read":I
    goto :goto_1

    .line 3828
    :cond_5
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v8, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v9, v6, v8}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 3830
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3832
    .end local v10    # "size":I
    .end local v11    # "containsAnimation":Z
    .end local v14    # "data":[B
    :goto_2
    goto/16 :goto_6

    :cond_6
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_7

    sget-object v14, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3833
    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 3834
    :cond_7
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 3835
    .local v14, "size":I
    move v15, v14

    .line 3837
    .local v15, "bytesToRead":I
    rem-int/lit8 v11, v14, 0x2

    if-ne v11, v13, :cond_8

    .line 3838
    add-int/lit8 v15, v15, 0x1

    .line 3842
    :cond_8
    const/4 v11, 0x0

    .line 3843
    .local v11, "widthAndHeight":I
    const/16 v16, 0x0

    .line 3844
    .local v16, "width":I
    const/16 v17, 0x0

    .line 3845
    .local v17, "height":I
    const/16 v18, 0x0

    .line 3847
    .local v18, "alpha":I
    const/4 v12, 0x3

    new-array v13, v12, [B

    .line 3849
    .local v13, "vp8Frame":[B
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 3850
    invoke-virtual {v4, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 3853
    new-array v12, v12, [B

    .line 3854
    .local v12, "vp8Signature":[B
    invoke-virtual {v4, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    array-length v2, v12

    if-ne v8, v2, :cond_9

    sget-object v2, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3855
    invoke-static {v2, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3861
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    .line 3862
    shl-int/lit8 v2, v11, 0x12

    shr-int/lit8 v16, v2, 0x12

    .line 3863
    shl-int/lit8 v2, v11, 0x2

    shr-int/lit8 v17, v2, 0x12

    .line 3864
    array-length v2, v13

    array-length v8, v12

    add-int/2addr v2, v8

    const/4 v8, 0x4

    add-int/2addr v2, v8

    sub-int/2addr v15, v2

    .end local v12    # "vp8Signature":[B
    goto :goto_3

    .line 3856
    .restart local v12    # "vp8Signature":[B
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Encountered error while checking VP8 signature"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2

    .line 3865
    .end local v12    # "vp8Signature":[B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_a
    sget-object v2, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3867
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    .line 3868
    .local v2, "vp8lSignature":B
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_b

    .line 3874
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move v11, v8

    .line 3877
    shl-int/lit8 v8, v11, 0x12

    shr-int/lit8 v8, v8, 0x12

    const/4 v12, 0x1

    add-int/lit8 v16, v8, 0x1

    .line 3878
    shl-int/lit8 v8, v11, 0x4

    shr-int/lit8 v8, v8, 0x12

    add-int/lit8 v17, v8, 0x1

    .line 3880
    and-int/lit8 v18, v11, 0x8

    .line 3881
    add-int/lit8 v15, v15, -0x5

    goto :goto_4

    .line 3869
    :cond_b
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Encountered error while checking VP8L signature"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v6

    .line 3865
    .end local v2    # "vp8lSignature":B
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :cond_c
    :goto_3
    nop

    .line 3885
    :goto_4
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3886
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3887
    new-array v2, v2, [B

    .line 3889
    .local v2, "data":[B
    const/4 v6, 0x0

    aget-byte v8, v2, v6

    const/16 v12, 0x8

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3891
    aget-byte v8, v2, v6

    shl-int/lit8 v12, v18, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 3893
    add-int/lit8 v6, v16, -0x1

    .line 3894
    .end local v16    # "width":I
    .local v6, "width":I
    add-int/lit8 v8, v17, -0x1

    .line 3895
    .end local v17    # "height":I
    .local v8, "height":I
    int-to-byte v12, v6

    const/16 v16, 0x4

    aput-byte v12, v2, v16

    .line 3896
    const/4 v12, 0x5

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    .line 3897
    const/4 v3, 0x6

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3898
    const/4 v3, 0x7

    int-to-byte v12, v8

    aput-byte v12, v2, v3

    .line 3899
    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    const/16 v12, 0x8

    aput-byte v3, v2, v12

    .line 3900
    const/16 v3, 0x9

    shr-int/lit8 v12, v8, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 3901
    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3904
    invoke-virtual {v9, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3905
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3906
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3907
    invoke-virtual {v9, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3908
    sget-object v3, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3909
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 3910
    :cond_d
    sget-object v3, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3911
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 3912
    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3914
    :cond_e
    :goto_5
    invoke-static {v4, v9, v15}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3917
    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 3922
    .end local v0    # "firstChunkType":[B
    .end local v2    # "data":[B
    .end local v6    # "width":I
    .end local v8    # "height":I
    .end local v11    # "widthAndHeight":I
    .end local v13    # "vp8Frame":[B
    .end local v14    # "size":I
    .end local v15    # "bytesToRead":I
    .end local v18    # "alpha":I
    :cond_f
    :goto_6
    invoke-static {v4, v9}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3925
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 3927
    invoke-virtual {v5, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3928
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3932
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3933
    nop

    .line 3934
    return-void

    .line 3783
    .restart local v0    # "firstChunkType":[B
    .restart local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_10
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3932
    .end local v0    # "firstChunkType":[B
    .end local v9    # "nonHeaderOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 3929
    :catch_0
    move-exception v0

    .line 3930
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .end local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "outputStream":Ljava/io/OutputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3932
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalInputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v5    # "totalOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .restart local v7    # "nonHeaderByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "outputStream":Ljava/io/OutputStream;
    :goto_7
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3933
    throw v0
.end method

.method private greylist-max-o setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4321
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 4323
    .local v0, "thumbnailData":Ljava/util/HashMap;
    nop

    .line 4324
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4325
    .local v1, "compressionAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 4326
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 4327
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 4329
    :sswitch_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4330
    goto :goto_0

    .line 4334
    :sswitch_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4335
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    goto :goto_1

    .line 4342
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 4344
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private greylist-max-o swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5245
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5252
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 5253
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 5254
    .local v0, "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 5255
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 5256
    .local v3, "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5257
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 5258
    .local v2, "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 5259
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 5261
    .local v4, "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 5265
    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 5270
    :cond_2
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5271
    .local v1, "firstImageLengthValue":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 5272
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 5273
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 5275
    .local v7, "secondImageWidthValue":I
    if-ge v1, v6, :cond_5

    if-ge v5, v7, :cond_5

    .line 5277
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v8, p1

    .line 5278
    .local v9, "tempMap":Ljava/util/HashMap;
    aget-object v10, v8, p2

    aput-object v10, v8, p1

    .line 5279
    aput-object v9, v8, p2

    goto :goto_2

    .line 5266
    .end local v1    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v9    # "tempMap":Ljava/util/HashMap;
    :cond_3
    :goto_0
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 5267
    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5262
    :cond_4
    :goto_1
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 5263
    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    :cond_5
    :goto_2
    return-void

    .line 5246
    .end local v0    # "firstImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "firstImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v4    # "secondImageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_6
    :goto_3
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 5247
    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    :cond_7
    return-void
.end method

.method private greylist-max-o updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .line 1959
    const/4 v0, 0x0

    .line 1960
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1961
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    const/4 v0, 0x1

    .line 1960
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1966
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private greylist-max-o updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 17
    .param p1, "in"    # Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4575
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 4576
    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 4578
    .local v1, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    .line 4579
    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 4580
    .local v2, "topBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    .line 4581
    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4582
    .local v3, "leftBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 4583
    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4584
    .local v4, "bottomBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 4585
    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 4587
    .local v5, "rightBorderAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_1

    .line 4590
    iget v8, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_0

    .line 4591
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4592
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/media/ExifInterface$Rational;

    .line 4593
    .local v8, "defaultCropSizeValue":[Landroid/media/ExifInterface$Rational;
    aget-object v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4594
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4595
    .local v9, "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget-object v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4596
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4597
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    goto :goto_0

    .line 4598
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_0
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4599
    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 4600
    .local v8, "defaultCropSizeValue":[I
    aget v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4601
    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4602
    .restart local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    aget v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4603
    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    .line 4605
    .local v8, "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_0
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4606
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4607
    .end local v8    # "defaultCropSizeYAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v9    # "defaultCropSizeXAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 4610
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 4611
    .local v8, "topBorderValue":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 4612
    .local v9, "bottomBorderValue":I
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    .line 4613
    .local v10, "rightBorderValue":I
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    .line 4614
    .local v11, "leftBorderValue":I
    if-le v9, v8, :cond_2

    if-le v10, v11, :cond_2

    .line 4615
    sub-int v12, v9, v8

    .line 4616
    .local v12, "length":I
    sub-int v13, v10, v11

    .line 4617
    .local v13, "width":I
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4618
    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4619
    .local v14, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4620
    invoke-static {v13, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4621
    .local v15, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v16, v1

    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4622
    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4614
    .end local v12    # "length":I
    .end local v13    # "width":I
    .end local v14    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_2
    move-object/from16 v16, v1

    .line 4624
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v8    # "topBorderValue":I
    .end local v9    # "bottomBorderValue":I
    .end local v10    # "rightBorderValue":I
    .end local v11    # "leftBorderValue":I
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :goto_1
    goto :goto_2

    .line 4607
    .end local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_3
    move-object/from16 v16, v1

    .line 4625
    .end local v1    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "defaultCropSizeAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4627
    :goto_2
    return-void
.end method

.method private blacklist validateImages()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4519
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4520
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4521
    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4527
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 4528
    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 4529
    .local v3, "pixelXDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 4530
    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 4531
    .local v4, "pixelYDimAttribute":Landroid/media/ExifInterface$ExifAttribute;
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 4532
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4533
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4538
    :cond_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4539
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4540
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v7, v1

    aput-object v8, v7, v2

    .line 4541
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    .line 4546
    :cond_1
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4547
    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    :cond_2
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4552
    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4553
    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4554
    invoke-direct {p0, v1, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4555
    invoke-direct {p0, v1, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4556
    invoke-direct {p0, v1, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4557
    invoke-direct {p0, v2, v8, v7}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4558
    invoke-direct {p0, v2, v5, v9}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4559
    invoke-direct {p0, v2, v6, v10}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 4560
    return-void
.end method

.method private blacklist writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 17
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4632
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 4633
    .local v3, "ifdOffsets":[I
    array-length v2, v2

    new-array v2, v2, [I

    .line 4636
    .local v2, "ifdDataSizes":[I
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 4637
    .local v8, "tag":Landroid/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4636
    .end local v8    # "tag":Landroid/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4640
    :cond_0
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_2

    .line 4641
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_1

    .line 4642
    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4643
    invoke-direct {v0, v5}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_1

    .line 4645
    :cond_1
    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4646
    invoke-direct {v0, v7}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 4651
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "ifdType":I
    :goto_2
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 4652
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 4653
    .local v13, "obj":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/util/Map$Entry;

    .line 4654
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 4655
    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4652
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "entry":Ljava/util/Map$Entry;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4651
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4662
    .end local v4    # "ifdType":I
    :cond_5
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v10, 0x0

    if-nez v4, :cond_6

    .line 4663
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4664
    invoke-static {v10, v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 4663
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4666
    :cond_6
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x2

    aget-object v4, v4, v12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4667
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v12

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4668
    invoke-static {v10, v11, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 4667
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4670
    :cond_7
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4671
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4672
    invoke-static {v10, v11, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    .line 4671
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4674
    :cond_8
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v14, 0x4

    if-eqz v4, :cond_a

    .line 4675
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_9

    .line 4676
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4677
    const/4 v15, 0x0

    invoke-static {v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4676
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4678
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4679
    invoke-static {v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 4678
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4681
    :cond_9
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4682
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4681
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4683
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v5, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v10, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4684
    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 4683
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4690
    :cond_a
    :goto_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 4691
    const/4 v5, 0x0

    .line 4692
    .local v5, "sum":I
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4693
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    .line 4694
    .local v11, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v11}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    .line 4695
    .local v15, "size":I
    if-le v15, v14, :cond_b

    .line 4696
    add-int/2addr v5, v15

    .line 4698
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "size":I
    :cond_b
    goto :goto_6

    .line 4699
    :cond_c
    aget v7, v2, v4

    add-int/2addr v7, v5

    aput v7, v2, v4

    .line 4690
    .end local v5    # "sum":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4705
    .end local v4    # "i":I
    :cond_d
    const/16 v4, 0x8

    .line 4706
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "ifdType":I
    :goto_7
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 4707
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 4708
    aput v4, v3, v5

    .line 4709
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v12

    add-int/2addr v7, v14

    aget v10, v2, v5

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 4706
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 4712
    .end local v5    # "ifdType":I
    :cond_f
    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_11

    .line 4713
    move v5, v4

    .line 4714
    .local v5, "thumbnailOffset":I
    iget-boolean v7, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_10

    .line 4715
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4716
    invoke-static {v5, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4715
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4718
    :cond_10
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    int-to-long v10, v5

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4719
    invoke-static {v10, v11, v8}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 4718
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4722
    :goto_8
    iget v7, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v5

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 4723
    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 4726
    .end local v5    # "thumbnailOffset":I
    :cond_11
    move v5, v4

    .line 4727
    .local v5, "totalSize":I
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_12

    .line 4729
    add-int/lit8 v5, v5, 0x8

    .line 4731
    :cond_12
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_13

    .line 4732
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_13

    .line 4733
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 4734
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aget v9, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    aget v9, v2, v7

    .line 4735
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    .line 4733
    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 4740
    .end local v7    # "i":I
    :cond_13
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 4741
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v6

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4742
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4741
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4744
    :cond_14
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 4745
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v12

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4746
    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4745
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4748
    :cond_15
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    .line 4749
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v13

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v13

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4753
    :cond_16
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_a

    .line 4766
    :sswitch_0
    sget-object v7, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4767
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_a

    .line 4761
    :sswitch_1
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4762
    sget-object v7, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4763
    goto :goto_a

    .line 4756
    :sswitch_2
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4757
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4758
    nop

    .line 4772
    :goto_a
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_17

    .line 4773
    const/16 v7, 0x4d4d

    goto :goto_b

    :cond_17
    const/16 v7, 0x4949

    .line 4772
    :goto_b
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 4774
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4775
    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4776
    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4779
    const/4 v7, 0x0

    .local v7, "ifdType":I
    :goto_c
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_1f

    .line 4780
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 4783
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4786
    aget v8, v3, v7

    add-int/2addr v8, v12

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    .line 4787
    .local v8, "dataOffset":I
    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4789
    .restart local v10    # "entry":Ljava/util/Map$Entry;
    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    .line 4790
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifTag;

    .line 4791
    .local v11, "tag":Landroid/media/ExifInterface$ExifTag;
    iget v13, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 4792
    .local v13, "tagNumber":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    .line 4793
    .local v15, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v12

    .line 4795
    .local v12, "size":I
    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4796
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 4797
    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 4798
    if-le v12, v14, :cond_18

    .line 4799
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v16, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    int-to-long v14, v8

    invoke-virtual {v1, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4800
    add-int/2addr v8, v12

    goto :goto_f

    .line 4802
    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_18
    move-object/from16 v16, v15

    .end local v15    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    move-object/from16 v14, v16

    .end local v16    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .local v14, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v15, v14, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4804
    const/4 v6, 0x4

    if-ge v12, v6, :cond_19

    .line 4805
    move v15, v12

    .local v15, "i":I
    :goto_e
    if-ge v15, v6, :cond_19

    .line 4806
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4805
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    goto :goto_e

    .line 4810
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v12    # "size":I
    .end local v13    # "tagNumber":I
    .end local v14    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v15    # "i":I
    :cond_19
    :goto_f
    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto :goto_d

    .line 4815
    :cond_1a
    if-nez v7, :cond_1b

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 4816
    aget v10, v3, v9

    int-to-long v9, v10

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v9, 0x0

    goto :goto_10

    .line 4818
    :cond_1b
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 4822
    :goto_10
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4823
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    .line 4825
    .local v13, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v6, 0x4

    if-le v14, v6, :cond_1c

    .line 4826
    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 4828
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1c
    goto :goto_11

    .line 4780
    .end local v8    # "dataOffset":I
    :cond_1d
    const-wide/16 v9, 0x0

    .line 4779
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto/16 :goto_c

    .line 4833
    .end local v7    # "ifdType":I
    :cond_1f
    iget-boolean v6, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_20

    .line 4834
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 4838
    :cond_20
    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_21

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 4839
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4843
    :cond_21
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4845
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getAltitude(D)D
    .locals 6
    .param p1, "defaultValue"    # D

    .line 2449
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2450
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 2452
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 2453
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 2455
    :cond_1
    return-wide p1
.end method

.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 1705
    if-eqz p1, :cond_8

    .line 1708
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1709
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1710
    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1712
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_2

    .line 1713
    const-string v1, "ImageLength"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mExifHasLength:Z

    if-nez v1, :cond_2

    .line 1715
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1717
    :cond_0
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1718
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mExifHasWidth:Z

    if-nez v1, :cond_2

    .line 1719
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1721
    :cond_1
    const-string v1, "Orientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1722
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mExifHasOrientation:Z

    if-nez v1, :cond_2

    .line 1723
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1728
    :cond_2
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1730
    :cond_3
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1732
    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    .line 1734
    return-object v1

    .line 1736
    :cond_4
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    .line 1737
    .local v2, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 1738
    return-object v1

    .line 1740
    :cond_5
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1741
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1742
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1743
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1740
    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1746
    .end local v2    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_6
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1747
    :catch_0
    move-exception v2

    .line 1748
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 1751
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    return-object v1

    .line 1706
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 2407
    if-eqz p1, :cond_1

    .line 2410
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2411
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 2412
    iget-object v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    .line 2414
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2408
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1787
    if-eqz p1, :cond_1

    .line 1790
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1791
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 1792
    return-wide p2

    .line 1796
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2

    .line 1788
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1763
    if-eqz p1, :cond_1

    .line 1766
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 1767
    .local v0, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 1768
    return p2

    .line 1772
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1773
    :catch_0
    move-exception v1

    .line 1774
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 1764
    .end local v0    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeRange(Ljava/lang/String;)[J
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 2383
    if-eqz p1, :cond_2

    .line 2386
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 2391
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2392
    .local v0, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 2393
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    return-object v1

    .line 2395
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2387
    .end local v0    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2384
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDateTime()J
    .locals 3

    .line 2463
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2465
    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2463
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeDigitized()J
    .locals 3

    .line 2472
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2473
    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2474
    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2472
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTimeOriginal()J
    .locals 3

    .line 2481
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2482
    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2483
    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2481
    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGpsDateTime()J
    .locals 8

    .line 2533
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2534
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2535
    .local v1, "time":Ljava/lang/String;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2536
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2537
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 2541
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2543
    .local v4, "dateTimeString":Ljava/lang/String;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2546
    .local v5, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    :try_start_1
    sget-object v7, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 2548
    .local v7, "datetime":Ljava/util/Date;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2549
    if-nez v7, :cond_1

    return-wide v2

    .line 2550
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v2

    .line 2548
    .end local v7    # "datetime":Ljava/util/Date;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "time":Ljava/lang/String;
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2551
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "time":Ljava/lang/String;
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catch_0
    move-exception v6

    .line 2552
    .local v6, "e":Ljava/lang/RuntimeException;
    return-wide v2

    .line 2538
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public whitelist getLatLong([F)Z
    .locals 7
    .param p1, "output"    # [F

    .line 2424
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2426
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2427
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2429
    .local v3, "lngRef":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2431
    :try_start_0
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    .line 2432
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    return v6

    .line 2434
    :catch_0
    move-exception v5

    .line 2439
    :cond_0
    return v4
.end method

.method public whitelist getThumbnail()[B
    .locals 2

    .line 2233
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2236
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2234
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 2301
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2302
    return-object v1

    .line 2303
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 2304
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2307
    :cond_1
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 2309
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2310
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 2311
    .local v0, "rgbValues":[I
    const/4 v3, 0x0

    .line 2312
    .local v3, "alpha":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 2313
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    add-int/2addr v6, v5

    aput v6, v0, v4

    .line 2312
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2317
    .end local v4    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    .line 2318
    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 2319
    .local v2, "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    .line 2320
    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 2321
    .local v4, "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 2322
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 2323
    .local v1, "imageLength":I
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 2324
    .local v5, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 2328
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v3    # "alpha":B
    .end local v4    # "imageWidthAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v5    # "imageWidth":I
    :cond_4
    return-object v1

    .line 2308
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnailBytes()[B
    .locals 8

    .line 2244
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2245
    return-object v2

    .line 2247
    :cond_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    .line 2248
    return-object v1

    .line 2252
    :cond_1
    const/4 v1, 0x0

    .line 2253
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2255
    .local v3, "newFileDescriptor":Ljava/io/FileDescriptor;
    :try_start_0
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_4

    .line 2256
    move-object v1, v4

    .line 2257
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2258
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 2260
    :cond_2
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    nop

    .line 2288
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2289
    if-eqz v3, :cond_3

    .line 2290
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2261
    :cond_3
    return-object v2

    .line 2263
    :cond_4
    :try_start_1
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2264
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    .line 2265
    :cond_5
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_6

    .line 2266
    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 2267
    const-wide/16 v4, 0x0

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2268
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    .line 2270
    :cond_6
    :goto_0
    if-eqz v1, :cond_a

    .line 2274
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_9

    .line 2278
    :try_start_2
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 2279
    .local v4, "buffer":[B
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_8

    .line 2282
    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2283
    nop

    .line 2288
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2289
    if-eqz v3, :cond_7

    .line 2290
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2283
    :cond_7
    return-object v4

    .line 2280
    :cond_8
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v6

    .line 2275
    .end local v4    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_9
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4

    .line 2272
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_a
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2288
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "newFileDescriptor":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2284
    :catch_0
    move-exception v4

    .line 2286
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2288
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2289
    if-eqz v3, :cond_b

    .line 2290
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2293
    :cond_b
    return-object v2

    .line 2288
    :goto_1
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2289
    if-eqz v3, :cond_c

    .line 2290
    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2292
    :cond_c
    throw v0
.end method

.method public whitelist getThumbnailRange()[J
    .locals 4

    .line 2358
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 2363
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2364
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    .line 2365
    return-object v1

    .line 2367
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0

    .line 2369
    :cond_1
    return-object v1

    .line 2359
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 2223
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasThumbnail()Z
    .locals 1

    .line 2214
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public whitelist isThumbnailCompressed()Z
    .locals 3

    .line 2336
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2337
    return v1

    .line 2339
    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2342
    :cond_1
    return v1

    .line 2340
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2115
    invoke-direct {p0}, Landroid/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2119
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2123
    :cond_0
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2124
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2130
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    .line 2133
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2135
    const/4 v0, 0x0

    .line 2136
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2137
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2140
    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "temp"

    const-string/jumbo v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 2141
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    .line 2142
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 2143
    :cond_3
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_4

    .line 2144
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2145
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    .line 2147
    :cond_4
    :goto_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 2148
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2152
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2153
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2154
    nop

    .line 2156
    const/4 v0, 0x0

    .line 2157
    const/4 v1, 0x0

    .line 2160
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 2161
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 2162
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_2

    .line 2163
    :cond_5
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_6

    .line 2164
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2165
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 2167
    :cond_6
    :goto_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2168
    .local v3, "bufferedIn":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2169
    .local v6, "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_3
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 2170
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2171
    :cond_7
    const/16 v8, 0xd

    if-ne v7, v8, :cond_8

    .line 2172
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2173
    :cond_8
    const/16 v8, 0xe

    if-ne v7, v8, :cond_9

    .line 2174
    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2175
    :cond_9
    const/4 v8, 0x3

    if-eq v7, v8, :cond_a

    if-nez v7, :cond_b

    .line 2176
    :cond_a
    new-instance v7, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v6, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 2178
    .local v7, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2180
    .end local v7    # "dataOutputStream":Landroid/media/ExifInterface$ByteOrderedDataOutputStream;
    :cond_b
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2201
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2202
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2203
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2204
    nop

    .line 2207
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 2208
    return-void

    .line 2167
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_4
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v6    # "bufferedOut":Ljava/io/BufferedOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    :goto_5
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2201
    .end local v3    # "bufferedIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :catchall_4
    move-exception v3

    goto :goto_7

    .line 2181
    :catch_0
    move-exception v3

    .line 2183
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 2184
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 2186
    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v6, :cond_d

    .line 2188
    :try_start_b
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2193
    nop

    .line 2194
    :try_start_c
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    goto :goto_6

    .line 2189
    :catch_1
    move-exception v4

    .line 2190
    .local v4, "exception":Landroid/system/ErrnoException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v5

    .line 2185
    .end local v4    # "exception":Landroid/system/ErrnoException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :cond_c
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2196
    :cond_d
    :goto_6
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2197
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2198
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2199
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2201
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_7
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2202
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2203
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2204
    throw v3

    .line 2152
    :catchall_5
    move-exception v3

    goto :goto_8

    .line 2149
    :catch_2
    move-exception v3

    .line 2150
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_d
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to copy original file to temp file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local p0    # "this":Landroid/media/ExifInterface;
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 2152
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "tempFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/media/ExifInterface;
    :goto_8
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2153
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2154
    throw v3

    .line 2120
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, WebP, and DNG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1809
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_17

    .line 1813
    const/4 v0, 0x2

    const-string v4, "ExifInterface"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1814
    const-string v6, "GPSTimeStamp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_1

    .line 1815
    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1816
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return-void

    .line 1820
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    .line 1821
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1822
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 1824
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 1825
    .local v9, "doubleValue":D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v11, v9

    double-to-long v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "/10000"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 1829
    .end local v9    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1826
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void

    .line 1833
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_16

    .line 1834
    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_3

    .line 1835
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1837
    :cond_3
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1838
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_14

    .line 1839
    if-nez v3, :cond_4

    .line 1840
    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1843
    :cond_4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 1844
    .local v8, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 1846
    .local v9, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_d

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_5

    goto/16 :goto_5

    .line 1848
    :cond_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_6

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1849
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_7

    .line 1850
    :cond_6
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .local v10, "dataFormat":I
    goto/16 :goto_6

    .line 1851
    .end local v10    # "dataFormat":I
    :cond_7
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_c

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_c

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_8

    goto/16 :goto_4

    .line 1856
    :cond_8
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 1857
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v12, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1860
    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v11, :cond_9

    move-object v0, v14

    goto :goto_2

    .line 1861
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v0, v12, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " (guess: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 1862
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v12, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_a

    goto :goto_3

    .line 1863
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1857
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1856
    :cond_b
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1854
    :cond_c
    :goto_4
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v10    # "dataFormat":I
    goto :goto_6

    .line 1847
    .end local v10    # "dataFormat":I
    :cond_d
    :goto_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1867
    .restart local v10    # "dataFormat":I
    :goto_6
    const/4 v0, 0x0

    const-string v11, "/"

    const-string v12, ","

    packed-switch v10, :pswitch_data_0

    .line 1942
    :pswitch_0
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v23, "obj":Ljava/lang/Object;
    .local v24, "i":I
    .local v25, "exifTag":Landroid/media/ExifInterface$ExifTag;
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1932
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_1
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "values":[Ljava/lang/String;
    array-length v11, v0

    new-array v11, v11, [D

    .line 1934
    .local v11, "doubleArray":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    array-length v13, v0

    if-ge v12, v13, :cond_e

    .line 1935
    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 1934
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1937
    .end local v12    # "j":I
    :cond_e
    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1938
    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 1937
    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_d

    .line 1920
    .end local v0    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1921
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v12

    new-array v13, v13, [Landroid/media/ExifInterface$Rational;

    .line 1922
    .local v13, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_8
    array-length v15, v12

    if-ge v14, v15, :cond_f

    .line 1923
    aget-object v15, v12, v14

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1924
    .local v15, "numbers":[Ljava/lang/String;
    new-instance v22, Landroid/media/ExifInterface$Rational;

    aget-object v16, v15, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    aget-object v16, v15, v5

    .line 1925
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v17, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v22, v13, v14

    .line 1922
    .end local v15    # "numbers":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v24

    goto :goto_8

    .end local v24    # "i":I
    .restart local v6    # "i":I
    :cond_f
    move/from16 v24, v6

    .line 1927
    .end local v6    # "i":I
    .end local v14    # "j":I
    .restart local v24    # "i":I
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1928
    invoke-static {v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 1927
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    const/16 v22, 0x1

    goto/16 :goto_d

    .line 1888
    .end local v12    # "values":[Ljava/lang/String;
    .end local v13    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v24    # "i":I
    .restart local v6    # "i":I
    :pswitch_3
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1889
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1890
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_9
    array-length v11, v0

    if-ge v6, v11, :cond_10

    .line 1891
    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    .line 1890
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1893
    .end local v6    # "j":I
    :cond_10
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1894
    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 1893
    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    const/16 v22, 0x1

    goto/16 :goto_d

    .line 1908
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v24    # "i":I
    .local v6, "i":I
    :pswitch_4
    move/from16 v24, v6

    .end local v6    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1909
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    .line 1910
    .local v5, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a
    array-length v12, v0

    if-ge v6, v12, :cond_11

    .line 1911
    aget-object v12, v0, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1912
    .local v12, "numbers":[Ljava/lang/String;
    new-instance v13, Landroid/media/ExifInterface$Rational;

    const/4 v14, 0x0

    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    const/16 v22, 0x1

    aget-object v16, v12, v22

    .line 1913
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-wide/from16 v17, v14

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v13, v5, v6

    .line 1910
    .end local v12    # "numbers":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v23

    move-object/from16 v8, v25

    goto :goto_a

    .end local v23    # "obj":Ljava/lang/Object;
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :cond_11
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    const/16 v22, 0x1

    .line 1915
    .end local v6    # "j":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1916
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1915
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    goto/16 :goto_d

    .line 1898
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_5
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1899
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [J

    .line 1900
    .local v5, "longArray":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b
    array-length v7, v0

    if-ge v6, v7, :cond_12

    .line 1901
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 1900
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1903
    .end local v6    # "j":I
    :cond_12
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1904
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1903
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    goto :goto_d

    .line 1878
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "longArray":[J
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_6
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1879
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 1880
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c
    array-length v7, v0

    if-ge v6, v7, :cond_13

    .line 1881
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 1880
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1883
    .end local v6    # "j":I
    :cond_13
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1884
    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 1883
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    goto :goto_d

    .line 1874
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .local v6, "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_7
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    goto :goto_d

    .line 1869
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    :pswitch_8
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v23    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    .restart local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    goto :goto_d

    .line 1838
    .end local v9    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "dataFormat":I
    .end local v23    # "obj":Ljava/lang/Object;
    .end local v24    # "i":I
    .end local v25    # "exifTag":Landroid/media/ExifInterface$ExifTag;
    .restart local v6    # "i":I
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_14
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    .line 1833
    .end local v6    # "i":I
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local v24    # "i":I
    :cond_15
    :goto_d
    add-int/lit8 v6, v24, 0x1

    move/from16 v5, v22

    const/4 v0, 0x2

    .end local v24    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 1949
    .end local v6    # "i":I
    :cond_16
    return-void

    .line 1810
    .end local v3    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "tag shouldn\'t be null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
