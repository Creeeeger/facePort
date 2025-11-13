.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mExitSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;

.field public mResetSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

    iput-object p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->cancel()V

    iput-object v0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->cancel()V

    iput-object v0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.intent.action.GUEST_RESET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->create(I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mResetSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.intent.action.GUEST_EXIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener$Factory;

    invoke-interface {v2, v0, p2, v1}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener$Factory;->create(ZILandroid/content/DialogInterface;)Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener;

    move-result-object p2

    const/4 v2, -0x1

    const/high16 v3, 0x1040000

    const/4 v4, -0x3

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f130728

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f130726

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f130725

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f130729

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f130727

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f130724

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f13072d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iput-object v1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mExitSessionDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_5
    :goto_1
    return-void
.end method
