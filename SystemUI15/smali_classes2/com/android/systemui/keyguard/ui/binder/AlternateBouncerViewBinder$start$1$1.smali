.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$start$1$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "alternateBouncerWindowRequired="

    const-string v0, "AlternateBouncerViewBinder"

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$start$1$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->layoutInflater:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d002d

    invoke-virtual {p1, v2, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->windowManager:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x7d9

    const/4 v4, -0x1

    const v7, 0x1000100

    const/4 v8, -0x3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v3, "AlternateBouncerView"

    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p2, 0x33

    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p2, 0x3

    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const p2, 0x20000040

    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p2, " "

    iput-object p2, v9, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->onAttachAddBackGestureHandler:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a00d1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/scrim/ScrimView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerDependencies:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object p0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1;

    iget-object v2, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object v3, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->udfpsAccessibilityOverlayViewModel:Ldagger/Lazy;

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Ldagger/Lazy;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    const p0, 0x7f0a00cf

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/AuthKeyguardMessageArea;

    sget v2, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder;->$r8$clinit:I

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsVisible:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    :cond_1
    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder$bind$1;

    iget-object v2, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->messageAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;Lcom/android/keyguard/AuthKeyguardMessageArea;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/scrim/ScrimView;

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1;

    iget-object v4, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iget-object v5, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iget-object v3, v6, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/scrim/ScrimView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->windowManager:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->onAttachAddBackGestureHandler:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerDependencies:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
