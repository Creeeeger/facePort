.class public final Lcom/android/settings/users/UserSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/UserSettings$5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    iget v0, p0, Lcom/android/settings/users/UserSettings$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->clearAndExitGuest()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    sget-object p1, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.app.extra.PASSWORD_COMPLEXITY"

    const/high16 v0, 0x10000

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0xa

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    sget-object p2, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$5;->this$0:Lcom/android/settings/users/UserSettings;

    sget-object p2, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p2, 0x7f14282a

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser$1()V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {p1, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
