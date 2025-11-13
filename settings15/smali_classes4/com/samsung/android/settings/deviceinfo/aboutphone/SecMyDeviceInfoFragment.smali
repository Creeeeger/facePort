.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

.field public mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$1;

    const v1, 0x7f1701cc

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-direct {v3, p1, v1, p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecMyDeviceInfoFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701cc

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "SecMyDeviceInfoFragment"

    const-string/jumbo v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceInfoHeaderPreferenceController:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->mDeviceInfoHeader:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;

    if-nez p0, :cond_0

    const-string p0, "DeviceInfoHeaderPreferenceController"

    const-string p1, "Fail to update UI"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initInfoChart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->isImageFileExist(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->getImageFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const-string p1, "DeviceImageFileUtils"

    const-string v0, "Image File is older than a day"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DeviceImageManager"

    const-string/jumbo v2, "register Device Image Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mListener:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$$ExternalSyntheticLambda0;

    const-string v0, "com.samsung.android.scpm.product.UPDATE.s5d189ajvs"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;)V

    iput-object v2, p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mDeviceImageManager:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mDeviceImageReceiver:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$2;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    new-instance v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;-><init>(Landroid/content/Context;)V

    iget-boolean v2, v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->packageEnabled:Z

    const/16 v3, 0x28

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v4, "95020"

    iput-object v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string v4, ":settings:fragment_args_key"

    const-string v5, "key_update"

    invoke-static {v4, v5}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->intent:Landroid/content/Intent;

    const-string v6, ":settings:show_fragment_args"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iput-object v5, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->topLevelKey:Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const v1, 0x7f142791

    iput v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "top_level_general"

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v4, "9025"

    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$ResetDashboardFragmentActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "menu"

    const-string/jumbo v6, "reset"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f141ebd

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0xa220268

    invoke-static {v1, v4, v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "9026"

    iput-object v5, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iput-object v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const v2, 0x7f140a79

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
