.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;
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

.field final synthetic $adapter:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

.field final synthetic $backgroundView:Landroid/view/View;

.field final synthetic $boundSize:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $cancelButton:Landroid/widget/Button;

.field final synthetic $confirmationButton:Landroid/widget/Button;

.field final synthetic $credentialFallbackButton:Landroid/widget/Button;

.field final synthetic $customizedViewContainer:Landroid/widget/LinearLayout;

.field final synthetic $descriptionView:Landroid/widget/TextView;

.field final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $iconSizeOverride:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $indicatorMessageView:Landroid/widget/TextView;

.field final synthetic $jankListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field final synthetic $logoDescriptionView:Landroid/widget/TextView;

.field final synthetic $logoView:Landroid/widget/ImageView;

.field final synthetic $negativeButton:Landroid/widget/Button;

.field final synthetic $panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

.field final synthetic $retryButton:Landroid/widget/Button;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $textColorError:I

.field final synthetic $textColorHint:I

.field final synthetic $titleView:Landroid/widget/TextView;

.field final synthetic $udfpsGuidanceView:Landroid/view/View;

.field final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/TextView;Lcom/android/systemui/biometrics/AuthPanelController;Landroid/animation/Animator$AnimatorListener;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;IILcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/LinearLayout;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/widget/TextView;",
            "Lcom/android/systemui/biometrics/AuthPanelController;",
            "Landroid/animation/Animator$AnimatorListener;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "II",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$view:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoView:Landroid/widget/ImageView;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoDescriptionView:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$negativeButton:Landroid/widget/Button;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$credentialFallbackButton:Landroid/widget/Button;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$confirmationButton:Landroid/widget/Button;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$retryButton:Landroid/widget/Button;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$adapter:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$boundSize:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$indicatorMessageView:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$jankListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconSizeOverride:Lkotlin/Pair;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$udfpsGuidanceView:Landroid/view/View;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$backgroundView:Landroid/view/View;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move/from16 v1, p26

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorError:I

    move/from16 v1, p27

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorHint:I

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x3

    move-object/from16 v2, p29

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    move-object/from16 v2, p2

    check-cast v2, Landroid/view/View;

    move-object/from16 v31, p3

    check-cast v31, Lkotlin/coroutines/Continuation;

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;

    move-object v2, v15

    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$view:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoView:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoDescriptionView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$negativeButton:Landroid/widget/Button;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$credentialFallbackButton:Landroid/widget/Button;

    move-object/from16 p1, v15

    iget-object v15, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$confirmationButton:Landroid/widget/Button;

    move-object/from16 v32, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$retryButton:Landroid/widget/Button;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$adapter:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$boundSize:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$indicatorMessageView:Landroid/widget/TextView;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$jankListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconSizeOverride:Lkotlin/Pair;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$udfpsGuidanceView:Landroid/view/View;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$backgroundView:Landroid/view/View;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v27, v1

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorError:I

    move/from16 v28, v1

    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorHint:I

    move/from16 v29, v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v30, v0

    invoke-direct/range {v2 .. v31}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/TextView;Lcom/android/systemui/biometrics/AuthPanelController;Landroid/animation/Animator$AnimatorListener;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;IILcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$3:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_9

    :pswitch_2
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    :cond_0
    move-object v13, v12

    move-object v12, v11

    goto/16 :goto_8

    :pswitch_3
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_7

    :pswitch_4
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_6

    :pswitch_5
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto/16 :goto_4

    :pswitch_6
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto/16 :goto_3

    :pswitch_7
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    goto :goto_0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v11, v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->modalities:Lkotlinx/coroutines/flow/Flow;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v11, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_1

    return-object v1

    :cond_1
    :goto_0
    check-cast v11, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {v11}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFingerprint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v12, v12, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-virtual {v11}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasSfps()Z

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v13, :cond_2

    const v12, 0x7f120006

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v12, 0x7f120007

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v12, 0x7f120008

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v12, 0x7f120009

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v12, 0x7f12000a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const v12, 0x7f12000b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const v12, 0x7f12000c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v12, 0x7f120010

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const v12, 0x7f120011

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v12, 0x7f120012

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const v12, 0x7f120013

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const v12, 0x7f120014

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v12, 0x7f120015

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const v12, 0x7f120016

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const v12, 0x7f120017

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const v12, 0x7f120018

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const v12, 0x7f120019

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const v12, 0x7f12001a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    filled-new-array/range {v13 .. v30}, [Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_1

    :cond_2
    const v12, 0x7f12001e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f12001f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f120021

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f120022

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-instance v5, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda7;

    invoke-direct {v5, v10, v14, v13, v15}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda7;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v15, v5, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;)Lcom/airbnb/lottie/LottieTask;

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoView:Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v10, v10, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->logo:Lkotlinx/coroutines/flow/Flow;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput v9, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v10, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_4

    return-object v1

    :cond_4
    move-object v12, v2

    move-object v2, v5

    :goto_3
    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoDescriptionView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->logoDescription:Lkotlinx/coroutines/flow/Flow;

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v13, 0x1e

    if-gt v10, v13, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const-string v14, "..."

    invoke-static {v5, v13, v10, v14}, Lkotlin/text/StringsKt__StringsKt;->replaceRange(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->title:Lkotlinx/coroutines/flow/Flow;

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->subtitle:Lkotlinx/coroutines/flow/Flow;

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    :goto_7
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->description:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    return-object v1

    :goto_8
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    sget-object v11, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder;

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->contentView:Lkotlinx/coroutines/flow/Flow;

    iput-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$3:Ljava/lang/Object;

    const/4 v10, 0x7

    iput v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_9

    return-object v1

    :cond_9
    :goto_9
    check-cast v5, Landroid/hardware/biometrics/PromptContentView;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;

    invoke-direct {v11, v5, v10, v4}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;-><init>(Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v11}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_a
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$negativeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$1;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v5, v10}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$2;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v5, v10}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$2;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$credentialFallbackButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$3;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v5, v10, v11}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$confirmationButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$4;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {v5, v10}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$4;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$retryButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$5;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v5, v10, v11}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$5;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$adapter:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iput-object v12, v2, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iput-object v5, v2, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-interface {v13}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;

    invoke-direct {v10, v2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;)V

    invoke-virtual {v5, v10}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$boundSize:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v5, :cond_e

    const/4 v5, 0x1

    iput-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$view:Landroid/view/View;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    new-array v15, v6, [Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    aput-object v4, v15, v10

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoDescriptionView:Landroid/widget/TextView;

    aput-object v4, v15, v5

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    aput-object v4, v15, v9

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    aput-object v4, v15, v3

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    aput-object v4, v15, v8

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    aput-object v4, v15, v7

    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    const/16 v4, 0xc

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoView:Landroid/widget/ImageView;

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$logoDescriptionView:Landroid/widget/TextView;

    const/4 v15, 0x1

    aput-object v5, v4, v15

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    aput-object v5, v4, v9

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    aput-object v5, v4, v3

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$indicatorMessageView:Landroid/widget/TextView;

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$negativeButton:Landroid/widget/Button;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const/16 v5, 0x9

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$retryButton:Landroid/widget/Button;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$confirmationButton:Landroid/widget/Button;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$credentialFallbackButton:Landroid/widget/Button;

    aput-object v6, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Required value was null."

    if-eqz v2, :cond_d

    move-object/from16 v24, v2

    check-cast v24, Landroid/view/WindowManager;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v36, v2

    check-cast v36, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    const v2, 0x7f0a0615

    invoke-virtual {v11, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroidx/constraintlayout/widget/Guideline;

    const v4, 0x7f0a0d58

    invoke-virtual {v11, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Landroidx/constraintlayout/widget/Guideline;

    const v4, 0x7f0a09d1

    invoke-virtual {v11, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Landroidx/constraintlayout/widget/Guideline;

    const v5, 0x7f0a070e

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Landroidx/constraintlayout/widget/Guideline;

    const v5, 0x7f0a0180

    invoke-virtual {v11, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v21

    const v5, 0x7f0a08ae

    invoke-virtual {v11, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700cd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    invoke-static {v15, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v32

    mul-float v7, v7, v32

    float-to-int v7, v7

    new-instance v33, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct/range {v33 .. v33}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v9, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Bottom:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v9, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;

    invoke-direct {v9, v8, v7}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    move-object v9, v11

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    new-instance v15, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v15}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {v15, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    invoke-virtual {v15, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    invoke-virtual {v15, v4, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    new-instance v31, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct/range {v31 .. v31}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v11}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;

    move-object/from16 v18, v2

    const/16 v37, 0x0

    move-object/from16 v19, v14

    move-object/from16 v20, v21

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v11

    move-object/from16 v30, v15

    move-object/from16 v34, v8

    move-object/from16 v35, v6

    invoke-direct/range {v18 .. v37}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    goto :goto_a

    :cond_b
    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;

    move-object/from16 v18, v2

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move-object/from16 v30, v15

    move-object/from16 v34, v8

    move-object/from16 v35, v6

    invoke-direct/range {v18 .. v36}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$$inlined$doOnLayout$1;-><init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/WindowManager;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_a
    invoke-interface {v13}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconSizeOverride:Lkotlin/Pair;

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v10, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v13}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {v5, v6, v7, v4}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v4, v5, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;

    move-object/from16 v18, v3

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$udfpsGuidanceView:Landroid/view/View;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    move-object/from16 v20, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$backgroundView:Landroid/view/View;

    move-object/from16 v21, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object/from16 v22, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$indicatorMessageView:Landroid/widget/TextView;

    move-object/from16 v23, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$view:Landroid/view/View;

    move-object/from16 v24, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$credentialFallbackButton:Landroid/widget/Button;

    move-object/from16 v25, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$negativeButton:Landroid/widget/Button;

    move-object/from16 v26, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$confirmationButton:Landroid/widget/Button;

    move-object/from16 v27, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    move-object/from16 v28, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$retryButton:Landroid/widget/Button;

    move-object/from16 v29, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v31, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v32, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    move-object/from16 v33, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v34, v4

    iget v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorError:I

    move/from16 v35, v4

    iget v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$textColorHint:I

    move/from16 v36, v4

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v37, v4

    const/16 v38, 0x0

    move-object/from16 v30, v12

    invoke-direct/range {v18 .. v38}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8;-><init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;Landroid/view/accessibility/AccessibilityManager;IILcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0x8

    iput v4, v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1;->label:I

    invoke-static {v13, v2, v3, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    return-object v1

    :cond_f
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
