.class public Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# instance fields
.field public turnOffSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f170262

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f142caa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "smart_forwarding_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;->turnOffSwitch:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "onPreferenceChange. Update value to "

    const-string v0, "SmartForwarding"

    invoke-static {p2, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingUtils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/sim/smartForwarding/SmartForwardingUtils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->enableSmartForwarding([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Slot 0 or Slot 1 phone number missing."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p0, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;

    invoke-direct {p0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;-><init>()V

    const v0, 0x7f0a041c

    invoke-virtual {p1, v0, p0, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    new-array v4, v3, [Z

    move v5, v1

    :goto_2
    const-string v6, "smart_forwarding_pref_"

    if-ge v5, v3, :cond_3

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "call_waiting_key"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    new-array v5, v3, [Landroid/telephony/CallForwardingInfo;

    move v7, v1

    :goto_3
    if-ge v7, v3, :cond_5

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "call_forwarding_enabled_key"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "call_forwarding_reason_key"

    invoke-interface {v8, v10, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "call_forwarding_number_key"

    const-string v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "call_forwarding_timekey"

    invoke-interface {v8, v12, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v12, Landroid/telephony/CallForwardingInfo;

    invoke-direct {v12, v9, v10, v11, v8}, Landroid/telephony/CallForwardingInfo;-><init>(ZILjava/lang/String;I)V

    goto :goto_4

    :cond_4
    move-object v12, p2

    :goto_4
    aput-object v12, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    new-instance p2, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;

    invoke-direct {p2, p1, v4, v5}, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;-><init>(Landroid/telephony/TelephonyManager;[Z[Landroid/telephony/CallForwardingInfo;)V

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    check-cast v1, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v1, p2}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v1, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;-><init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;)V

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {p1, p2, v1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p2, p1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return v2
.end method
