.class public Lcom/android/settings/emergency/EmergencyDashboardFragment;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "EmergencyDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mSendSOSMessages:Landroidx/preference/SecSwitchPreferenceScreen;

.field mSendSOSMessagesClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/emergency/EmergencyDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/android/settings/emergency/EmergencyDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/emergency/EmergencyDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/samsung/android/settings/emergency/MedicalInfoPreferenceController;

    const-string/jumbo v2, "medical_info"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/emergency/MedicalInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/samsung/android/settings/emergency/EmergencyContactsPreferenceController;

    const-string v2, "emergency_contacts"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/emergency/EmergencyContactsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/PanicModePreferenceController;

    const-string v2, "key_panic_mode"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/usefulfeature/controller/PanicModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/android/settings/emergency/EmergencyDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    .line 164
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.emergency.EmergencyInfoActivity"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "EmergencyDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x743

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 132
    sget p0, Lcom/android/settings/R$xml;->sec_emergency_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "app_and_notif_cell_broadcast_settings"

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    :try_start_0
    const-string v0, "master_switch_preference_key"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->mSendSOSMessages:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 99
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->mSendSOSMessagesClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 100
    iget-object p1, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->mSendSOSMessages:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance v0, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;-><init>(Lcom/android/settings/emergency/EmergencyDashboardFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SA Logging for Send SOS Message settings : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EmergencyDashboard"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    const/16 v0, 0x743

    const v1, 0xe86f

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->mSendSOSMessages:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 121
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    .line 120
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA Logging for Send SOS Message settings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmergencyDashboard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
