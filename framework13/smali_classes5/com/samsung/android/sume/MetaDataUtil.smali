.class public final Lcom/samsung/android/sume/MetaDataUtil;
.super Ljava/lang/Object;
.source "MetaDataUtil.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist JPEG_LENGTH_SIZE:I = 0x2

.field private static final blacklist JPEG_MARKER_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist exifTags:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 142

    .line 23
    nop

    .line 25
    const-class v0, Lcom/samsung/android/sume/MetaDataUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    .line 30
    const-string v1, "FNumber"

    const-string v2, "ApertureValue"

    const-string v3, "Artist"

    const-string v4, "BitsPerSample"

    const-string v5, "BrightnessValue"

    const-string v6, "CFAPattern"

    const-string v7, "ColorSpace"

    const-string v8, "ComponentsConfiguration"

    const-string v9, "CompressedBitsPerPixel"

    const-string v10, "Compression"

    const-string v11, "Contrast"

    const-string v12, "Copyright"

    const-string v13, "CustomRendered"

    const-string v14, "DateTime"

    const-string v15, "DateTimeDigitized"

    const-string v16, "DateTimeOriginal"

    const-string v17, "DefaultCropSize"

    const-string v18, "DeviceSettingDescription"

    const-string v19, "DigitalZoomRatio"

    const-string v20, "DNGVersion"

    const-string v21, "ExifVersion"

    const-string v22, "ExposureBiasValue"

    const-string v23, "ExposureIndex"

    const-string v24, "ExposureMode"

    const-string v25, "ExposureProgram"

    const-string v26, "ExposureTime"

    const-string v27, "FileSource"

    const-string v28, "Flash"

    const-string v29, "FlashpixVersion"

    const-string v30, "FlashEnergy"

    const-string v31, "FocalLength"

    const-string v32, "FocalLengthIn35mmFilm"

    const-string v33, "FocalPlaneResolutionUnit"

    const-string v34, "FocalPlaneXResolution"

    const-string v35, "FocalPlaneYResolution"

    const-string v36, "FNumber"

    const-string v37, "GainControl"

    const-string v38, "GPSAltitude"

    const-string v39, "GPSAltitudeRef"

    const-string v40, "GPSAreaInformation"

    const-string v41, "GPSDateStamp"

    const-string v42, "GPSDestBearing"

    const-string v43, "GPSDestBearingRef"

    const-string v44, "GPSDestDistance"

    const-string v45, "GPSDestDistanceRef"

    const-string v46, "GPSDestLatitude"

    const-string v47, "GPSDestLatitudeRef"

    const-string v48, "GPSDestLongitude"

    const-string v49, "GPSDestLongitudeRef"

    const-string v50, "GPSDifferential"

    const-string v51, "GPSDOP"

    const-string v52, "GPSImgDirection"

    const-string v53, "GPSImgDirectionRef"

    const-string v54, "GPSLatitude"

    const-string v55, "GPSLatitudeRef"

    const-string v56, "GPSLongitude"

    const-string v57, "GPSLongitudeRef"

    const-string v58, "GPSMapDatum"

    const-string v59, "GPSMeasureMode"

    const-string v60, "GPSProcessingMethod"

    const-string v61, "GPSSatellites"

    const-string v62, "GPSSpeed"

    const-string v63, "GPSSpeedRef"

    const-string v64, "GPSStatus"

    const-string v65, "GPSTimeStamp"

    const-string v66, "GPSTrack"

    const-string v67, "GPSTrackRef"

    const-string v68, "GPSVersionID"

    const-string v69, "ImageDescription"

    const-string v70, "ImageLength"

    const-string v71, "ImageUniqueID"

    const-string v72, "ImageWidth"

    const-string v73, "InteroperabilityIndex"

    const-string v74, "ISOSpeedRatings"

    const-string v75, "ISOSpeedRatings"

    const-string v76, "JPEGInterchangeFormat"

    const-string v77, "JPEGInterchangeFormatLength"

    const-string v78, "LightSource"

    const-string v79, "Make"

    const-string v80, "MakerNote"

    const-string v81, "MaxApertureValue"

    const-string v82, "MeteringMode"

    const-string v83, "Model"

    const-string v84, "NewSubfileType"

    const-string v85, "OECF"

    const-string v86, "AspectFrame"

    const-string v87, "PreviewImageLength"

    const-string v88, "PreviewImageStart"

    const-string v89, "ThumbnailImage"

    const-string v90, "Orientation"

    const-string v91, "PhotometricInterpretation"

    const-string v92, "PixelXDimension"

    const-string v93, "PixelYDimension"

    const-string v94, "PlanarConfiguration"

    const-string v95, "PrimaryChromaticities"

    const-string v96, "ReferenceBlackWhite"

    const-string v97, "RelatedSoundFile"

    const-string v98, "ResolutionUnit"

    const-string v99, "RowsPerStrip"

    const-string v100, "ISO"

    const-string v101, "JpgFromRaw"

    const-string v102, "SensorBottomBorder"

    const-string v103, "SensorLeftBorder"

    const-string v104, "SensorRightBorder"

    const-string v105, "SensorTopBorder"

    const-string v106, "SamplesPerPixel"

    const-string v107, "Saturation"

    const-string v108, "SceneCaptureType"

    const-string v109, "SceneType"

    const-string v110, "SensingMethod"

    const-string v111, "Sharpness"

    const-string v112, "ShutterSpeedValue"

    const-string v113, "Software"

    const-string v114, "SpatialFrequencyResponse"

    const-string v115, "SpectralSensitivity"

    const-string v116, "StripByteCounts"

    const-string v117, "StripOffsets"

    const-string v118, "SubfileType"

    const-string v119, "SubjectArea"

    const-string v120, "SubjectDistance"

    const-string v121, "SubjectDistanceRange"

    const-string v122, "SubjectLocation"

    const-string v123, "SubSecTime"

    const-string v124, "SubSecTimeDigitized"

    const-string v125, "SubSecTimeDigitized"

    const-string v126, "SubSecTimeOriginal"

    const-string v127, "SubSecTimeOriginal"

    const-string v128, "ThumbnailImageLength"

    const-string v129, "ThumbnailImageWidth"

    const-string v130, "TransferFunction"

    const-string v131, "UserComment"

    const-string v132, "WhiteBalance"

    const-string v133, "WhitePoint"

    const-string v134, "XResolution"

    const-string v135, "YCbCrCoefficients"

    const-string v136, "YCbCrPositioning"

    const-string v137, "YCbCrSubSampling"

    const-string v138, "YResolution"

    const-string v139, "OffsetTimeOriginal"

    const-string v140, "OffsetTime"

    const-string v141, "OffsetTimeDigitized"

    filled-new-array/range {v1 .. v141}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/MetaDataUtil;->exifTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copyExif(Ljava/io/FileInputStream;Ljava/io/RandomAccessFile;)Landroid/media/ExifInterface;
    .locals 7
    .param p0, "ifs"    # Ljava/io/FileInputStream;
    .param p1, "ofs"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ifs",
            "ofs"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "src":Landroid/media/ExifInterface;
    const/4 v1, 0x0

    .line 187
    .local v1, "dst":Landroid/media/ExifInterface;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 188
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 190
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 191
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    .line 193
    sget-object v2, Lcom/samsung/android/sume/MetaDataUtil;->exifTags:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 194
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_1
    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 201
    return-object v1
