.class public final Lcom/samsung/android/hardware/display/SemMdnieManager;
.super Ljava/lang/Object;
.source "SemMdnieManager.java"


# static fields
.field public static final whitelist CONTENT_MODE_BROWSER:I = 0x8

.field public static final whitelist CONTENT_MODE_CAMERA:I = 0x4

.field public static final blacklist CONTENT_MODE_DMB:I = 0x14

.field public static final whitelist CONTENT_MODE_EBOOK:I = 0x9

.field public static final whitelist CONTENT_MODE_GALLERY:I = 0x6

.field public static final blacklist CONTENT_MODE_GAME_HIGH:I = 0xd

.field public static final blacklist CONTENT_MODE_GAME_LOW:I = 0xb

.field public static final blacklist CONTENT_MODE_GAME_MID:I = 0xc

.field public static final whitelist CONTENT_MODE_UI:I = 0x0

.field public static final whitelist CONTENT_MODE_VIDEO:I = 0x1

.field public static final blacklist CONTENT_MODE_VIDEO_ENHANCER:I = 0xe

.field public static final blacklist CONTENT_MODE_VIDEO_ENHANCER_2:I = 0xf

.field public static final blacklist MDNIE_SUPPORT_BLUE_FILTER:I = 0x1000

.field public static final blacklist MDNIE_SUPPORT_COLOR_ADJUSTMENT:I = 0x800

.field public static final blacklist MDNIE_SUPPORT_CONTENT_GAME_MODE:I = 0x2

.field public static final blacklist MDNIE_SUPPORT_CONTENT_MODE:I = 0x1

.field public static final blacklist MDNIE_SUPPORT_CONTENT_SWA_MODE:I = 0x8

.field public static final blacklist MDNIE_SUPPORT_CONTENT_VIDEO_ENGANCE_MODE:I = 0x4

.field public static final blacklist MDNIE_SUPPORT_GRAYSCALE:I = 0x200

.field public static final blacklist MDNIE_SUPPORT_HDR:I = 0x4000

.field public static final blacklist MDNIE_SUPPORT_HMT:I = 0x2000

.field public static final blacklist MDNIE_SUPPORT_LIGHT_NOTIFICATION:I = 0x8000

.field public static final blacklist MDNIE_SUPPORT_NEGATIVE:I = 0x100

.field public static final blacklist MDNIE_SUPPORT_READING_MODE:I = 0x20

.field public static final blacklist MDNIE_SUPPORT_SCREENCURTAIN:I = 0x400

.field public static final blacklist MDNIE_SUPPORT_SCREEN_MODE:I = 0x10

.field private static blacklist RETURN_ERROR:I = 0x0

.field public static final whitelist SCREEN_MODE_ADAPTIVE:I = 0x4

.field public static final whitelist SCREEN_MODE_AMOLED_CINEMA:I = 0x0

.field public static final whitelist SCREEN_MODE_AMOLED_PHOTO:I = 0x1

.field public static final whitelist SCREEN_MODE_BASIC:I = 0x2

.field public static final whitelist SCREEN_MODE_NATURAL:I = 0x3

.field public static final whitelist SCREEN_MODE_READING:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemMdnieManager"


# instance fields
.field final blacklist mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/hardware/display/ISemMdnieManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/hardware/display/ISemMdnieManager;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string v0, "SemMdnieManager"

    const-string v1, "In Constructor Stub-Service(ISemMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    .line 173
    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 624
    const-string v0, "SemMdnieManager"

    const-string v1, "Error SemMdnieManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    return-void
.end method


# virtual methods
.method public blacklist afpcDataApply()Z
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 586
    return v1

    .line 589
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataApply()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist afpcDataOff()Z
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 600
    return v1

    .line 603
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist afpcDataVerify()Z
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 558
    return v1

    .line 561
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataVerify()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist afpcDataWrite()Z
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    return v1

    .line 575
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataWrite()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist afpcWorkOff()Z
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 614
    return v1

    .line 617
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcWorkOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist disableNightMode()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 350
    return v1

    .line 353
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->disableNightMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist enableNightMode(I)Z
    .locals 3
    .param p1, "opacityIndex"    # I

    .line 334
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    return v1

    .line 338
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getContentMode()I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    .line 194
    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    .line 197
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getContentMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public blacklist getNightModeBlock()Z
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 378
    return v1

    .line 381
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeBlock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getNightModeStep()I
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    .line 406
    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    .line 409
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeStep()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public blacklist getScreenMode()I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    .line 180
    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    .line 183
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getScreenMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public whitelist getSupportedContentMode()[I
    .locals 2

    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 255
    .local v0, "emptyArray":[I
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 256
    return-object v0

    .line 259
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedContentMode()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getSupportedScreenMode()[I
    .locals 2

    .line 223
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 224
    .local v0, "emptyArray":[I
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 225
    return-object v0

    .line 228
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedScreenMode()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist isContentModeSupported()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    return v1

    .line 243
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isContentModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isNightModeSupported()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 319
    return v1

    .line 322
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isNightModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isScreenModeSupported()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 212
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isScreenModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setAmoledACL(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 303
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 304
    return v1

    .line 307
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setAmoledACL(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setColorFadeNightDim(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 433
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    return v1

    .line 437
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorFadeNightDim(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setColorVision(ZII)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "color"    # I
    .param p3, "level"    # I

    .line 447
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 448
    return v1

    .line 451
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorVision(ZII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist setContentMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 290
    return v1

    .line 293
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setContentMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setLightNotificationMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 531
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    return v1

    .line 535
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setLightNotificationMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setNightMode(ZI)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .line 419
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    return v1

    .line 423
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setNightModeBlock(Z)Z
    .locals 2
    .param p1, "support"    # Z

    .line 363
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 364
    return v1

    .line 367
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeBlock(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setNightModeStep(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 391
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 392
    return v1

    .line 395
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeStep(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist setScreenMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 272
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 276
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setScreenMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setmDNIeAccessibilityMode(IZ)Z
    .locals 2
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .line 517
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 518
    return v1

    .line 521
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setmDNIeColorBlind(Z[I)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .line 461
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return v1

    .line 465
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setmDNIeEmergencyMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 503
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    return v1

    .line 507
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeEmergencyMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setmDNIeNegative(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 475
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 476
    return v1

    .line 479
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeNegative(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist setmDNIeScreenCurtain(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 489
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return v1

    .line 493
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist updateAlwaysOnDisplay(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "aodbrightness"    # I

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->updateAlwaysOnDisplay(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
