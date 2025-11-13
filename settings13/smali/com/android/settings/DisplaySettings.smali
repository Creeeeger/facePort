.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DisplaySettings.java"


# static fields
.field private static final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field private static final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualDisplayState:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_CUSTOM_NIGHT_END_TIME()Ljava/time/LocalTime;
    .locals 1

    sget-object v0, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_CUSTOM_NIGHT_START_TIME()Ljava/time/LocalTime;
    .locals 1

    sget-object v0, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smresetBrightnessSettings(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->resetBrightnessSettings(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smresetNavigationBarSettings(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DisplaySettings;->resetNavigationBarSettings(Landroid/content/ContentResolver;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    const/4 v0, 0x7

    .line 113
    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DisplaySettings;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 250
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_display_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 431
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 512
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v1, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/samsung/android/settings/display/controller/SecOutDoorModePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/SecOutDoorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/NavigationBarPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/samsung/android/settings/display/controller/OuterScreenAutoLockPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/OuterScreenAutoLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/samsung/android/settings/display/controller/NightTimeKeyboardModePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/NightTimeKeyboardModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/SecScrollFilterForChromePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/EasyModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/KeyboardBacklightPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static resetBrightnessSettings(Landroid/content/Context;)V
    .locals 7

    const-string v0, "DisplaySettings"

    const-string v1, "resetBrightnessSettings()"

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010f

    .line 842
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 843
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_EXTRA_BRIGHT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_extra_brightness"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 851
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "screen_brightness_mode"

    if-eqz v1, :cond_1

    const-string v1, "reset to retail mode value"

    .line 852
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, -0x2

    invoke-static {v1, v3, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 869
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v1

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 872
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "automaticAvailable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", configVal= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_BRIGTNESS"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 875
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MTR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 878
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isCameraSensorModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 879
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcAdaptiveBrightnessEnabled()Z

    move-result v1

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSabcAdaptiveBrightnessEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 885
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    move v2, v6

    :cond_4
    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 890
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private static resetNavigationBarSettings(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 3

    const-string p1, "navigation_bar_gesture_while_hidden"

    const/4 v0, 0x0

    .line 896
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigation_bar_gesture_detail_type"

    .line 899
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v1

    .line 898
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigation_bar_gesture_hint"

    const/4 v1, 0x1

    .line 900
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigation_bar_back_gesture_sensitivity"

    .line 901
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigationbar_key_order"

    .line 903
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigationbar_key_position"

    .line 905
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 904
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigation_bar_block_gestures_with_spen"

    .line 906
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "navigation_bar_button_to_hide_keyboard"

    .line 908
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "bottom_gesture_inset_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 910
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string p1, "back_gesture_inset_scale_left"

    .line 911
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string p1, "back_gesture_inset_scale_right"

    .line 913
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const-string p1, "navigationbar_switch_apps_when_hint_hidden"

    .line 915
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setLinkedDataView()V
    .locals 8

    .line 320
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_a

    .line 323
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 325
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isMaintenanceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v3, 0x17323

    .line 328
    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getMetricsCategory()I

    move-result v3

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string/jumbo v3, "top_level_advanced_features"

    .line 330
    iput-object v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 331
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$FunctionKeySettingsActivity"

    .line 332
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iput-object v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 334
    sget v3, Lcom/android/settings/R$string;->sec_function_key_setting_title:I

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 336
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x20

    .line 341
    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v4, 0x2330

    .line 346
    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getMetricsCategory()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 348
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    iput-object v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 350
    sget v4, Lcom/android/settings/R$string;->sec_display_relative_link_language:I

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 352
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const-string v3, "com.samsung.accessibility.action.VISIBILITYENHANCEMENT"

    .line 358
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 361
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2331

    .line 362
    iput v3, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getMetricsCategory()I

    move-result v3

    iput v3, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 364
    iput-object v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "top_level_accessibility"

    .line 365
    iput-object v3, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 366
    sget v3, Lcom/android/settings/R$string;->sec_display_relative_visibility_enhancement:I

    iput v3, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 368
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    .line 373
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v2, :cond_3

    move v3, v1

    :cond_3
    if-eqz v3, :cond_4

    .line 383
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v1

    :cond_4
    if-eqz v3, :cond_7

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 392
    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    .line 393
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    move v6, v1

    :goto_1
    if-eqz v4, :cond_6

    .line 396
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 397
    :cond_6
    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const-string v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    .line 406
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 407
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v4, 0x2332

    .line 409
    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getMetricsCategory()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 411
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "relative_link"

    .line 412
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    iput-object v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "top_level_lockscreen"

    .line 414
    iput-object v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 415
    sget v1, Lcom/android/settings/R$string;->always_on_display_title:I

    iput v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 417
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_9
    if-lez v0, :cond_a

    .line 423
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_a
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

    .line 216
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 221
    sget p0, Lcom/android/settings/R$string;->help_uri_display:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DisplaySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0xb7a2

    return p0

    :cond_0
    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 146
    sget p0, Lcom/android/settings/R$xml;->sec_display_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "top_level_display_upsm"

    return-object p0

    :cond_0
    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 205
    :goto_0
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDualDisplayState:I

    if-eq v0, p1, :cond_1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged mDualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mDualDisplayState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // dualDisplayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplaySettings"

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 210
    iput p1, p0, Lcom/android/settings/DisplaySettings;->mDualDisplayState:I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/DisplaySettings;->mDualDisplayState:I

    .line 171
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$xml;->sec_display_settings:I

    const-string v1, "UPSM"

    invoke-static {p1, v0, v1}, Landroidx/preference/SecPreferenceUtils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->brightness_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mDualDisplayState:I

    .line 188
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->setLinkedDataView()V

    return-void
.end method
