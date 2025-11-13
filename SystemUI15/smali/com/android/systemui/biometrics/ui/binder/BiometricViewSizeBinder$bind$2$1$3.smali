.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $leftGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $midGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $rightGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $topGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field final synthetic $windowManager:Landroid/view/WindowManager;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroid/view/WindowManager;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$view:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$view:Landroid/view/View;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->guidelineBounds:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$windowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v10, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v11, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->$view:Landroid/view/View;

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;-><init>(Landroid/view/WindowManager;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
