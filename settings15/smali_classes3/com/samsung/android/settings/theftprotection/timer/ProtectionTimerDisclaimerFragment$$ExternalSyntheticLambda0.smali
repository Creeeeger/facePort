.class public final synthetic Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;

    sget v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v2, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSecurityDelay: expirationTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProtectionTimerDisclaimerFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.settings.action.START_SECURITY_DELAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "delay_expiration_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-class v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    const/4 v3, 0x0

    const v4, 0x7f0a091b

    invoke-virtual {v1, v4, v0, v2, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "security_delay_notifications_pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "pp_package_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "pp_action_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "pp_noti_in_progress_res"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "pp_noti_delay_end_res"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mBundle:Landroid/os/Bundle;

    const-string v2, "pp_noti_delay_end_immediately_res"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerDisclaimerFragment;->mLoggingEventValue:Ljava/lang/String;

    const p1, 0xd358

    const v0, 0xd3c1

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method
