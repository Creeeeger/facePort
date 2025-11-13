.class public final Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field mIsDataSaverEnabled:Z

.field public final mIsWifiTetheringAllow:Z

.field mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

.field public mSoftApState:I

.field mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

.field mTetheringManagerModel:Lcom/android/settings/network/tether/TetheringManagerModel;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;ZZLcom/android/settings/network/tether/TetheringManagerModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-boolean p5, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsWifiTetheringAllow:Z

    if-nez p5, :cond_0

    return-void

    :cond_0
    iput-object p6, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mTetheringManagerModel:Lcom/android/settings/network/tether/TetheringManagerModel;

    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final canEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsWifiTetheringAllow:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsDataSaverEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_tether"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/widget/GenericSwitchController;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/GenericSwitchController;-><init>(Lcom/android/settingslib/PrimarySwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p0, v0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateSwitch()V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->canEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsWifiTetheringAllow:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f141a51

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether"

    return-object p0
.end method

.method public handleWifiApStateChanged(II)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f143643

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f143564

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f14370b

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f14370d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f143589

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    const p1, 0x7f14370e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initWifiTetherSoftApManager()V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v2, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;->mMyClass:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiUtils;->canShowWifiHotspot(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    :cond_1
    return-void
.end method

.method public final onSwitchToggled(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mTetheringManagerModel:Lcom/android/settings/network/tether/TetheringManagerModel;

    iget-object p1, p0, Lcom/android/settings/network/tether/TetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/tether/TetheringManagerModel;->mStartTetheringCallback:Lcom/android/settings/network/tether/TetheringManagerModel$StartTetheringCallback;

    invoke-virtual {p1, v0, v1, p0}, Landroid/net/TetheringManager;->startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mTetheringManagerModel:Lcom/android/settings/network/tether/TetheringManagerModel;

    iget-object p0, p0, Lcom/android/settings/network/tether/TetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0, v0}, Landroid/net/TetheringManager;->stopTethering(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setDataSaverEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsDataSaverEnabled:Z

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->canEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->canEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public updateSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->canEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    return-void
.end method
