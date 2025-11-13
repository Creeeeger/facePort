.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "Usefulfeature.java"


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static mContext:Landroid/content/Context;

.field private static sIsSupportNightClock:Z


# instance fields
.field private mDualDisplayState:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static bridge synthetic -$$Nest$smappendFunctionKeyRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appendFunctionKeyRaw(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string v1, "nightclock"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    .line 190
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    sget v1, Lcom/android/settings/R$xml;->sec_useful_feature:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static appendFunctionKeyRaw(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 353
    sget v1, Lcom/android/settings/R$string;->sec_function_key_setting_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 354
    sget v1, Lcom/android/settings/R$string;->useful_feature_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 355
    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/android/settings/Utils;->isQuickSwitchToSecureFolderSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    sget v1, Lcom/android/settings/R$string;->keywords_function_key_setting_secure_folder:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_0
    sget v1, Lcom/android/settings/R$string;->keywords_function_key_setting:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    :goto_0
    const-string p0, "function_key_setting"

    .line 361
    iput-object p0, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 362
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/usefulfeature/Usefulfeature;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setLinkedDataView()V
    .locals 9

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_9

    .line 253
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 255
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "com.android.settings"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v4, 0x17324

    .line 257
    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v4

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 259
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings.Settings$FloatingIconsNotificationSettingsActivity"

    .line 260
    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iput-object v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 262
    sget v4, Lcom/android/settings/R$string;->notification_floating_icons_title:I

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v4, "top_level_notifications"

    .line 263
    iput-object v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 264
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "com.samsung.accessibility.action.VISIBILITYENHANCEMENT"

    .line 270
    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_1

    .line 271
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x17325

    .line 272
    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 274
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, ":settings:fragment_args_key"

    const-string v8, "toggle_remove_animations"

    .line 276
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ":settings:show_fragment_args"

    .line 277
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v4, "top_level_accessibility"

    .line 279
    iput-object v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 280
    sget v4, Lcom/android/settings/R$string;->sec_relative_link_remove_animation:I

    iput v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 282
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const-string v4, "com.samsung.android.app.telephonyui.action.OPEN_CALL_SETTINGS"

    .line 288
    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.dialer"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.dialer.DialtactsActivity"

    invoke-direct {v7, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x17326

    .line 290
    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 292
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "root_key"

    const-string v7, "SWIPE_TO_CALL_OR_TEXT"

    .line 293
    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 295
    sget v4, Lcom/android/settings/R$string;->sec_relative_link_swipe_to_call:I

    iput v4, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 297
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    .line 302
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "com.sec.android.easyMover"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 303
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x17327

    .line 304
    iput v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v6

    iput v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 309
    iput-object v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    goto :goto_1

    .line 311
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    .line 312
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    iput-object v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 315
    :goto_1
    sget v5, Lcom/android/settings/R$string;->sec_bring_data_from_old_device:I

    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 317
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 318
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 322
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v4, "Usefulfeature"

    const-string v5, "not found activity"

    .line 323
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_5
    :goto_2
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 329
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v5, 0x2334

    .line 330
    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 332
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings.Settings$EasyModeAppActivity"

    .line 333
    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iput-object v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 335
    sget v1, Lcom/android/settings/R$string;->easy_mode:I

    iput v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v1, "top_level_display"

    .line 336
    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_6

    move v2, v3

    .line 339
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-nez v2, :cond_8

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_8
    if-lez v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_9
    return-void
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

    .line 80
    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "Usefulfeature"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10fe

    .line 94
    sput p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$xml;->sec_useful_feature:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 139
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualDisplayState:I

    if-eq v0, p1, :cond_2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged mDualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " // dualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Usefulfeature"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setLinkedDataView()V

    .line 146
    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualDisplayState:I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualDisplayState:I

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 113
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const-string p1, "multi_window_setting"

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Usefulfeature"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-class p1, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->updatePreference()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "Usefulfeature"

    const-string v1, "onPreferenceTreeClick: "

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setLinkedDataView()V

    return-void
.end method
