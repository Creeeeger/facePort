.class public final Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field public mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

.field public final mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public mIsBouncerShowing:Z

.field public mIsFullScreenBlurShowing:Z

.field public mIsMirrorVisible:Z

.field public final mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

.field public mPrevWallpaper:Landroid/graphics/Bitmap;

.field public final mRetryBouncerBlur:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSizePoint:Landroid/graphics/Point;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardFoldController;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;-><init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mRetryBouncerBlur:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsBouncerShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsMirrorVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsFullScreenBlurShowing:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p2, Lcom/android/systemui/blur/QSColorCurve;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    new-instance p2, Lcom/android/systemui/blur/BouncerColorCurve;

    invoke-direct {p2}, Lcom/android/systemui/blur/BouncerColorCurve;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p2, :cond_0

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iget-object v1, v1, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    iget-boolean v1, v1, Lcom/android/systemui/blur/SecQpBlurController;->mIsWakingUp:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    if-ne p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getPanelScreenShot(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->BOUNCER:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    const-string p2, "CapturedBlurContainerController"

    const-string v1, "Send to retry wallpaper screenshot"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mRetryBouncerBlur:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "Apply previous wallpaper screenshot"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->setBlurEffectOnBitmap(Landroid/graphics/Bitmap;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getPanelScreenShot(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const-string v1, "CapturedBlurContainerController"

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    if-ne p1, v0, :cond_0

    const-string p1, "getShadeScreenshot() SHADE WM screenshot"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getWMScreenshot()Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "getLiveWallpaperScreenshot() isExternalLiveWallpaper WM screenshot"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getWMScreenshot()Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_7

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string p0, "Power saving mode is set."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p0, v2

    goto/16 :goto_7

    :cond_2
    const-string v0, "createImage1: live screenshot = "

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    :try_start_0
    sget v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/app/WallpaperManager;->semGetScreenshotFileDescriptor(IILandroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    :try_start_1
    const-string v0, "createImage: failed to get screenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_2
    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createImage: e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_5
    move-object v4, v2

    :goto_6
    if-nez v4, :cond_7

    const-string p0, "Wallpaper capture failed."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getNormalWallpaperScreenShot() type == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    ushr-int/lit8 p1, p1, 0x18

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    move-object v4, p1

    :cond_8
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPrevWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    invoke-static {v4, p0, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public final getWMScreenshot()Landroid/graphics/Bitmap;
    .locals 10

    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v0, v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mSizePoint:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_2
    move v6, p0

    goto :goto_3

    :cond_2
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 p0, 0x7d0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v1, v2

    move v2, p0

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method

.method public final setAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->FULL_SCREEN:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    if-ne p2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsBouncerShowing:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsMirrorVisible:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;Z)V

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setBlurEffectOnBitmap(Landroid/graphics/Bitmap;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBlurEffectOnBitmap : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapturedBlurContainerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mLastBlurType:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7

    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    invoke-virtual {p2, v1}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v3, p2, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-static {v1}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$mhasCustomColorForBackground(Lcom/android/systemui/blur/SecQpBlurController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    if-eqz v0, :cond_1

    iget v3, p2, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    iget v3, p2, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    :goto_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    iget v3, p2, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    :goto_2
    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v0, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    iget v4, p2, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    :goto_3
    invoke-virtual {v1, v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget v2, p2, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    :goto_4
    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget v3, p2, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    :goto_5
    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    goto :goto_7

    :cond_7
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    goto :goto_6

    :cond_8
    const-string p2, "background"

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/blur/BouncerColorCurve;->setFraction(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v1, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v1, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v1, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v1, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget v1, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    iget p2, p2, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    invoke-virtual {v0, p2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    :goto_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final updateContainerVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsBouncerShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsFullScreenBlurShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mPanelBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    iget-boolean v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
