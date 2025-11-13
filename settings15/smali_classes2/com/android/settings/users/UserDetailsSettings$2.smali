.class public final Lcom/android/settings/users/UserDetailsSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserDetailsSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result p2

    const-string v0, "UserDetailsSettings"

    if-nez p2, :cond_1

    const-string p0, "Couldn\'t mark the guest for deletion for user "

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, -0x2710

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/UserManager$UserOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_2

    :try_start_2
    const-string p2, "Couldn\'t create guest, most likely because there already exists one"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_2
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v2, "Couldn\'t create guest user"

    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-ne p2, v1, :cond_3

    const-string p2, "Could not create new guest, switching back to system user"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->switchToUserId(I)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->switchToUserId(I)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "Couldn\'t remove guest because ActivityManager or WindowManager is dead"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserDetailsSettings;->-$$Nest$mexitGuest(Lcom/android/settings/users/UserDetailsSettings;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->clearAndExitGuest()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$2;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->clearAndExitGuest()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
