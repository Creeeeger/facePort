.class public final Lcom/android/settings/network/apn/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/apn/ApnSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "ApnSettings"

    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRestoreDefaultApnMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    iget-boolean v1, v1, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", intent.getAction() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e9

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    iget-boolean v0, v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_1

    const-string v0, "restore apn done"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-boolean v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v3, v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f141ef4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    const-string v0, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.samsung.intent.action.SET_PREFERREDAPN_UPDATED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    iget-boolean v0, p2, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_3

    const-string p2, "Receive: Update intent"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Lcom/android/settings/network/apn/ApnSettings;->showDialog(I)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "onReceive : ACTION_TETHER_STATE_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    sget-boolean p1, Lcom/android/settings/network/apn/ApnSettings;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    :cond_5
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "FINISH : HOTSWAP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
