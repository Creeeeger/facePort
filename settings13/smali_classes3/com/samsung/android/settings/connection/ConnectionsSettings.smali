.class public Lcom/samsung/android/settings/connection/ConnectionsSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "ConnectionsSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mNetworklockutils:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterIntent:Landroid/content/Intent;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRegisterIntent(Lcom/samsung/android/settings/connection/ConnectionsSettings;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRegisterIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRegisterIntent(Lcom/samsung/android/settings/connection/ConnectionsSettings;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRegisterIntent:Landroid/content/Intent;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Lcom/samsung/android/settings/connection/ConnectionsSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/ConnectionsSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 294
    new-instance v0, Lcom/samsung/android/settings/connection/ConnectionsSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/ConnectionsSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;-><init>(Lcom/samsung/android/settings/connection/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/connection/ConnectionsSettings;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private static getAndroidAutoTile(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile;
    .locals 4

    const-string v0, "ConnectionsSettings"

    const-string v1, "Call getAndroidAutoTile"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 523
    invoke-virtual {v1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object p0

    const-string v1, "com.android.settings.category.ia.device"

    .line 525
    invoke-interface {p0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "dashboardCategory is Null...return NULL"

    .line 527
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object p0

    .line 531
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 532
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.projection.gearhead"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "update"

    const-string v2, "update tile"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private getLinkToWindowLandingActivityName()Ljava/lang/String;
    .locals 3

    const-string v0, "ConnectionsSettings"

    const-string v1, "com.samsung.android.mdx"

    .line 490
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 491
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "LinkToWindowsRelativeLinkActivity"

    .line 492
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "getActivityName: Landing activity is null or empty."

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityName: retrieved landing page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityName: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setLinkedDataView()V
    .locals 9

    const-string v0, "ConnectionsSettings#setLinkedDataView"

    .line 329
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 336
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v4, :cond_1

    .line 337
    new-instance v4, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->resetLinkData()V

    const-string v4, "ConnectionsSettings#setLink_SamsungCloud"

    .line 343
    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;Z)Z

    move-result v4

    const-string v5, "callerMetric"

    const-string v6, "flowId"

    if-eqz v4, :cond_3

    .line 347
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 348
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudLaunchIntent()Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x2329

    .line 349
    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iput-object v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v7, "top_level_accounts_backup"

    .line 352
    iput-object v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 354
    sget v7, Lcom/android/settings/R$string;->cloud_title_jpn:I

    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    .line 356
    :cond_2
    sget v7, Lcom/android/settings/R$string;->cloud_title:I

    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 358
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 362
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v4, "ConnectionsSettings#setLink_SecureWifi"

    .line 363
    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportSecureWiFi(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 368
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v7, 0x2454

    .line 370
    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getMetricsCategory()I

    move-result v7

    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 372
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.fast.ACTION_SECURE_WIFI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.fast"

    .line 373
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "isFromRelative"

    .line 374
    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x10008000

    .line 375
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    iput-object v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v1, "top_level_security_and_privacy"

    .line 377
    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 378
    sget v1, Lcom/android/settings/R$string;->secure_wifi:I

    iput v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 379
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 384
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "ConnectionsSettings#setLink_ResetNetwork"

    .line 385
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/general/GeneralUtils;->isResetEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 390
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v4, 0x1237

    .line 391
    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getMetricsCategory()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 393
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.Settings$ResetNetworkActivity"

    .line 394
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v4, "top_level_general"

    .line 396
    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 397
    sget v4, Lcom/android/settings/R$string;->reset_network_settings:I

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 398
    iget-object v4, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 402
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "ConnectionsSettings#setLink_LinkToWindow"

    .line 403
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getLinkToWindowLandingActivityName()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "top_level_multi_devices"

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->supportLinkToWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 409
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 410
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.samsung.android.mdx"

    .line 411
    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2346

    .line 412
    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iput-object v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 414
    iput-object v7, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 415
    sget v1, Lcom/android/settings/R$string;->link_to_windows_title:I

    iput v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 416
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 421
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "ConnectionsSettings#setLink_AndroidAuto"

    .line 422
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getAndroidAutoTile(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 428
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 429
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1732d

    .line 430
    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iput-object v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 432
    iput-object v7, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 433
    sget v1, Lcom/android/settings/R$string;->android_auto_title:I

    iput v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 434
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 439
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "ConnectionsSettings#setLink_QuickShare"

    .line 440
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_a

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.sharelive"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 444
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 445
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.app.sharelive.presentation.settings.DeviceVisibilitySettingsActivity"

    .line 446
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x1732e

    .line 447
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iput-object v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 450
    iput-object v7, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 453
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    const-string v3, "com.samsung.android.app.sharelive.supportChinaP2p"

    .line 454
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 456
    sget v1, Lcom/android/settings/R$string;->quickshare_title_china:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_2

    .line 458
    :cond_8
    sget v1, Lcom/android/settings/R$string;->quickshare_title:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v1, "ConnectionsSettings"

    const-string v2, "PackageManager could not find QuickShare"

    .line 462
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 468
    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "ConnectionsSettings#setLink_create"

    .line 469
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    if-nez v0, :cond_b

    .line 473
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    .line 476
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 480
    :cond_c
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private supportLinkToWindow()Z
    .locals 3

    const-string v0, "com.samsung.android.mdx"

    const/4 v1, 0x0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTargetAppInstalled: Exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConnectionsSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 208
    sget p0, Lcom/android/settings/R$string;->help_url_network_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConnectionsSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xbbd

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 203
    sget p0, Lcom/android/settings/R$xml;->sec_connections_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ConnectionsSettings#onCreate"

    .line 230
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "ConnectionsSettings#super.onCreate"

    .line 231
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 233
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string p1, "ConnectionsSettings"

    const-string v0, "removeKnoxCustomSettingsHiddenItems"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->checkForKnoxCustomProKioskEnabledItems()V

    .line 244
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    new-instance p1, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    .line 248
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    .line 260
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->unbindFromService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "ConnectionsSettings"

    const-string v1, "Inside onPreferenceTreeClick"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "data_usage_settings"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-static {p1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->getSMDataUsageSummaryIntent(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    const-string v0, "ConnectionsSettings#onResume"

    .line 177
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "ConnectionsSettings#super.onResume"

    .line 178
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 182
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->setLinkedDataView()V

    .line 186
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mNetworklockutils:Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->getSPROemSimLock(Landroid/content/Context;)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 220
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStart()V

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mRegisterIntent:Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onStop()V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
