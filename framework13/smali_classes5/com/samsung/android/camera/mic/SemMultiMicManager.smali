.class public Lcom/samsung/android/camera/mic/SemMultiMicManager;
.super Ljava/lang/Object;
.source "SemMultiMicManager.java"


# static fields
.field private static final blacklist AUDIO_PARAMETER_SEC_LOCAL_MULTI_MIC_KEY:Ljava/lang/String; = "l_multi_mic_key"

.field private static final blacklist AUDIO_PARAMETER_STREAM_CAM_BACK:Ljava/lang/String; = "cam_back"

.field private static final blacklist AUDIO_PARAMETER_STREAM_CAM_COORDINATE:Ljava/lang/String; = "cam_coordinate"

.field private static final blacklist AUDIO_PARAMETER_STREAM_CAM_ORIENTATION:Ljava/lang/String; = "cam_orientation"

.field private static final blacklist AUDIO_PARAMETER_STREAM_ENABLE:Ljava/lang/String; = "cam_enable"

.field private static final blacklist AUDIO_PARAMETER_STREAM_ZOOM_MAX:Ljava/lang/String; = "cam_zoom_max"

.field private static final blacklist AUDIO_PARAMETER_STREAM_ZOOM_MIN:Ljava/lang/String; = "cam_zoom_min"

.field private static final blacklist AUDIO_PARAMETER_STREAM_ZOOM_STEP:Ljava/lang/String; = "cam_zoom"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_AUDIO_FOCUS_ENABLE:Ljava/lang/String; = "audio_focus_enable"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_CAMERA_DIRECTION:Ljava/lang/String; = "camera_direction"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_FOCUS_COORDINATE:Ljava/lang/String; = "focus_coordinate"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_MODE:Ljava/lang/String; = "mode"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_PHONE_ORIENTATION:Ljava/lang/String; = "phone_orientation"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_SENSITIVITY_LEVEL:Ljava/lang/String; = "sensitivity_level"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_MAX:Ljava/lang/String; = "zoom_max"

.field private static final blacklist AUDIO_PARAMETER_SUBKEY_MULTI_MIC_ZOOM_MIN:Ljava/lang/String; = "zoom_min"

.field public static final whitelist CAMERA_FACING_BACK:I = 0x1

.field public static final whitelist CAMERA_FACING_FRONT:I = 0x0

.field private static final blacklist DEFAULT_COORDINATE:I = -0x15b38

.field private static final blacklist DEFAULT_SENSITIVITY_LEVEL:I = -0x15b38

.field private static final blacklist DEFAULT_ZOOM:F = 0.0f

.field public static final whitelist MODE_ADJUSTING_SENSITIVITY:I = 0x1

.field public static final blacklist MODE_ADJUSTING_SENSITIVITY_BY_BLUETOOTH_AND_BUILTIN_MIC:I = 0x2

.field public static final whitelist MODE_ADJUSTING_SENSITIVITY_BY_BLUETOOTH_MIC:I = 0x2

.field public static final whitelist MODE_ADJUSTING_ZOOM_LEVEL:I = 0x0

.field public static final whitelist SURFACE_ROTATION_0:I = 0x0

.field public static final whitelist SURFACE_ROTATION_180:I = 0xb4

.field public static final whitelist SURFACE_ROTATION_270:I = 0x10e

.field public static final whitelist SURFACE_ROTATION_90:I = 0x5a

.field private static final blacklist TAG:Ljava/lang/String; = "SemMultiMicManager"

.field private static blacklist sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private blacklist mCameraZoomLevel:F

.field private blacklist mCoordinate:I

.field private blacklist mEnable:Z

.field private blacklist mMaxZoom:F

.field private blacklist mMinZoom:F

.field private blacklist mMode:I

.field private blacklist mOrientation:I

.field private blacklist mSensitivityLevel:I

