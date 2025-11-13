.class public final Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;

    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    const/16 v0, 0x3b

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    if-eqz p2, :cond_0

    new-instance p2, Lkotlin/Pair;

    new-instance v10, Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;

    iget-object v4, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->userHandle:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v5, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->broadcastSender:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v5, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogTransitionAnimator:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-boolean v5, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->isKeyguardShowing:Z

    iget-boolean v6, v2, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowAddUserDialog;->showEphemeralMessage:Z

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/user/ui/dialog/AddUserDialog;-><init>(Landroid/content/Context;Landroid/os/UserHandle;ZZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    const-string v3, "add_new_user"

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v10, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    if-eqz p2, :cond_1

    new-instance p2, Lkotlin/Pair;

    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;

    iget-boolean v3, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserCreationDialog;->isGuest:Z

    invoke-direct {v0, v2, v3}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    const-string v2, "exit_guest_mode"

    if-eqz p2, :cond_2

    new-instance p2, Lkotlin/Pair;

    new-instance v12, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    iget v5, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->guestUserId:I

    iget-object v6, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v6, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogTransitionAnimator:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/animation/DialogTransitionAnimator;

    new-instance v11, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    iget-object v6, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->onExitGuestUser:Lkotlin/jvm/functions/Function3;

    invoke-direct {v11, v6}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;-><init>(Lkotlin/jvm/functions/Function3;)V

    iget v7, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->targetUserId:I

    iget-boolean v8, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isKeyguardShowing:Z

    iget-boolean v6, v3, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;->isGuestEphemeral:Z

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;-><init>(Landroid/content/Context;IZIZLcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;)V

    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    if-eqz p2, :cond_3

    new-instance p2, Lkotlin/Pair;

    new-instance v10, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userDetailAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->eventLogger:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/internal/logging/UiEventLogger;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->activityStarter:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogTransitionAnimator:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v10, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    if-eqz p2, :cond_8

    new-instance p2, Lkotlin/Pair;

    new-instance v0, Lcom/android/systemui/user/UserSwitchFullscreenDialog;

    iget-object v2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingCollector:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v4, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userSwitcherViewModel:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/user/UserSwitchFullscreenDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/animation/DialogCuj;

    iput-object v0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, p2}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogTransitionAnimator:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/animation/DialogTransitionAnimator;

    sget-object p2, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    iget-object v2, p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    sget-object v4, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/android/systemui/animation/DialogTransitionAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
