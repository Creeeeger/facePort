.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApFamilySharingSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field private static final MHSDBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dialogNameTextWatcher:Landroid/text/TextWatcher;

.field private mActivity:Landroid/app/Activity;

.field private mAddAllowedDeviceButtonClicked:Z

.field private mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

.field private mAddAllowedDeviceDescription:Lcom/android/settingslib/widget/LayoutPreference;

.field private mAllowedDeviceClicked:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

.field private final mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteFamilyGroupDialog:Landroid/app/AlertDialog;

.field private mDeviceInfo:Landroidx/preference/PreferenceScreen;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDeviceNameOnDialogEditText:Landroid/widget/EditText;

.field private mDivider:Lcom/android/settingslib/widget/LayoutPreference;

.field private mEditYourFamilyButtonClicked:Z

.field private mErrorTextOnDialogView:Landroid/widget/TextView;

.field private mFamilyMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

.field private mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

.field private mIsAutoHotspotSupported:Z

.field private mMyFamilyDescription:Lcom/android/settingslib/widget/LayoutPreference;

.field private mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mOnEditMembersPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

.field private mPreviousAllowedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousFamilyMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;",
            ">;"
        }
    .end annotation
.end field

.field private mTempDeviceNameOnDialogEditText:Ljava/lang/String;

