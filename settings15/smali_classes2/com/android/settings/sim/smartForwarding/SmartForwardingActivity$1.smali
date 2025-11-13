.class public final Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

.field public final synthetic val$dialog:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->val$dialog:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    iput-object p3, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->val$dialog:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Disable Feature exception"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartForwarding"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v0, "SmartForwarding"

    const-string v1, "Enable Feature exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->val$dialog:Ljava/lang/Object;

    check-cast p1, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f142ca1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f142ca0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;-><init>(I)V

    const v0, 0x7f142ca4

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->val$dialog:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smart_forwarding_pref_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enable Feature result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartForwarding"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->result:Z

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->this$0:Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->slotUTData:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    iget-object v5, v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallWaiting:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    iget v5, v5, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;->result:I

    if-ne v5, v4, :cond_1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "smart_forwarding_pref_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->subId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "call_waiting_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->subId:I

    iget-object v3, v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;->mQueryCallForwarding:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iget-object v3, v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->result:Landroid/telephony/CallForwardingInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/CallForwardingInfo;->isEnabled()Z

    move-result v5

    const-string v6, "call_forwarding_enabled_key"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v5, "call_forwarding_reason_key"

    invoke-virtual {v3}, Landroid/telephony/CallForwardingInfo;->getReason()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v5, "call_forwarding_number_key"

    invoke-virtual {v3}, Landroid/telephony/CallForwardingInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v5, "call_forwarding_timekey"

    invoke-virtual {v3}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    const v0, 0x7f0a041c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;

    if-eqz p1, :cond_5

    const-string v0, "smart_forwarding_switch"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->reason:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    sget-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    if-ne p1, v0, :cond_4

    const p1, 0x7f142c9f

    goto :goto_3

    :cond_4
    const p1, 0x7f142ca0

    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f142ca1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;-><init>(I)V

    const v1, 0x7f142ca4

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;->val$dialog:Ljava/lang/Object;

    check-cast p0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
