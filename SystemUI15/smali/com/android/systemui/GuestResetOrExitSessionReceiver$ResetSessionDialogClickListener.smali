.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mDialog:Landroid/content/DialogInterface;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUserId:I

    iput-object p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_REMOVE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mUserId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->removeGuestUser(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogClickListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
