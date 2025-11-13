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

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/hardware/display/ISemMdnieManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "SemMdnieManager"

    const-string v1, "In Constructor Stub-Service(ISemMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "SemMdnieManager"

    const-string v1, "Error SemMdnieManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist afpcDataApply()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataApply()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist afpcDataOff()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist afpcDataVerify()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataVerify()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist afpcDataWrite()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcDataWrite()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist afpcWorkOff()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->afpcWorkOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist disableNightMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->disableNightMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist enableNightMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist getContentMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getContentMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public blacklist getNightModeBlock()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeBlock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist getNightModeStep()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getNightModeStep()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public blacklist getScreenMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getScreenMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public whitelist getSupportedContentMode()[I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedContentMode()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public whitelist getSupportedScreenMode()[I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedScreenMode()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public whitelist isContentModeSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isContentModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist isNightModeSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isNightModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist isScreenModeSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isScreenModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setColorFadeNightDim(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorFadeNightDim(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setColorVision(ZII)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setColorVision(ZII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist setContentMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setContentMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setEadMode(I[I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setEadMode(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setEadModeSub(I[I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setEadModeSub(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setExtraDimMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setExtraDimMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setHighBrightnessMode(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setHighBrightnessMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public blacklist setHighDynamicRangeMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setHighDynamicRangeMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setLightNotificationMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setLightNotificationMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setNightMode(ZI)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setNightModeBlock(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeBlock(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setNightModeStep(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightModeStep(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public whitelist setScreenMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setScreenMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setWhiteRGB(IIIIII)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setWhiteRGB(IIIIII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setmDNIeAccessibilityMode(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setmDNIeColorBlind(Z[I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setmDNIeEmergencyMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeEmergencyMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setmDNIeNegative(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeNegative(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist setmDNIeScreenCurtain(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method public blacklist updateAlwaysOnDisplay(ZI)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->updateAlwaysOnDisplay(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