.field private blacklist mSoundLocation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 296
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 298
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 299
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    .line 300
    iput-boolean v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    .line 301
    const v1, -0x15b38

    iput v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    .line 302
    iput v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    .line 137
    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;
    .locals 1

    .line 146
    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-direct {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    .line 154
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sInstance:Lcom/samsung/android/camera/mic/SemMultiMicManager;

    return-object v0
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 2

    .line 503
    sget-object v0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 504
    return-object v0

    .line 506
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/mic/SemMultiMicManager;->sService:Landroid/media/IAudioService;

    .line 508
    return-object v1
.end method

.method public static whitelist isSupported()Z
    .locals 2

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "version":I
    :try_start_0
    const-string v1, "08020"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 289
    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 290
    :goto_0
    const/16 v1, 0x1f41

    if-ge v0, v1, :cond_1

    const/16 v1, 0x1b62

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f40

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public static whitelist isSupported(I)Z
    .locals 6
    .param p0, "mode"    # I

    .line 464
    invoke-static {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isValidMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in isSupported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemMultiMicManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return v1

    .line 469
    :cond_0
    const/4 v0, 0x0

    .line 471
    .local v0, "version":I
    :try_start_0
    const-string v2, "08020"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 472
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 474
    const/16 v2, 0x1f41

    const/4 v3, 0x1

    if-nez p0, :cond_2

    .line 475
    if-lt v0, v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 476
    :cond_2
    const/16 v4, 0x1f40

    if-ne p0, v3, :cond_5

    .line 477
    const/16 v2, 0x1f4a

    if-ge v0, v2, :cond_3

    const/16 v2, 0x1b62

    if-lt v0, v2, :cond_4

    if-ge v0, v4, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    .line 478
    :cond_5
    const/4 v5, 0x2

    if-ne p0, v5, :cond_8

    .line 479
    const/16 v2, 0x1f54

    if-ge v0, v2, :cond_6

    const/16 v2, 0x1b6c

    if-lt v0, v2, :cond_7

    if-ge v0, v4, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    return v1

    .line 481
    :cond_8
    if-lt v0, v2, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method private static blacklist isValidMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 485
    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 486
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist setAudioServiceConfig(Ljava/lang/String;)V
    .locals 4
    .param p0, "keyValuePairs"    # Ljava/lang/String;

    .line 492
    const-string v0, "SemMultiMicManager"

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 494
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    goto :goto_1

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Not allowed to audio routing"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 495
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in setAudioServiceConfig"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 500
    :goto_1
    return-void
.end method

.method private blacklist writeToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Bundle;

    .line 319
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    const-string v1, "cam_zoom_max"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 320
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    const-string v1, "cam_zoom_min"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 321
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    const-string v1, "cam_zoom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 322
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    const-string v1, "cam_back"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    const-string v1, "cam_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    const-string v1, "cam_coordinate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget-boolean v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    const-string v1, "cam_enable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist getMicSensitivity(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 372
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    return v0
.end method

.method public whitelist getMode()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    return v0
.end method

.method public whitelist getSoundLocation()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    return v0
.end method

.method public whitelist initialize(IIFF)V
    .locals 2
    .param p1, "soundLocation"    # I
    .param p2, "deviceOrientation"    # I
    .param p3, "maxZoom"    # F
    .param p4, "minZoom"    # F

    .line 170
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 172
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 173
    const-string v1, "camera_direction"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "phone_orientation"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "zoom_max"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "zoom_min"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 181
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 182
    iput p2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 183
    iput p3, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 184
    iput p4, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 185
    return-void
.end method

.method public whitelist release()V
    .locals 5

    .line 193
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 195
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 196
    const-string v1, "camera_direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "phone_orientation"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "zoom_max"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "zoom_min"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "sensitivity_level"

    const v4, -0x15b38

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 205
    iput v2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 206
    iput v2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mOrientation:I

    .line 207
    iput v3, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMaxZoom:F

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMinZoom:F

    .line 210
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    .line 211
    return-void
.end method

.method public whitelist setAudioFocusCoordinate(I)V
    .locals 3
    .param p1, "coordinate"    # I

    .line 243
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 245
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 246
    const-string v1, "audio_focus_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 247
    const-string v1, "focus_coordinate"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "zoom_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 253
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCoordinate:I

    .line 254
    return-void
.end method

.method public whitelist setAudioZoomLevel(F)V
    .locals 3
    .param p1, "cameraZoomLevel"    # F

    .line 266
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 268
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 269
    const-string v1, "audio_focus_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 270
    const-string v1, "focus_coordinate"

    const v2, -0x15b38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "zoom_level"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 276
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mCameraZoomLevel:F

    .line 277
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 220
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 222
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 223
    const-string v1, "audio_focus_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const v1, -0x15b38

    .line 224
    const-string v2, "focus_coordinate"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    const-string/jumbo v2, "zoom_level"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 230
    iput-boolean p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mEnable:Z

    .line 231
    return-void
.end method

.method public whitelist setMicSensitivity(II)Z
    .locals 5
    .param p1, "channel"    # I
    .param p2, "level"    # I

    .line 342
    iget v0, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemMultiMicManager"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 344
    const-string v0, "Current mode is not MODE_ADJUSTING_SENSITIVITY"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v1

    .line 348
    :cond_0
    const/16 v0, -0xc

    if-lt p2, v0, :cond_2

    const/16 v0, 0xc

    if-le p2, v0, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 354
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "sensitivity_level"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "parameters":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 360
    iput p2, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSensitivityLevel:I

    .line 361
    return v3

    .line 349
    .end local v0    # "parameters":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in setMicSensitivity"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1
.end method

.method public whitelist setMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 395
    invoke-static {p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isValidMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in setMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMultiMicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 401
    const-string v1, "l_multi_mic_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 402
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 403
    const-string v1, "audioParam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 405
    .local v0, "builder":Lcom/samsung/android/media/AudioParameter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 407
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mMode:I

    .line 408
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setSoundLocation(I)Z
    .locals 3
    .param p1, "soundLocation"    # I

    .line 431
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 437
    const-string v2, "l_multi_mic_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 438
    const-string v2, "camera_direction"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "parameters":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 443
    iput p1, p0, Lcom/samsung/android/camera/mic/SemMultiMicManager;->mSoundLocation:I

    .line 444
    return v0

    .line 432
    .end local v1    # "parameters":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in setSoundLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMultiMicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    return v0
.end method
