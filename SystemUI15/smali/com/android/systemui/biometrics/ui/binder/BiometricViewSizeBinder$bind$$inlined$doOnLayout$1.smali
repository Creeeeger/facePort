.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $accessibilityManager$inlined:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic $currentPosition$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $currentSize$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $flipConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $iconHolderView$inlined:Landroid/view/View;

.field public final synthetic $largeConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $leftGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $mediumConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $midGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $panelView$inlined:Landroid/view/View;

.field public final synthetic $pxToDp$inlined:F

.field public final synthetic $rightGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $smallConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $topGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $view$inlined:Landroid/view/View;

.field public final synthetic $viewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field public final synthetic $viewsToHideWhenSmall$inlined:Ljava/util/List;

.field public final synthetic $windowManager$inlined:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$view$inlined:Landroid/view/View;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$viewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$iconHolderView$inlined:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$mediumConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$smallConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$windowManager$inlined:Landroid/view/WindowManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$leftGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$rightGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$topGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$midGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$viewsToHideWhenSmall$inlined:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$largeConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$flipConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$pxToDp$inlined:F

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$currentSize$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$currentPosition$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$panelView$inlined:Landroid/view/View;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$accessibilityManager$inlined:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$view$inlined:Landroid/view/View;

    move-object v11, v15

    new-instance v14, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$viewModel$inlined:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$iconHolderView$inlined:Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$mediumConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$smallConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$windowManager$inlined:Landroid/view/WindowManager;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$leftGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$rightGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$topGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$midGuideline$inlined:Landroidx/constraintlayout/widget/Guideline;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$viewsToHideWhenSmall$inlined:Ljava/util/List;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$largeConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 p1, v14

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$flipConstraintSet$inlined:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 v21, p1

    move-object/from16 v16, v15

    iget v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$pxToDp$inlined:F

    move-object/from16 v22, v16

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$currentSize$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$currentPosition$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$panelView$inlined:Landroid/view/View;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;->$accessibilityManager$inlined:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v20}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v21

    move-object/from16 v0, v22

    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
