.class final Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;
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
.field final synthetic $bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

.field final synthetic $bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

.field final synthetic $delegate:Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

.field final synthetic $messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field final synthetic $primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

.field final synthetic $selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;",
            "Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/keyguard/KeyguardSecSecurityContainerController;",
            "Lcom/android/systemui/log/BouncerLogger;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$delegate:Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-object p5, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iput-object p6, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iput-object p7, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iput-object p8, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iput-object p9, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v10, p3

    check-cast v10, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

    iget-object v2, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$delegate:Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    iget-object v3, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v5, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iget-object v6, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iget-object v7, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v8, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v9, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->label:I

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

    iget-object v2, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v15, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1;

    iget-object v6, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

    iget-object v7, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$delegate:Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    iget-object v8, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    iget-object v9, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v10, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iget-object v11, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iget-object v12, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v13, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v14, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->$selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/16 v16, 0x0

    move-object v5, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;->label:I

    move-object/from16 v3, v17

    invoke-static {v2, v4, v3, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
