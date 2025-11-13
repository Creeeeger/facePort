.class final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;
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
.field final synthetic $animatePanel:Z

.field final synthetic $cancelButton:Landroid/widget/Button;

.field final synthetic $customizedViewContainer:Landroid/widget/LinearLayout;

.field final synthetic $descriptionView:Landroid/widget/TextView;

.field final synthetic $emergencyButtonView:Landroid/widget/Button;

.field final synthetic $errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $errorView:Landroid/widget/TextView;

.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $iconView:Landroid/widget/ImageView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field final synthetic $maxErrorDuration:J

.field final synthetic $panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $titleView:Landroid/widget/TextView;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/biometrics/AuthPanelController;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Landroid/widget/TextView;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/LinearLayout;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/Button;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;J",
            "Landroid/widget/TextView;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/biometrics/ui/CredentialView$Host;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    iput-boolean v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$emergencyButtonView:Landroid/widget/Button;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    const/4 v1, 0x3

    move-object/from16 v2, p18

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    move-object/from16 v2, p2

    check-cast v2, Landroid/view/View;

    move-object/from16 v20, p3

    check-cast v20, Lkotlin/coroutines/Continuation;

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;

    move-object v2, v15

    iget-boolean v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$emergencyButtonView:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    move-object/from16 v21, v15

    move-wide v15, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    move-object/from16 v19, v0

    move-object/from16 v2, p2

    invoke-direct/range {v2 .. v20}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;-><init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->label:I

    if-eqz v4, :cond_1

    if-ne v4, v2, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    iget-boolean v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    iput-boolean v2, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    iget v6, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iget v7, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0700ca

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    iget-boolean v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    iget-object v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    :goto_1
    iput v1, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    iput v8, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    iput v6, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    iput v7, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    iget-object v1, v5, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v1, "BiometricPrompt/AuthPanelController"

    const-string v5, "Not done measuring yet"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;

    move-object v5, v15

    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$emergencyButtonView:Landroid/widget/Button;

    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v22, v3

    move-object v3, v15

    move-object v15, v2

    move-object/from16 p1, v1

    iget-wide v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    move-wide/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$cancelButton:Landroid/widget/Button;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    move-object/from16 v20, v1

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->label:I

    move-object/from16 v1, p1

    invoke-static {v4, v1, v3, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
