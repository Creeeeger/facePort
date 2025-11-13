.class public Lcom/samsung/android/settings/general/GeneralDeviceSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "GeneralDeviceSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field mContext:Landroid/content/Context;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 259
    new-instance v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/samsung/android/settings/general/GeneralDeviceSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v0, Lcom/samsung/android/settings/general/SmartManagerFeaturePreferenceController;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/SmartManagerFeaturePreferenceController;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lcom/android/settings/language/PhoneLanguagePreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/language/PhoneLanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 110
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p1, Lcom/android/settings/language/TtsPreferenceController;

    const-string v0, "tts_settings_summary"

    invoke-direct {p1, p0, v0}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p1, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private setLinkedDataView()V
    .locals 8

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_a

    .line 184
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 191
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    const-string v1, "top_level_display"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v3

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 194
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$NavigationBarSettingsInnerActivity"

    .line 195
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iput-object v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 197
    sget v3, Lcom/android/settings/R$string;->navigationbar_title:I

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 198
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 201
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 203
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    iput v5, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 205
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.settings.ScreenTimeout"

    .line 206
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iput-object v5, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 208
    sget v5, Lcom/android/settings/R$string;->screen_timeout:I

    iput v5, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 209
    iput-object v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 212
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 213
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 215
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.FontPreview"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v7, "fromRelativeLink"

    .line 216
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 218
    sget v1, Lcom/android/settings/R$string;->sec_font_size_style_title:I

    iput v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 221
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v4, "com.sec.android.easyMover"

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 222
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v1, 0x17327

    .line 223
    iput v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v1

    iput v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 228
    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    goto :goto_4

    .line 230
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 231
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    iput-object v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v1, "GeneralDeviceSettings"

    const-string v4, "not found activity"

    .line 235
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_4
    sget v1, Lcom/android/settings/R$string;->sec_bring_data_from_old_device:I

    iput v1, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_5
    if-eqz v0, :cond_6

    .line 241
    iget-object v1, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    if-eqz v3, :cond_7

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_7
    if-eqz v5, :cond_8

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_8
    if-eqz v2, :cond_9

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 91
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x12d4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->sec_general_device_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget v1, Lcom/android/settings/R$string;->general_device_management_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->setLinkedDataView()V

    .line 151
    const-class v0, Lcom/samsung/android/settings/inputmethod/DefaultKeyboardPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/inputmethod/DefaultKeyboardPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/DefaultKeyboardPreferenceController;->updateInputMethodPreferenceViews()V

    return-void
.end method