.field private mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddAllowedDeviceButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedDeviceClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAllowedDeviceClicked:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameDialog(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditYourFamilyButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mEditYourFamilyButtonClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorTextOnDialogView(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mErrorTextOnDialogView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApFamilySharingSwitchEnabler(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddAllowedDeviceButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllowedDeviceClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAllowedDeviceClicked:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEditYourFamilyButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mEditYourFamilyButtonClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempDeviceNameOnDialogEditText(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFamilySharingPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->updateFamilySharingPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeleteFamilyGroupDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    .line 142
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mOnEditMembersPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 161
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    .line 540
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->dialogNameTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;I)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private initMemberVar()V
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceInfo:Landroidx/preference/PreferenceScreen;

    const-string v0, "family_sharing_preference_category"

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "family_members_description_preference"

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyFamilyDescription:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "no_group_preference"

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const-string v0, "invite_or_edit_members_button_preference"

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    const-string v0, "divider_preference"

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "allowed_device_description_preference"

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceDescription:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "invite_or_edit_members_button_layout_preference"

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    const-string v0, "add_allowed_device_button_layout_preference"

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_invite_members:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_mhs_add_allowed_device_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_no_group:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setGravity(I)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setAboveDividerVisibility(Z)V

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->setMyFamilyDescription()V

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->setEditYourFamilyButton()V

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->setAddAllowedDeviceButton()V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->setAddAllowedDeviceDescription()V

    return-void
.end method

.method private setAddAllowedDeviceButton()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setAddAllowedDeviceDescription()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceDescription:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_mhs_add_allowed_device_description:I

    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEditYourFamilyButton()V
    .locals 3

    .line 323
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mOnEditMembersPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mOnEditMembersPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setMyFamilyDescription()V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyFamilyDescription:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 319
    sget v0, Lcom/android/settings/R$string;->wifi_ap_add_members_description:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateFamilySharingPreference()V
    .locals 10

    .line 192
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "updateFamilySharingPreference() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFamilyMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_1

    .line 199
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyMemberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 206
    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->MHSDBG:Z

    if-eqz v4, :cond_2

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPreviousWifiApFamilyMemberList : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newFamilyMemberList : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;

    .line 211
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 216
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;

    .line 217
    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v7, v8, v6, v9, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;I)V

    add-int/lit8 v6, v4, 0x1

    .line 218
    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 219
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v6

    goto :goto_1

    .line 223
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    .line 226
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyFamilyDescription:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setAboveDividerVisibility(Z)V

    goto :goto_2

    .line 229
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    if-nez v0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setAboveDividerVisibility(Z)V

    goto :goto_2

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyFamilyDescription:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mNoGroupPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setAboveDividerVisibility(Z)V

    .line 239
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_invite_members:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->setTitle(I)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_3

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditMembersButtonPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_edit_members:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreference;->setTitle(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mInviteOrEditYourFamilyButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_3
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    move v0, v5

    goto :goto_4

    :cond_8
    move v0, v4

    .line 248
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceDescription:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 253
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getAutoHotspotAllowedDeviceList()Ljava/util/List;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousAllowedDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousAllowedDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 256
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_5

    :cond_9
    const/16 v1, 0x64

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 260
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v6, v7, v4, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference$AutoHotspotCustomPreferenceListener;)V

    add-int/lit8 v4, v1, 0x1

    .line 261
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 262
    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApCustomPreference;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v4

    goto :goto_6

    .line 266
    :cond_a
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousAllowedDeviceList:Ljava/util/List;

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_8

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceDescription:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousAllowedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 272
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mMyGroupPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    goto :goto_7

    .line 274
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_8
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 466
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 461
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_family_sharing_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 364
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 365
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 367
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFamilyMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 371
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFamilyMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 375
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 376
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 377
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    .line 378
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mOnFamilySwitchStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 383
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

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

    const/4 v0, -0x1

    const/16 v1, 0x38e

    const/16 v2, 0x384

    if-ne p1, v2, :cond_0

    if-ne p2, v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    .line 387
    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchSocialPickerForCreatingGroupActivity(Lcom/android/settings/SettingsPreferenceFragment;I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    if-eq p2, v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget p1, Lcom/android/settings/R$xml;->sec_wifi_ap_family_sharing_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mActivity:Landroid/app/Activity;

    .line 284
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 285
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    .line 286
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isAutoHotspotSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mIsAutoHotspotSupported:Z

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->initMemberVar()V

    .line 288
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousFamilyMemberList:Ljava/util/List;

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mPreviousAllowedDeviceList:Ljava/util/List;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .line 478
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 482
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 484
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v3, "onCreateDialog() : create dialog  DIALOG_MODIFY_WHITE_LIST"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_auto_hotspot_white_list_edit_dialog:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 486
    sget v0, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    .line 487
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mErrorTextOnDialogView:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAllowedDeviceClicked:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->dialogNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/Utils$EmojiInputFilter;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 493
    sget v1, Lcom/android/settings/R$string;->wifi_tether_otherdevices_name:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 495
    sget p1, Lcom/android/settings/R$string;->wifi_save:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    sget p1, Lcom/android/settings/R$string;->wifi_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 513
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 515
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 517
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v0, "creating dialog  DIALOG_DELETE_FAMILY_GROUP"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 519
    sget v0, Lcom/android/settings/R$string;->wifi_ap_delete_family_group:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 520
    sget v0, Lcom/android/settings/R$string;->wifi_ap_family_group_will_be_delete_description:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 521
    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    sget v0, Lcom/android/settings/R$string;->wifi_ap_delete:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 401
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "create options menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget v0, Lcom/android/settings/R$string;->wifi_ap_invitations_menu:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isCurrentUserIsGroupOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 405
    sget v2, Lcom/android/settings/R$string;->wifi_ap_delete_family_group:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 406
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 408
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 358
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 452
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 453
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mFamilyMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mDeleteFamilyGroupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "DIALOG_DELETE_FAMILY_GROUP is already shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 424
    :cond_2
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    .line 426
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_invitations:I

    .line 427
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 438
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 413
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    .line 414
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isThereAnyNewInvitation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_dashboard_badge_new:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 443
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 444
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mAddAllowedDeviceButtonClicked:Z

    .line 446
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mEditYourFamilyButtonClicked:Z

    .line 447
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->updateSwitchState()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 471
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->mWifiApFamilySharingSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler;->setChecked(Z)V

    return-void
.end method
