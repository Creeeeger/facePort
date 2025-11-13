.class public final Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-object v1, v1, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-boolean v1, v0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->isGuestEphemeral:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    if-eq p2, p1, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->dismissStack(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;

    iget p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    check-cast p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->function:Lkotlin/jvm/functions/Function3;

    invoke-interface {p1, p2, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    :cond_4
    const/4 v1, -0x3

    if-eq p2, v1, :cond_7

    if-eq p2, p1, :cond_6

    if-eq p2, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, v0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->dismissStack(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;

    iget p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    check-cast p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->function:Lkotlin/jvm/functions/Function3;

    invoke-interface {p1, p2, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object p1, v0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->dismissStack(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->onExitGuestUserListener:Lcom/android/systemui/user/ui/dialog/ExitGuestDialog$OnExitGuestUserListener;

    iget p2, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->guestUserId:I

    iget p0, p0, Lcom/android/systemui/user/ui/dialog/ExitGuestDialog;->targetUserId:I

    check-cast p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$sam$com_android_systemui_user_ui_dialog_ExitGuestDialog_OnExitGuestUserListener$0;->function:Lkotlin/jvm/functions/Function3;

    invoke-interface {p1, p2, p0, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :goto_1
    return-void
.end method
