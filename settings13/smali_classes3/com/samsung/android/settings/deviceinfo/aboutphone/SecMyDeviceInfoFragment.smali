.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecMyDeviceInfoFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

.field private mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceImageManager(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceInfoHeaderPreferenceController(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$1;

    sget v1, Lcom/android/settings/R$xml;->sec_my_device_info:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private addContactUsLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2342

    .line 276
    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 278
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string p0, "top_level_general"

    .line 279
    iput-object p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 280
    sget p0, Lcom/android/settings/R$string;->contact_us_title:I

    iput p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 281
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private addResetLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    .line 256
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v1, 0x2341

    .line 259
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 261
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ResetDashboardFragmentActivity"

    .line 262
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "menu"

    const-string v2, "reset"

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iput-object p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 266
    sget p0, Lcom/android/settings/R$string;->reset:I

    iput p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string p0, "top_level_general"

    .line 267
    iput-object p0, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 268
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private addSoftwareUpdateLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V
    .locals 4

    .line 236
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->fotaPackageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->needSoftwareUpdateBlockonDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v2, 0x1732c

    .line 240
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 242
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    const-string v3, "key_update"

    .line 243
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->intent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":settings:show_fragment_args"

    .line 245
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 247
    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->topLevelKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 248
    sget p0, Lcom/android/settings/R$string;->sec_software_update_title:I

    iput p0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 249
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDeviceImageFromSCPM()V
    .locals 3

    .line 180
    new-instance v0, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    const-string v2, "s5d189ajvs"

    invoke-direct {v0, v1, v2}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    .line 181
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;-><init>(Landroid/content/Context;Lcom/samsung/scpm/odm/dos/product/ScpmProduct;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    .line 183
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.scpm.product.UPDATE.s5d189ajvs"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setLinkedDataView()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 227
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->addSoftwareUpdateLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->addResetLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->addContactUsLinkView(Lcom/samsung/android/settings/widget/SecRelativeLinkView;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 84
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecMyDeviceInfoFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 97
    sget p0, Lcom/android/settings/R$xml;->sec_my_device_info:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    const-class p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "SecMyDeviceInfoFragment"

    const-string v0, "onConfigurationChanged"

    .line 154
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->updateUI()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->isImageFileExist(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->isImageFileOlderThanOneDay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getDeviceImageFromSCPM()V

    :cond_1
    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 162
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->setLinkedDataView()V

    return-void
.end method
