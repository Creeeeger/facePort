.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CamcorderProfile$Quality;
    }
.end annotation


# static fields
.field public static final whitelist QUALITY_1080P:I = 0x6

.field public static final whitelist QUALITY_2160P:I = 0x8

.field public static final whitelist QUALITY_2K:I = 0xc

.field public static final whitelist QUALITY_480P:I = 0x4

.field public static final whitelist QUALITY_4KDCI:I = 0xa

.field public static final whitelist QUALITY_720P:I = 0x5

.field public static final whitelist QUALITY_8KUHD:I = 0xd

.field public static final whitelist QUALITY_CIF:I = 0x3

.field public static final whitelist QUALITY_HIGH:I = 0x1

.field public static final whitelist QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final whitelist QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final whitelist QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final whitelist QUALITY_HIGH_SPEED_4KDCI:I = 0x7d8

.field public static final whitelist QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final whitelist QUALITY_HIGH_SPEED_CIF:I = 0x7d6

.field public static final whitelist QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final greylist-max-o QUALITY_HIGH_SPEED_LIST_END:I = 0x7d8

.field private static final greylist-max-o QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final whitelist QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field public static final whitelist QUALITY_HIGH_SPEED_VGA:I = 0x7d7

.field private static final greylist-max-o QUALITY_LIST_END:I = 0xd

.field private static final greylist-max-o QUALITY_LIST_START:I = 0x0

.field public static final whitelist QUALITY_LOW:I = 0x0

.field public static final whitelist QUALITY_QCIF:I = 0x2

.field public static final whitelist QUALITY_QHD:I = 0xb

.field public static final whitelist QUALITY_QVGA:I = 0x7

.field public static final whitelist QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final whitelist QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final whitelist QUALITY_TIME_LAPSE_2K:I = 0x3f4

.field public static final whitelist QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final whitelist QUALITY_TIME_LAPSE_4KDCI:I = 0x3f2

.field public static final whitelist QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final whitelist QUALITY_TIME_LAPSE_8KUHD:I = 0x3f5

.field public static final whitelist QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final whitelist QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final greylist-max-o QUALITY_TIME_LAPSE_LIST_END:I = 0x3f5

.field private static final greylist-max-o QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final whitelist QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final whitelist QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final whitelist QUALITY_TIME_LAPSE_QHD:I = 0x3f3

.field public static final whitelist QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final whitelist QUALITY_TIME_LAPSE_VGA:I = 0x3f1

.field public static final whitelist QUALITY_VGA:I = 0x9

.field public static final blacklist RETURN_ADVANCED_VIDEO_PROFILES:J = 0xc47d0acL


# instance fields
.field public whitelist audioBitRate:I

.field public whitelist audioChannels:I

.field public whitelist audioCodec:I

.field public whitelist audioSampleRate:I

.field public whitelist duration:I

.field public whitelist fileFormat:I

.field public whitelist quality:I

.field public whitelist videoBitRate:I

.field public whitelist videoCodec:I

.field public whitelist videoFrameHeight:I

.field public whitelist videoFrameRate:I

.field public whitelist videoFrameWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    return-void
.end method

.method private constructor greylist-max-o <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    return-void
.end method

.method public static whitelist get(I)Landroid/media/CamcorderProfile;
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist get(II)Landroid/media/CamcorderProfile;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f5

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_3

    const/16 v0, 0x7d8

    if-gt p1, v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f5

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_3

    const/16 v0, 0x7d8

    if-gt p1, v0, :cond_3

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const-wide/32 v1, 0xc47d0ac

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profiles(IIZ)Landroid/media/EncoderProfiles;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist hasProfile(I)Z
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static whitelist hasProfile(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native greylist-max-r native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native blacklist native_get_camcorder_profiles(IIZ)Landroid/media/EncoderProfiles;
.end method

.method private static final native greylist-max-o native_has_camcorder_profile(II)Z
.end method

.method private static final native greylist-max-p native_init()V
.end method
