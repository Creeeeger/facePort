.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 11

    const-class v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$store$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$store$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$storeInteractor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    const-class v2, Lcom/android/systemui/volume/config/VolumeConfigs;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/config/VolumeConfigs;

    iget-object v3, v3, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/config/SystemConfigImpl;

    iput-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    const-class v4, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v5, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/view/Window;->clearFlags(I)V

    const v7, 0x10c0128

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v9, 0x7e4

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, -0x3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v9, "VolumePanelExpandWindow"

    invoke-virtual {v7, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v9, -0x1

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f13146f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v3, v3, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, 0x4000400

    or-int/2addr v3, v9

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    invoke-virtual {v5, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v3, 0x7f0d0557

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(I)V

    const v3, 0x7f0a0e67

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iput-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iput-object p0, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    const-class v5, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v5, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    const-class v5, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v5, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-class v4, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    new-instance v4, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/config/VolumeConfigs;

    iget-object p1, p1, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/config/SystemConfigImpl;

    iput-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iget-object v1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    iput-object v1, p1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$1;

    invoke-direct {v1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, p1

    :goto_0
    new-instance p1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;

    invoke-direct {p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget-object p0, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final getStore()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object p1, v3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    new-instance v5, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0a0e84

    invoke-virtual {v3, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v7, v8, v1

    const-string v6, "alpha"

    invoke-static {v3, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3f2b851f    # 0.67f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v7, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;

    invoke-direct {v10, v3, v4}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v4

    new-array v0, v0, [F

    aput v4, v0, v2

    const v4, 0x3f666666    # 0.9f

    aput v4, v0, v1

    const-string/jumbo v4, "scaleX"

    invoke-static {v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v11, v7, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v6, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    invoke-static {p0, v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$1$1;

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "VolumePanelExpandWindow"

    const-string v1, "onStart"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop : panelState.isExpanded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanelExpandWindow"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
