.class public Lcom/samsung/android/settings/account/CloudAccountSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CloudAccountSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method public static synthetic $r8$lambda$4LcJ1GrYkMu8fl_2it0tfH5-irA(Lcom/samsung/android/settings/account/CloudAccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/account/CloudAccountSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MPsgUVgn1vJXHzLB6LXsXBsWk8U(Lcom/samsung/android/settings/account/CloudAccountSettings;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/account/CloudAccountSettings;->lambda$new$1(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Lcom/samsung/android/settings/account/CloudAccountSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_cloud_account_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/account/CloudAccountSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/account/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 167
    new-instance v0, Lcom/samsung/android/settings/account/CloudAccountSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/account/CloudAccountSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/account/CloudAccountSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/account/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/account/CloudAccountSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/account/CloudAccountSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setLinkedDataView()V
    .locals 4

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v1, 0x2720

    .line 213
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/account/CloudAccountSettings;->getMetricsCategory()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$ResetDashboardFragmentActivity"

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "menu"

    const-string v3, "reset"

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 220
    sget v1, Lcom/android/settings/R$string;->reset:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string/jumbo v1, "top_level_general"

    .line 221
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const/16 v1, 0x1000

    .line 223
    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v1, 0x233b

    .line 230
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/account/CloudAccountSettings;->getMetricsCategory()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 232
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/android/settings/Utils;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    sget v1, Lcom/android/settings/R$string;->cloud_title_jpn:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 236
    :cond_2
    sget v1, Lcom/android/settings/R$string;->cloud_title:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CloudAccountSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1edc

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 78
    sget p0, Lcom/android/settings/R$xml;->sec_cloud_account_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const-class v0, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    .line 97
    const-class v0, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 89
    const-class p1, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/backup/controller/SamsungBackupPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    .line 90
    const-class p1, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/backup/controller/SamsungRestorePreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mContext:Landroid/content/Context;

    const-string v0, "desktopmode"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/account/CloudAccountSettings;->setLinkedDataView()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/account/CloudAccountSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method
