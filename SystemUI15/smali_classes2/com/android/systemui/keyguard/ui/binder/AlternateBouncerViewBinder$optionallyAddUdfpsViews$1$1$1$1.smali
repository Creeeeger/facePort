.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $udfpsA11yOverlayViewModel:Ldagger/Lazy;

.field public final synthetic $udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

.field public final synthetic $view:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Ldagger/Lazy;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$view:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$udfpsA11yOverlayViewModel:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$IconLocation;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$view:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a00d2

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$udfpsA11yOverlayViewModel:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;

    invoke-static {v1, v2}, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder;->bind(Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V

    :cond_0
    const v1, 0x7f0a00d3

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v3, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder;->$r8$clinit:I

    sget-object v3, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v3, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v3, v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->iconView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->bgView:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$1$1;->$udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p0, v6}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v5, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$2;

    invoke-direct {v5, p0, v3, v2, v6}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v5}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3;

    invoke-direct {v2, p0, v4, v6}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_1
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$IconLocation;->width:I

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget v2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$IconLocation;->height:I

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget v8, p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$IconLocation;->top:I

    move-object v3, p0

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    iget v8, p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel$IconLocation;->left:I

    move-object v3, p0

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
