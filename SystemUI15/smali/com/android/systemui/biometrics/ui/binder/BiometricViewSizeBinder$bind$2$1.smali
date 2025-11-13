.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
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

.field final synthetic $iconHolderView:Landroid/view/View;

.field final synthetic $largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $leftGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $midGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $panelView:Landroid/view/View;

.field final synthetic $pxToDp:F

.field final synthetic $rightGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field final synthetic $topGuideline:Landroidx/constraintlayout/widget/Guideline;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field final synthetic $viewsToHideWhenSmall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $windowManager:Landroid/view/WindowManager;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/WindowManager;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroidx/constraintlayout/widget/Guideline;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "F",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$iconHolderView:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$windowManager:Landroid/view/WindowManager;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$view:Landroid/view/View;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewsToHideWhenSmall:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$pxToDp:F

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$panelView:Landroid/view/View;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x3

    move-object/from16 v2, p19

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    move-object/from16 v2, p2

    check-cast v2, Landroid/view/View;

    move-object/from16 v21, p3

    check-cast v21, Lkotlin/coroutines/Continuation;

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;

    move-object v2, v15

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$iconHolderView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$windowManager:Landroid/view/WindowManager;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$view:Landroid/view/View;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewsToHideWhenSmall:Ljava/util/List;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 p1, v15

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 v22, p1

    move-object/from16 p1, v1

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$pxToDp:F

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$panelView:Landroid/view/View;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->L$0:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v9, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$iconHolderView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v3, v3, v9, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$2;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$iconHolderView:Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v3, v5, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$windowManager:Landroid/view/WindowManager;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$view:Landroid/view/View;

    const/16 v16, 0x0

    move-object v5, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v3, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4;

    move-object/from16 v13, p0

    iget-object v6, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewsToHideWhenSmall:Ljava/util/List;

    iget-object v8, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v9, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$iconHolderView:Landroid/view/View;

    iget-object v10, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v11, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;

    iget-object v6, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v8, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v9, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget v10, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$pxToDp:F

    iget-object v11, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$view:Landroid/view/View;

    iget-object v12, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v14, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v15, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$panelView:Landroid/view/View;

    iget-object v13, v13, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v17, 0x0

    move-object v5, v1

    move-object/from16 v16, v13

    move-object v13, v2

    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
