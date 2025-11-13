.class public Lcom/android/systemui/settings/brightness/BrightnessDialog;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final DIALOG_TIMEOUT_MILLIS:I = 0xbb8


# instance fields
.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    new-instance p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x7f140614

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SecBrightnessDialogController"

    const-string v3, "registerUpdateMonitor"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->keyguardUpdateMonitor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->updateMonitorCallback:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const v1, 0x7f0d035e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0a01d1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070bb9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070b65

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v4}, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {v4}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-interface {v0, v4}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->dialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v4, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->brightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V

    invoke-static {v0, p1, v1}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0xdd

    if-ne p1, v0, :cond_0

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0xdc

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    if-eqz p0, :cond_2

    const-string v0, "SecBrightnessDialogController"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->secBrightnessDialogController:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    if-eqz p0, :cond_2

    const-string v0, "SecBrightnessDialogController"

    const-string/jumbo v1, "unregisterUpdateMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->keyguardUpdateMonitor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->updateMonitorCallback:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

    :cond_2
    return-void
.end method
