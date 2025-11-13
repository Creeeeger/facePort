.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
.super Ljava/lang/Object;
.source "SemDisplaySolutionManager.java"


# static fields
.field private static blacklist RETURN_ERROR:J = 0x0L

.field private static blacklist RETURN_ERROR_F:F = 0.0f

.field private static blacklist RETURN_ERROR_I:I = 0x0

.field public static final blacklist SUPPORT_CHANGABLE_NORMAL_AUTO_BRIGHTNESS:I = 0x2

.field public static final blacklist SUPPORT_CHANGABLE_NUMBER_AUTO_BRIGHTNESS:I = 0x1

.field public static final blacklist SUPPORT_ONLY_MANUAL_BRIGHTNESS:I = 0x0

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL:I = 0x3

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V3:I = 0x4

.field public static final blacklist SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V4:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemDisplaySolutionManager"


# instance fields
.field final blacklist mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string v0, "SemDisplaySolutionManager"

    const-string v1, "In Constructor Stub-Service(ISemDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 67
    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 449
    const-string v0, "SemDisplaySolutionManager"

    const-string v1, "Error SemDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    return-void
.end method


# virtual methods
.method public blacklist getAlphaMaskLevel(FFF)F
    .locals 2
    .param p1, "CurrentPlatformBrightnessValue"    # F
    .param p2, "FingerPrintPlatformValue"    # F
    .param p3, "br_ctrl"    # F

    .line 178
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_0

    .line 179
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v0

    .line 183
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAlphaMaskLevel(FFF)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public blacklist getAutoCurrentLimitOffModeEnabled()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getDouAppModeEnable()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    return v1

    .line 108
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getDouAppModeEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getFingerPrintBacklightValue(I)F
    .locals 2
    .param p1, "brightnessNits"    # I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_0

    .line 164
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v0

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public blacklist getGalleryModeEnable()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getGalleryModeEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getOnPixelRatioValueForPMS()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 134
    return-object v1

    .line 138
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getVideoEnhancerSettingState(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v0, :cond_0

    .line 149
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return v0

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_I:I

    return v1
.end method

.method public blacklist getVideoModeEnable()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 78
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoModeEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isMdnieScenarioControlServiceEnabled()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    return v1

    .line 199
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist onAutoCurrentLimitOffMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChanged(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChangedInt(I)V
    .locals 1
    .param p1, "value"    # I

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onAutoCurrentLimitStateChangedWithBrightness(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onBurnInPreventionDisabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onBurnInPreventionDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onDetailVeiwStateChanged(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onDetailVeiwStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setAutoCurrentLimitOffModeEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setDouAppModeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setDouAppModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setEyeComfortWeightingFactor(F)V
    .locals 1
    .param p1, "scaleValue"    # F

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setGalleryModeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setHighDynamicRangeMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setIRCompensationMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setIRCompensationMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMdnieScenarioControlServiceEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMultipleScreenBrightnessValueForHDR(F)V
    .locals 1
    .param p1, "scalefactorValueHDR"    # F

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightnessValueForHDR(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 398
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setScreenBrightnessForPreview(I)V
    .locals 1
    .param p1, "settingValue"    # I

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setSleepPatternBLF(Ljava/lang/String;JJF)V
    .locals 7
    .param p1, "mWeekType"    # Ljava/lang/String;
    .param p2, "mBedtime"    # J
    .param p4, "mWakeupTime"    # J
    .param p6, "mConfidence"    # F

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 442
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setSleepPatternBLF(Ljava/lang/String;JJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_0
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 434
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setVideoModeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    .line 313
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