.end method

.method public static blacklist copyMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMetadata: src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, ".(jpg|jpeg)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "ifs":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 285
    .local v1, "ofs":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 286
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 288
    invoke-static {v0}, Lcom/samsung/android/sume/MetaDataUtil;->getAppNMetadata(Ljava/io/FileInputStream;)Ljava/util/ArrayList;

    move-result-object v2

    .line 289
    .local v2, "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    invoke-static {v2, v1}, Lcom/samsung/android/sume/MetaDataUtil;->setAppNMetadata(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    const/4 v3, 0x1

    .line 299
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 300
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v4

    .line 302
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return v3

    .line 298
    .end local v2    # "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 295
    :catch_1
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v3, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "src has invalid meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 300
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 293
    :catch_2
    move-exception v2

    .line 294
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 301
    :catch_3
    move-exception v2

    goto :goto_2

    .line 300
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 302
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 304
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 303
    :cond_3
    :goto_3
    nop

    .line 305
    .end local v0    # "ifs":Ljava/io/FileInputStream;
    .end local v1    # "ofs":Ljava/io/RandomAccessFile;
    :goto_4
    goto :goto_a

    .line 299
    .restart local v0    # "ifs":Ljava/io/FileInputStream;
    .restart local v1    # "ofs":Ljava/io/RandomAccessFile;
    :goto_5
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    .line 301
    :catch_4
    move-exception v3

    goto :goto_7

    .line 300
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 302
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 303
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_8
    nop

    .line 304
    :goto_9
    throw v2

    .line 306
    .end local v0    # "ifs":Ljava/io/FileInputStream;
    .end local v1    # "ofs":Ljava/io/RandomAccessFile;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported file format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyMetadataAndExif(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "exifHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/ExifInterface;",
            ">;)Z"
        }
    .end annotation

    .line 312
    .local p2, "exifHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/ExifInterface;>;"
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMetadataAndExif: src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, ".(jpg|jpeg)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "ifs":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 317
    .local v2, "ofs":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 318
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 320
    invoke-static {v1}, Lcom/samsung/android/sume/MetaDataUtil;->getAppNMetadata(Ljava/io/FileInputStream;)Ljava/util/ArrayList;

    move-result-object v3

    .line 321
    .local v3, "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    invoke-static {v3, v2}, Lcom/samsung/android/sume/MetaDataUtil;->setAppNMetadata(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V

    .line 324
    :cond_0
    invoke-static {v1, v2}, Lcom/samsung/android/sume/MetaDataUtil;->copyExif(Ljava/io/FileInputStream;Ljava/io/RandomAccessFile;)Landroid/media/ExifInterface;

    move-result-object v4

    .line 325
    .local v4, "result":Landroid/media/ExifInterface;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exif: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p2, :cond_1

    .line 328
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 330
    :cond_1
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    const/4 v0, 0x1

    .line 338
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v5

    .line 340
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 347
    goto :goto_1

    .line 345
    :catch_1
    move-exception v5

    .line 346
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return v0

    .line 337
    .end local v3    # "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    .end local v4    # "result":Landroid/media/ExifInterface;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 334
    :catch_2
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v3, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "src has invalid meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 339
    :catch_3
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    nop

    .line 344
    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    .line 332
    :catch_4
    move-exception v0

    .line 333
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 339
    :catch_5
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    .line 344
    :goto_5
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    .line 345
    :catch_6
    move-exception v0

    .line 346
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 347
    :cond_4
    :goto_6
    nop

    .line 349
    .end local v1    # "ifs":Ljava/io/FileInputStream;
    .end local v2    # "ofs":Ljava/io/RandomAccessFile;
    :goto_7
    goto :goto_d

    .line 338
    .restart local v1    # "ifs":Ljava/io/FileInputStream;
    .restart local v2    # "ofs":Ljava/io/RandomAccessFile;
    :goto_8
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    .line 339
    :catch_7
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_9
    nop

    .line 344
    :goto_a
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_b

    .line 345
    :catch_8
    move-exception v3

    .line 346
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 347
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_b
    nop

    .line 348
    :goto_c
    throw v0

    .line 350
    .end local v1    # "ifs":Ljava/io/FileInputStream;
    .end local v2    # "ofs":Ljava/io/RandomAccessFile;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported file format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getAppNMetadata(Ljava/io/FileInputStream;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "ifs"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ifs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    const-string v1, "getAppNMetadata E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 211
    .local v1, "buffer":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 212
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 214
    :goto_0
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_4

    .line 215
    new-array v4, v2, [I

    aget-byte v5, v1, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v4, v3

    const/4 v5, 0x1

    aget-byte v7, v1, v5

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 216
    .local v4, "markers":[I
    sget-object v7, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "marker: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v5

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    aget v8, v4, v3

    if-ne v8, v6, :cond_3

    .line 221
    const/16 v8, 0xd0

    aget v9, v4, v5

    if-gt v8, v9, :cond_0

    const/16 v8, 0xd7

    aget v9, v4, v5

    if-lt v8, v9, :cond_0

    .line 222
    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 225
    aget-byte v8, v1, v3

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x8

    aget-byte v9, v1, v5

    and-int/2addr v6, v9

    or-int/2addr v6, v8

    .line 226
    .local v6, "length":I
    const/16 v8, 0xe2

    aget v9, v4, v5

    if-gt v8, v9, :cond_1

    const/16 v8, 0xef

    aget v9, v4, v5

    if-lt v8, v9, :cond_1

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add APP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v5

    and-int/lit8 v9, v9, 0xf

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " meta("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    add-int/lit8 v7, v6, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 230
    .local v7, "meta":Ljava/nio/ByteBuffer;
    aget v8, v4, v3

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 231
    aget v5, v4, v5

    int-to-byte v5, v5

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v7, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 234
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 235
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    nop

    .end local v7    # "meta":Ljava/nio/ByteBuffer;
    goto :goto_1

    :cond_1
    aget v5, v4, v5

    const/16 v8, 0xda

    if-ne v5, v8, :cond_2

    .line 237
    const-string v2, "EOS reached"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto :goto_2

    .line 240
    :cond_2
    add-int/lit8 v5, v6, -0x2

    int-to-long v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    .line 242
    .end local v4    # "markers":[I
    .end local v6    # "length":I
    :goto_1
    goto/16 :goto_0

    .line 219
    .restart local v4    # "markers":[I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "this is not valid markers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    .end local v1    # "buffer":[B
    .end local p0    # "ifs":Ljava/io/FileInputStream;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v4    # "markers":[I
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    .restart local v1    # "buffer":[B
    .restart local p0    # "ifs":Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    goto :goto_3

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    sget-object v2, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    const-string v3, "getAppNMetadata X"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v0
.end method

.method public static blacklist getExifTags()[Ljava/lang/String;
    .locals 1

    .line 176
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->exifTags:[Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist setAppNMetadata(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V
    .locals 5
    .param p1, "ofs"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "meta",
            "ofs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/io/RandomAccessFile;",
            ")V"
        }
    .end annotation

    .line 251
    .local p0, "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setICCProfile E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 256
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/MetaDataUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/MetaDataUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 258
    .local v1, "totalMetaSize":I
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 260
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 261
    const/16 v3, -0x28

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 264
    .local v4, "m":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 265
    nop

    .end local v4    # "m":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 267
    :cond_0
    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 268
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 269
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 271
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 272
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "totalMetaSize":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    sget-object v0, Lcom/samsung/android/sume/MetaDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setICCProfile X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method
