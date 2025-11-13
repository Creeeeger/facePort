.class public Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;
    }
.end annotation


# static fields
.field public static ethConfiguration:Landroid/net/IpConfiguration;

.field private static mEthManager:Landroid/net/EthernetManager;


# instance fields
.field private mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroidx/preference/SecPreference;

.field private mEthDeviceStateReceiver:Landroid/database/ContentObserver;

.field private mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

.field private mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$A7UsOGRl8MvKFGMwK-LB9FZ44OY(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->lambda$onResume$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEthConfigDialog(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 147
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;I)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method private initToggles()V
    .locals 5

    .line 122
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/net/EthernetManager;

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/EthernetManager;

    const-string v3, "toggle_eth"

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreferenceScreen;

    const-string v4, "eth_config"

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SecPreference;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;-><init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroidx/preference/SecSwitchPreferenceScreen;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setConfigDialog(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->setEthernetSettings(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)V

    return-void
.end method

.method private synthetic lambda$onResume$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/android/settings/R$xml;->sec_ethernet_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "eth_config"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthConfigPref:Landroidx/preference/SecPreference;

    const-string p1, "ethernet"

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    sput-object p1, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthManager:Landroid/net/EthernetManager;

    .line 74
    new-instance p1, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->initToggles()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    new-instance p1, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->destroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->pause()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 109
    sget-object v0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;

    invoke-virtual {v0, p0}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthConfigPref:Landroidx/preference/SecPreference;

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean p1, p1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_ethernet_disable_toast_message:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->resume()V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eth_device_conn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EthernetSettings"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 96
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    const-string v0, "onStart addInterfaceStateListener"

    .line 97
    invoke-static {v4, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthManager:Landroid/net/EthernetManager;

    new-instance v3, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthernetListener:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$EthernetListener;

    invoke-virtual {v0, v3, v4}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
