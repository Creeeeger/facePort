.class public final Lcom/android/systemui/controls/ui/ControlViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ATTR_DISABLED:[I

.field public static final ATTR_ENABLED:[I

.field public static final FORCE_PANEL_DEVICES:Ljava/util/Set;


# instance fields
.field public baseLayer:Landroid/graphics/drawable/GradientDrawable;

.field public behavior:Lcom/android/systemui/controls/ui/Behavior;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

.field public clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final currentUserId:I

.field public cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field public final icon:Landroid/widget/ImageView;

.field public isLoading:Z

.field public lastAction:Landroid/service/controls/actions/ControlAction;

.field public lastChallengeDialog:Landroid/app/Dialog;

.field public final layout:Landroid/view/ViewGroup;

.field public nextStatusText:Ljava/lang/CharSequence;

.field public final onDialogCancel:Lkotlin/jvm/functions/Function0;

.field public final secControlViewHolder$delegate:Lkotlin/Lazy;

.field public stateAnimator:Landroid/animation/ValueAnimator;

.field public final status:Landroid/widget/TextView;

.field public statusAnimator:Landroid/animation/Animator;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final toggleBackgroundIntensity:F

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final uid:I

.field public visibleDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    iput p7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    iput p8, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->currentUserId:I

    new-instance p2, Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-direct {p2, p8}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f090008

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    const p2, 0x7f0a0505

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    const p2, 0x7f0a0c0e

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const-string p3, ""

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    const p3, 0x7f0a0d34

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    const p5, 0x7f0a0c99

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    new-instance p6, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    new-instance p6, Lcom/android/systemui/controls/ui/ControlViewHolder$secControlViewHolder$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$secControlViewHolder$2;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-static {p6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->secControlViewHolder$delegate:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->initClipLayerAndBaseLayer()Lkotlin/Pair;

    move-result-object p6

    invoke-virtual {p6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/graphics/drawable/ClipDrawable;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/graphics/drawable/GradientDrawable;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p6, 0x7f070f51

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f07027d

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p7, 0x7f07027a

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p6

    sub-int/2addr p0, p1

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p0, p4

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget-object p0, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070f52

    const p1, 0x3f8ccccd    # 1.1f

    invoke-static {p5, p0, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    invoke-static {p3, p0, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    invoke-static {p2, p0, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public static findBehaviorClass$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ILandroid/service/controls/templates/ControlTemplate;I)Ljava/util/function/Supplier;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$1;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$2;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$2;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$4;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    move-object p0, p1

    goto :goto_0

    :cond_2
    const/16 p0, 0x32

    if-ne p3, p0, :cond_3

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$5;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$5;

    goto :goto_0

    :cond_3
    instance-of p0, p2, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$6;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$6;

    goto :goto_0

    :cond_4
    instance-of p0, p2, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$7;

    goto :goto_0

    :cond_5
    instance-of p0, p2, Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$8;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$8;

    goto :goto_0

    :cond_6
    instance-of p0, p2, Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$9;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$9;

    goto :goto_0

    :cond_7
    instance-of p0, p2, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$10;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$10;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$11;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$findBehaviorClass$11;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final action(Landroid/service/controls/actions/ControlAction;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    if-nez v1, :cond_3

    const-string p0, "ControlsBindingControllerImpl"

    const-string p1, "No actions can occur outside of an active subscription. Ignoring."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    :goto_2
    return-void
.end method

.method public final animateStatusChange(ZLkotlin/jvm/functions/Function0;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    const/4 v2, 0x2

    const-string v3, "alpha"

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array p2, v1, [F

    const v1, 0x3ee66666    # 0.45f

    aput v1, p2, v0

    invoke-static {p1, v3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x384

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$fadeOut$1$1;

    invoke-direct {v7, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$fadeOut$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v7, v1, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v0

    invoke-static {p2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    aput-object p2, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    :goto_0
    return-void
.end method

.method public final applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V
    .locals 14

    move-object v8, p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v0

    :goto_1
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v2, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    iget-object v3, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v9

    :goto_2
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, p1

    invoke-static {v2, v3, v0, p1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v10

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, v10, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v3, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v9

    :goto_3
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    move v12, v11

    goto :goto_4

    :cond_4
    move/from16 v12, p3

    :goto_4
    new-instance v13, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p2

    move-object v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06061f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    if-eqz p2, :cond_7

    iget-object v1, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v1, :cond_5

    move-object v9, v1

    :cond_5
    iget-object v1, v9, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_6

    const v2, 0x101009e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_6
    iget-object v1, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iget v3, v10, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    instance-of v3, v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    if-eqz v3, :cond_8

    iget v3, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    invoke-static {v0, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_8
    move v4, v0

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    if-eqz v12, :cond_c

    instance-of v0, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    move v3, v0

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    move v5, v0

    goto :goto_8

    :cond_b
    move v5, v4

    :goto_8
    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v6

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getAlpha()I

    move-result v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;

    move-object v0, v10

    move v1, v3

    move v3, v5

    move v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;-><init>(IIIIFLcom/android/systemui/controls/ui/ControlViewHolder;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$2;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x2bc

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    iput-object v9, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    goto :goto_9

    :cond_c
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    instance-of v0, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_d

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_d
    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, v8, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Ljava/util/function/Supplier;I)Lcom/android/systemui/controls/ui/Behavior;
    .locals 3

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controls/ui/Behavior;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-interface {p2, p0}, Lcom/android/systemui/controls/ui/Behavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object p1, p2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_2

    move-object v0, p0

    :cond_2
    invoke-interface {p1, v0, p3}, Lcom/android/systemui/controls/ui/Behavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V

    return-object p1
.end method

.method public final getControlStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    :cond_2
    return-object v0
.end method

.method public final getDeviceType()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p0

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    :goto_2
    return p0
.end method

.method public final getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->secControlViewHolder$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;

    return-object p0
.end method

.method public final setErrorStatus()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setStatusText(Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final updateContentDescription()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateStatusRow$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p5}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p5

    :goto_0
    if-eqz p2, :cond_2

    iget-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez p5, :cond_7

    instance-of p2, p3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result p1

    const/16 p2, 0x34

    if-eq p1, p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public final usePanel()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
