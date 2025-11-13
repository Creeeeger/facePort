.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;
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
.field final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic $currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $panelView:Landroid/view/View;

.field final synthetic $pxToDp:F

.field final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "F",
            "Landroid/view/View;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$pxToDp:F

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$view:Landroid/view/View;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$panelView:Landroid/view/View;

    iput-object p11, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$pxToDp:F

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$view:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$panelView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->position:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->size:Lkotlinx/coroutines/flow/Flow;

    sget-object v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$2;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$2;

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v6, v4, v2, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$pxToDp:F

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$view:Landroid/view/View;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$panelView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v7, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v7 .. v17}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;-><init>(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;)V

    iput v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;->label:I

    invoke-virtual {v6, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
