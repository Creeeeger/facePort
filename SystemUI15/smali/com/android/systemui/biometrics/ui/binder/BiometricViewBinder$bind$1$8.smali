.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;
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

.field final synthetic $backgroundView:Landroid/view/View;

.field final synthetic $cancelButton:Landroid/widget/Button;

.field final synthetic $confirmationButton:Landroid/widget/Button;

.field final synthetic $credentialFallbackButton:Landroid/widget/Button;

.field final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $indicatorMessageView:Landroid/widget/TextView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field final synthetic $modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

.field final synthetic $negativeButton:Landroid/widget/Button;

.field final synthetic $retryButton:Landroid/widget/Button;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $textColorError:I

.field final synthetic $textColorHint:I

.field final synthetic $udfpsGuidanceView:Landroid/view/View;

.field final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;Landroid/view/accessibility/AccessibilityManager;IILcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroid/view/View;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/biometrics/shared/model/BiometricModalities;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Landroid/widget/TextView;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "II",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$udfpsGuidanceView:Landroid/view/View;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$backgroundView:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$indicatorMessageView:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$credentialFallbackButton:Landroid/widget/Button;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$negativeButton:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$confirmationButton:Landroid/widget/Button;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$cancelButton:Landroid/widget/Button;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$retryButton:Landroid/widget/Button;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$subtitleView:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v1, p17

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorError:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorHint:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    move-object/from16 v2, p20

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v21, p2

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;

    move-object v1, v15

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$udfpsGuidanceView:Landroid/view/View;

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$backgroundView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$indicatorMessageView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$credentialFallbackButton:Landroid/widget/Button;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$negativeButton:Landroid/widget/Button;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$confirmationButton:Landroid/widget/Button;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$cancelButton:Landroid/widget/Button;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$retryButton:Landroid/widget/Button;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 p2, v15

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v22, p2

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$subtitleView:Landroid/widget/TextView;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorError:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorHint:I

    move/from16 v19, v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v20, v0

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v21}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;-><init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;Landroid/view/accessibility/AccessibilityManager;IILcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->L$0:Ljava/lang/Object;

    return-object v1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$1;

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$backgroundView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$2;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$indicatorMessageView:Landroid/widget/TextView;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$3;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$4;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$credentialFallbackButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$4;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$5;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$negativeButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$5;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$6;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$confirmationButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$6;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$7;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$cancelButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$7;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$8;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$negativeButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$8;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$9;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$retryButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$9;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$10;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$credentialFallbackButton:Landroid/widget/Button;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$10;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$11;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$11;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$subtitleView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$backgroundView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$indicatorMessageView:Landroid/widget/TextView;

    iget v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorError:I

    iget v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$textColorHint:I

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    invoke-direct/range {v23 .. v29}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/TextView;IILandroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$udfpsGuidanceView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$14;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v4, v1, v5, v7}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$14;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/accessibility/AccessibilityManager;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$15;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$15;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$view:Landroid/view/View;

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$17;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v2, v4, v0, v6}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$17;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
