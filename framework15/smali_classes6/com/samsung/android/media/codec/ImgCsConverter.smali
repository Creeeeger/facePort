.class public Lcom/samsung/android/media/codec/ImgCsConverter;
.super Ljava/lang/Object;
.source "ImgCsConverter.java"


# static fields
.field public static blacklist AllExifTags:[Ljava/lang/String; = null

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ImgCsConverter"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 138

    const-string v0, "ImgCsConverter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/media/codec/ImgCsConverter;->DEBUG:Z

    const-string v136, "OffsetTime"

    const-string v137, "OffsetTimeDigitized"

    const-string v1, "ApertureValue"

    const-string v2, "Artist"

    const-string v3, "BitsPerSample"

    const-string v4, "BrightnessValue"

    const-string v5, "CFAPattern"

    const-string v6, "ColorSpace"

    const-string v7, "ComponentsConfiguration"

    const-string v8, "CompressedBitsPerPixel"

    const-string v9, "Compression"

    const-string v10, "Contrast"

    const-string v11, "Copyright"

    const-string v12, "CustomRendered"

    const-string v13, "DateTime"

    const-string v14, "DateTimeDigitized"

    const-string v15, "DateTimeOriginal"

    const-string v16, "DefaultCropSize"

    const-string v17, "DeviceSettingDescription"

    const-string v18, "DigitalZoomRatio"

    const-string v19, "DNGVersion"

    const-string v20, "ExifVersion"

    const-string v21, "ExposureBiasValue"

    const-string v22, "ExposureIndex"

    const-string v23, "ExposureMode"

    const-string v24, "ExposureProgram"

    const-string v25, "ExposureTime"

    const-string v26, "FileSource"

    const-string v27, "Flash"

    const-string v28, "FlashpixVersion"

    const-string v29, "FlashEnergy"

    const-string v30, "FocalLength"

    const-string v31, "FocalLengthIn35mmFilm"

    const-string v32, "FocalPlaneResolutionUnit"

    const-string v33, "FocalPlaneXResolution"

    const-string v34, "FocalPlaneYResolution"

    const-string v35, "FNumber"

    const-string v36, "GainControl"

    const-string v37, "GPSAltitude"

    const-string v38, "GPSAltitudeRef"

    const-string v39, "GPSAreaInformation"

    const-string v40, "GPSDateStamp"

    const-string v41, "GPSDestBearing"

    const-string v42, "GPSDestBearingRef"

    const-string v43, "GPSDestDistance"

    const-string v44, "GPSDestDistanceRef"

    const-string v45, "GPSDestLatitude"

    const-string v46, "GPSDestLatitudeRef"

    const-string v47, "GPSDestLongitude"

    const-string v48, "GPSDestLongitudeRef"

    const-string v49, "GPSDifferential"

    const-string v50, "GPSDOP"

    const-string v51, "GPSImgDirection"

    const-string v52, "GPSImgDirectionRef"

    const-string v53, "GPSLatitude"

    const-string v54, "GPSLatitudeRef"

    const-string v55, "GPSLongitude"

    const-string v56, "GPSLongitudeRef"

    const-string v57, "GPSMapDatum"

    const-string v58, "GPSMeasureMode"

    const-string v59, "GPSProcessingMethod"

    const-string v60, "GPSSatellites"

    const-string v61, "GPSSpeed"

    const-string v62, "GPSSpeedRef"

    const-string v63, "GPSStatus"

    const-string v64, "GPSTimeStamp"

    const-string v65, "GPSTrack"

    const-string v66, "GPSTrackRef"

    const-string v67, "GPSVersionID"

    const-string v68, "ImageDescription"

    const-string v69, "ImageLength"

    const-string v70, "ImageUniqueID"

    const-string v71, "ImageWidth"

    const-string v72, "InteroperabilityIndex"

    const-string v73, "ISOSpeedRatings"

    const-string v74, "LightSource"

    const-string v75, "Make"

    const-string v76, "MakerNote"

    const-string v77, "MaxApertureValue"

    const-string v78, "MeteringMode"

    const-string v79, "Model"

    const-string v80, "NewSubfileType"

    const-string v81, "OECF"

    const-string v82, "AspectFrame"

    const-string v83, "PreviewImageLength"

    const-string v84, "PreviewImageStart"

    const-string v85, "ThumbnailImage"

    const-string v86, "Orientation"

    const-string v87, "PhotometricInterpretation"

    const-string v88, "PixelXDimension"

    const-string v89, "PixelYDimension"

    const-string v90, "PlanarConfiguration"

    const-string v91, "PrimaryChromaticities"

    const-string v92, "ReferenceBlackWhite"

    const-string v93, "RelatedSoundFile"

    const-string v94, "ResolutionUnit"

    const-string v95, "RowsPerStrip"

    const-string v96, "ISO"

    const-string v97, "JpgFromRaw"

    const-string v98, "SensorBottomBorder"

    const-string v99, "SensorLeftBorder"

    const-string v100, "SensorRightBorder"

    const-string v101, "SensorTopBorder"

    const-string v102, "SamplesPerPixel"

    const-string v103, "Saturation"

    const-string v104, "SceneCaptureType"

    const-string v105, "SceneType"

    const-string v106, "SensingMethod"

    const-string v107, "Sharpness"

    const-string v108, "ShutterSpeedValue"

    const-string v109, "Software"

    const-string v110, "SpatialFrequencyResponse"

    const-string v111, "SpectralSensitivity"

    const-string v112, "StripByteCounts"

    const-string v113, "StripOffsets"

    const-string v114, "SubfileType"

    const-string v115, "SubjectArea"

    const-string v116, "SubjectDistance"

    const-string v117, "SubjectDistanceRange"

    const-string v118, "SubjectLocation"

    const-string v119, "SubSecTime"

    const-string v120, "SubSecTimeDigitized"

    const-string v121, "SubSecTimeDigitized"

    const-string v122, "SubSecTimeOriginal"

    const-string v123, "SubSecTimeOriginal"

    const-string v124, "ThumbnailImageLength"

    const-string v125, "ThumbnailImageWidth"

    const-string v126, "TransferFunction"

    const-string v127, "UserComment"

    const-string v128, "WhiteBalance"

    const-string v129, "WhitePoint"

    const-string v130, "XResolution"

    const-string v131, "YCbCrCoefficients"

    const-string v132, "YCbCrPositioning"

    const-string v133, "YCbCrSubSampling"

    const-string v134, "YResolution"

    const-string v135, "OffsetTimeOriginal"

    filled-new-array/range {v1 .. v137}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z
    .locals 13

    const-string v0, "java.io.tmpdir"

    const-string v1, "convert"

    const-string v2, "ImgCsConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object p2, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    if-nez v3, :cond_2

    const-string v0, "decode fail"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    :try_start_2
    const-string v6, "dec x"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5f

    invoke-virtual {v3, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v6, "enc x"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/media/ExifInterface;

    invoke-direct {v7, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    sget-object v9, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    sget-object v9, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v6, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    sget-object v10, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v7, v10, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " outDir : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " tmpdir : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v7}, Landroid/media/ExifInterface;->saveAttributes()V

    invoke-static {v0, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    nop

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_4
    const-string v5, " Exception "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v4, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v0

    :try_start_6
    const-string v5, " RuntimeException "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_7
    move-exception v0

    throw v0

    :cond_8
    :goto_3
    return v1

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eqz v4, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception v2

    goto :goto_5

    :catch_9
    move-exception v0

    throw v0

    :cond_a
    :goto_5
    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ImgCsConverter"

    const-string v1, "convertToSRGB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/codec/ImgCsConverter;->convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z

    move-result v0

    return v0
.end method
