.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mDialog:Landroid/content/DialogInterface;

.field public final mIsEphemeral:Z

.field public final mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;ZILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mIsEphemeral:Z

    iput p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserId:I

    iput-object p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mIsEphemeral:Z

    const/16 v0, -0x2710

    const/4 v1, -0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    if-ne p2, v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->exitGuestUser(IIZ)V

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->exitGuestUser(IIZ)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mUserId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->exitGuestUser(IIZ)V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method
