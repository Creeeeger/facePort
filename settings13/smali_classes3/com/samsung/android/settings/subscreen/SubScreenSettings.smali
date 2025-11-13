.class public Lcom/samsung/android/settings/subscreen/SubScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SubScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field mContext:Landroid/content/Context;

.field private mCoverNotiPref:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mSettingsObserver:Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;

.field private mSubScreenNotificationController:Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSubScreenNotificationController(Lcom/samsung/android/settings/subscreen/SubScreenSettings;)Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mSubScreenNotificationController:Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSummaryVisibility(Lcom/samsung/android/settings/subscreen/SubScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->updateSummaryVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_subscreen_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/subscreen/SubScreenSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance p3, Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;

    const-string v0, "subscreen_notification"

    invoke-direct {p3, p1, v0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mSubScreenNotificationController:Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;

    .line 259
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private createNotiSummary()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_cover_screen_notifications_help_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "sec_subscreen_notification_desc"

    .line 125
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mCoverNotiPref:Landroidx/preference/Preference;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->updateSummaryVisibility()V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mCoverNotiPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static isCoverScreenPaySupported(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    .line 228
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string v3, "samsung_pay_simplepay"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "value"

    .line 231
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private static isSamsungPayRegistered(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.spay.common.share/global"

    .line 210
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "GET_global"

    const-string v3, "samsung_pay_provisioning_status"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "value"

    .line 213
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private setLinkedDataView()V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_9

    .line 134
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.aodservice"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 143
    iget-object v3, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 150
    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    :cond_3
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :cond_5
    :goto_1
    const-string v0, "top_level_lockscreen"

    const-string v3, "relative_link"

    if-eqz v1, :cond_6

    const-string v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    .line 161
    iget-object v4, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 162
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v5, 0xafcd

    .line 163
    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->getMetricsCategory()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 165
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iput-object v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 168
    iput-object v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 169
    sget v1, Lcom/android/settings/R$string;->always_on_display_title:I

    iput v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    const-string v1, "com.samsung.settings.LOCKSCREEN_NOTIFICATION_SETTINGS"

    .line 176
    iget-object v4, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 177
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->getMetricsCategory()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 179
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, ":settings:fragment_args_key"

    const-string v7, "set_visibility"

    .line 180
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 183
    invoke-virtual {v6, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    iput-object v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 185
    iput-object v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 186
    sget v0, Lcom/android/settings/R$string;->sec_cover_screen_settings_relative_link_notification_title:I

    iput v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->isSamsungPayRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->isCoverScreenPaySupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->getMetricsCategory()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v1, 0xafce

    .line 194
    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 195
    sget v1, Lcom/android/settings/R$string;->sec_cover_screen_settings_relative_link_title:I

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 196
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    .line 197
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "samsungpay://launch?action=settings&menu=simplepay_view"

    .line 198
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private updateSummaryVisibility()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_screen_show_notification"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 292
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mCoverNotiPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    .line 293
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
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

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    invoke-direct {p0, p1, v0, p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SubScreenSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1f8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 101
    sget p0, Lcom/android/settings/R$xml;->sec_subscreen_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 94
    const-class p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenClockStylePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenClockStylePreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenClockStylePreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    .line 95
    const-class p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenWidgetsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenWidgetsController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenWidgetsController;->init(Landroidx/fragment/app/Fragment;)V

    .line 96
    const-class p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->init(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->createNotiSummary()V

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->setLinkedDataView()V

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance p1, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/subscreen/SubScreenSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mSettingsObserver:Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;

    return-void
.end method

.method public onResume()V
    .locals 6

    const-string v0, "com.samsung.android.app.aod.setting.CameraCoverClockStyleSettingActivity"

    const-string v1, "com.samsung.android.app.aodservice"

    .line 72
    iget-object v2, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/settings/Rune;->FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    const/4 v2, 0x1

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 78
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 80
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mSettingsObserver:Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->setListening(Z)V

    .line 88
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->mSettingsObserver:Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method
