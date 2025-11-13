.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "WifiApInvitationList.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClickedInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

.field private mContext:Landroid/content/Context;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickedInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mClickedInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowDialogForInvitationClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->showDialogForInvitationClicked(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInvitationPreferenceList(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->updateInvitationPreferenceList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familySharingDisabledIntent"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.mhs.smarttethering.MY_INVITATION_LIST_CHANGED"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.mhs.smarttethering.GROUP_API_RESULT_AND_DB_READ_REQUEST"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ACTION_WIFI_AP_FAMILY_LOCAL_GROUP_UPDATED"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 95
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->sec_wifi_ap_invitation_list:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method private getFamilyJoinMessage()Ljava/lang/String;
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mClickedInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getRequesterName()Ljava/lang/String;

    move-result-object v0

    .line 250
    sget v1, Lcom/android/settings/R$string;->wifi_ap_x_invited_you_join_family_group_description:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    sget v3, Lcom/android/settings/R$string;->wifi_ap_if_join_family_group_description:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isCurrentUserIsGroupOwner(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyMemberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 254
    sget v0, Lcom/android/settings/R$string;->wifi_ap_accept_new_invitation_description:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showDialogForInvitationClicked(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V
    .locals 3

    .line 198
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing dialog for invitation with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mClickedInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    const/16 p1, 0x1f

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateInvitationPreferenceList()V
    .locals 5

    .line 166
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "updateInvitationPreferenceList() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->createPreferenceHierarchy()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getMyInvitationList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    .line 172
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyTextVisilibty(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyTextVisilibty(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 151
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_ap_invitation_list:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApk(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    sget p1, Lcom/android/settings/R$string;->wifi_ap_no_invitation:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult() - requestCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode(-1 for RESULT_OK) : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->createPreferenceHierarchy()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 215
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    .line 221
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v0, "creating dialog  DIALOG_JOIN_FAMILY_GROUP"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 223
    sget v0, Lcom/android/settings/R$string;->wifi_ap_join_family_group:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->getFamilyJoinMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    sget v0, Lcom/android/settings/R$string;->common_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 102
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 161
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 136
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->resetNewInvitationCountDb(Landroid/content/Context;)V

    .line 139
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 126
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onResume() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->updateInvitationPreferenceList()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->clearNotification(Landroid/content/Context;)V

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->updateInvitationScreenStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 120
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 144
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->updateInvitationScreenStatus(Landroid/content/Context;Z)V

    .line 146
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
