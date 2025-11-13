.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApAutoHotspotSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field private static final KEY_AUTO_HOTSPOT_DESCRIPTION_LAYOUT_PREFERENCE:Ljava/lang/CharSequence;

.field private static final KEY_MY_ACCOUNT_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

.field private static final KEY_MY_FAMILY_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mContext:Landroid/content/Context;

.field private mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

.field private mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

.field private mWifiApFamilySharingSwitchController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAutoHotspotSection(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateAutoHotspotSection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFamilySharingSection(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateFamilySharingSection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v0, "auto_hotspot_description_layout_preference"

    .line 53
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_AUTO_HOTSPOT_DESCRIPTION_LAYOUT_PREFERENCE:Ljava/lang/CharSequence;

    const-string v0, "my_account_preference_category"

    .line 54
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_MY_ACCOUNT_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

    const-string v0, "my_family_preference_category"

    .line 55
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_MY_FAMILY_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    return-void
.end method

.method private initMemberVar()V
    .locals 1

    .line 113
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_AUTO_HOTSPOT_DESCRIPTION_LAYOUT_PREFERENCE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mAutoHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 114
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_MY_ACCOUNT_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    .line 115
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->KEY_MY_FAMILY_PREFERENCE_CATEGORY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method private setAutoHotspotHeaderDescription()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mAutoHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mAutoHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->smart_tethering_description:I

    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAutoHotspotSection()V
    .locals 4

    .line 211
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "Updating AutoHotspot section."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyOwner(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;

    move-result-object v0

    .line 213
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 226
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 236
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 239
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mMyAccountPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFamilySharingSection()V
    .locals 2

    .line 244
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "Updating Family Sharing section."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApFamilySharingSwitchController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;->updateStates()V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 153
    sget p0, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 256
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 251
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_autohotspot_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 120
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 130
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;)V

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->setAutoHotspotHeaderDescription()V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateAutoHotspotSection()V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateFamilySharingSection()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 139
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode(-1 for RESULT_OK) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApk(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApFamilySharingSwitchController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 159
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApFamilySharingSwitchController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    .line 160
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mActivity:Landroid/app/Activity;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1f4

    .line 108
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchFamilyServiceRegisterActivityForResult(Lcom/android/settings/SettingsPreferenceFragment;I)V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->initMemberVar()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 185
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 176
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 166
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->updateFamilySharingSection()V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 191
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingSwitchChangedAutomatically(Landroid/content/Context;Z)V

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->setChecked(Z)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isFamilySharingSwitchChangedAutomatically(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->mWifiApFamilySharingSwitchController:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchController;->setChecked(Z)Z

    :cond_1
    return-void
.end method
