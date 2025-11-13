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

    .line 20
    const-string v0, "ImgCsConverter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/media/codec/ImgCsConverter;->DEBUG:Z

    .line 23
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

    const-string v136, "OffsetTime"

    const-string v137, "OffsetTimeDigitized"

    filled-new-array/range {v1 .. v137}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z
    .locals 16
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "colorspace"    # Landroid/graphics/ColorSpace;

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "java.io.tmpdir"

    const-string v3, "ImgCsConverter"

    const-string v4, "convert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 172
    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 176
    const/4 v4, 0x1

    .line 177
    .local v4, "ret":Z
    const/4 v5, 0x0

    .line 178
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 182
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 184
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    move-object/from16 v9, p2

    :try_start_1
    iput-object v9, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 187
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v5, v10

    .line 188
    if-nez v5, :cond_2

    .line 189
    const-string v0, "decode fail"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    const/4 v3, 0x0

    .line 248
    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_0
    if-eqz v6, :cond_1

    .line 253
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 255
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 190
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v3

    .line 192
    :cond_2
    :try_start_3
    const-string v10, "dec x"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v10

    .line 196
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5f

    invoke-virtual {v5, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    const-string v10, "enc x"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v10, Landroid/media/ExifInterface;

    invoke-direct {v10, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 201
    .local v10, "inExif":Landroid/media/ExifInterface;
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 203
    .local v11, "outExif":Landroid/media/ExifInterface;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    sget-object v13, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_4

    .line 204
    aget-object v13, v13, v12

    invoke-virtual {v10, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 206
    sget-object v14, Lcom/samsung/android/media/codec/ImgCsConverter;->AllExifTags:[Ljava/lang/String;

    aget-object v14, v14, v12

    invoke-virtual {v11, v14, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 210
    .end local v12    # "i":I
    :cond_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v12, "src_sefFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v13, "dst_sefFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "outDir":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " outDir : "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "tmpdir":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tmpdir : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v0, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    invoke-virtual {v11}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 222
    invoke-static {v0, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {v12, v13}, Lcom/samsung/android/media/SemExtendedFormat;->copyAllData(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 226
    const-string v0, " Success to copy all SEF data."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 228
    :cond_5
    const-string v0, " Fail to copy all SEF data"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_2
    const-string v0, "Color_Display_P3"

    .line 232
    .local v0, "keyname":Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Success to delete SEF Data of KeyName : "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 235
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Fail to delete SEF Data of KeyName : "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    .end local v0    # "keyname":Ljava/lang/String;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "tmpdir":Ljava/lang/String;
    .end local v10    # "inExif":Landroid/media/ExifInterface;
    .end local v11    # "outExif":Landroid/media/ExifInterface;
    .end local v12    # "src_sefFile":Ljava/io/File;
    .end local v13    # "dst_sefFile":Ljava/io/File;
    .end local v14    # "outDir":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_7

    .line 249
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_7
    nop

    .line 253
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 257
    :goto_4
    goto :goto_8

    .line 256
    :catch_2
    move-exception v0

    goto :goto_4

    .line 254
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 255
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 243
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    goto :goto_6

    .line 238
    :catch_5
    move-exception v0

    goto :goto_7

    .line 248
    :catchall_0
    move-exception v0

    move-object/from16 v9, p2

    :goto_5
    move-object v1, v0

    goto :goto_9

    .line 243
    :catch_6
    move-exception v0

    move-object/from16 v9, p2

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    const-string v1, " Exception "

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    const/4 v4, 0x0

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_8

    .line 249
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_8
    if-eqz v6, :cond_a

    .line 253
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 254
    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 255
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 238
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    move-object/from16 v9, p2

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_7
    :try_start_7
    const-string v1, " RuntimeException "

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 242
    const/4 v4, 0x0

    .line 248
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v5, :cond_9

    .line 249
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_9
    if-eqz v6, :cond_a

    .line 253
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 254
    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 255
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 260
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_8
    return v4

    .line 248
    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_9
    if-eqz v5, :cond_b

    .line 249
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_b
    if-eqz v6, :cond_c

    .line 253
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 257
    goto :goto_a

    .line 256
    :catch_a
    move-exception v0

    goto :goto_a

    .line 254
    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 255
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 259
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_c
    :goto_a
    throw v1

    .line 172
    .end local v4    # "ret":Z
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :cond_d
    move-object/from16 v9, p2

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_e
    move-object/from16 v9, p2

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputFilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 164
    const-string v0, "ImgCsConverter"

    const-string v1, "convertToSRGB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/codec/ImgCsConverter;->convert(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Z

    move-result v0

    return v0
.end method
