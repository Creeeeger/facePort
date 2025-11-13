.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBarHeight:I

.field public final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

.field public final mDesktopManagerCallback:Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

.field public final mExt:Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mInsetsSourceOwner:Landroid/os/Binder;

.field public mIsAttached:Z

.field public final mLaunchAnimationContainer:Landroid/view/ViewGroup;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/fragments/FragmentService;Landroid/content/res/Resources;Ljava/util/Optional;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowView;",
            "Landroid/view/WindowManager;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, -0x1

    iput p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    new-instance p7, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    const/4 v0, 0x0

    invoke-direct {p7, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;-><init>(I)V

    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    new-instance p7, Landroid/os/Binder;

    invoke-direct {p7}, Landroid/os/Binder;-><init>()V

    iput-object p7, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    new-instance p7, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    iput-object p6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    const p3, 0x7f0a0c17

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    if-gez p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    invoke-virtual {p8, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p9, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p10, p7}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    invoke-interface {p10}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    iput-object p11, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mExt:Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIsAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    if-eqz v1, :cond_3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v3, -0x40001

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_2

    :cond_4
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_2
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v3, 0x3

    if-gt v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v4, :cond_6

    array-length v5, v4

    move v6, v0

    :goto_5
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    invoke-static {v0, v3, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mShouldHideNotificationShadeInMirror:Z

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method public final calculateStatusBarLocationsForAllRotations()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffffff8

    const/4 v6, -0x3

    const/4 v2, -0x1

    const/16 v4, 0x7d0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v2, "StatusBar"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    new-instance v3, Landroid/view/InsetsFrameProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v1, v4, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_0
    new-array v2, v2, [Landroid/view/InsetsFrameProvider;

    new-instance v4, Landroid/view/InsetsFrameProvider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-direct {v4, v5, v1, v6}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v4, Landroid/view/InsetsFrameProvider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v6

    invoke-direct {v4, v5, v1, v6}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-static {v1, p1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object v3, v2, p1

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mExt:Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowControllerExt;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x2000

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_1
    return-object v0
.end method

.method public final setAODAmbientWallpaperState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAODAmbientWallpaperState: wakingUp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StatusBarWindowController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public final setForceStatusBarVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void
.end method
