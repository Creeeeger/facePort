.class public Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private aodCategory:Landroidx/preference/PreferenceCategory;

.field private editorPreference:Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

.field private informationCategory:Landroidx/preference/PreferenceCategory;

.field private mAodEditorPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mEditorCategory:Landroidx/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private final mIsDualDarDoEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private final mUserId:I

.field private mWidgetDummyPreference:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$MJUtk7eJcqJhzJN-kUvrz0zEseI(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->lambda$onActivityResult$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 599
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_lockscreen_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 666
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mHandler:Landroid/os/Handler;

    .line 153
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    return-void
.end method

.method private ChangeSettingsAsLockScreenDisabled()V
    .locals 4

    .line 834
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_clock_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dualclock_menu_settings"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_notifications_option"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/lockscreen/LockScreenSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 854
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getLockType()I
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 249
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    goto :goto_0

    .line 251
    :cond_0
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_none:I

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passwordQulity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x90000

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 258
    :cond_2
    sget p0, Lcom/android/settings/R$string;->b_unlock_title:I

    goto :goto_0

    .line 274
    :cond_3
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_cac_pin_title:I

    goto :goto_0

    .line 270
    :cond_4
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    goto :goto_0

    .line 265
    :cond_5
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    goto :goto_0

    .line 261
    :cond_6
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    :goto_0
    return p0
.end method

.method private initPreference(I)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitPreference : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockScreenSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "sec_info_category"

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "always_on_screen_category"

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->aodCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "lockscreen_editor_category"

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "editor_always_on_screen"

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mAodEditorPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string p1, "editor_touch_and_hold_to_edit"

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    const-string p1, "widget_editor_preview_preference_dummy"

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mWidgetDummyPreference:Landroidx/preference/SecSwitchPreference;

    .line 296
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 297
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mAodEditorPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string p1, "lock_editor_preview_preference"

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->editorPreference:Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/lockscreen/SecLockScreenEditorPreference;->applyHighlightIfRequired(Ljava/lang/String;)V

    :cond_1
    const-string p1, "lock_screen_menu_notifications"

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateNotificationValue()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$0()V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updatePreference()V

    return-void
.end method

.method private setLinkedDataView()V
    .locals 16

    move-object/from16 v0, p0

    .line 427
    const-class v1, Lcom/android/settings/Settings$LockscreenNotificationActivity;

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    .line 430
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v3

    .line 432
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 433
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 436
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v6

    .line 439
    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v7, :cond_1

    .line 440
    new-instance v7, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v10, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 444
    :goto_0
    iget-object v10, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz v10, :cond_a

    .line 445
    invoke-virtual {v10}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->resetLinkData()V

    .line 448
    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v11, 0x114e

    .line 449
    iput v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v11

    iput v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 451
    sget v11, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    iput v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 452
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 453
    iget-object v12, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    const-class v13, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v12, "relative_link"

    .line 454
    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    iput-object v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 458
    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v13, 0x114f

    .line 459
    iput v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v13

    iput v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 461
    sget v13, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    iput v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 462
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 463
    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    const-class v15, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 464
    invoke-virtual {v13, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    iput-object v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 468
    new-instance v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v12}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 469
    sget v13, Lcom/android/settings/R$string;->sec_lock_screen_notifications_summary_hide:I

    iput v13, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v13, ":settings:fragment_args_key"

    const-string v14, "set_visibility"

    .line 470
    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1164

    .line 472
    iput v14, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v14

    iput v14, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 474
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 475
    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v15, ":settings:show_fragment_args"

    .line 476
    invoke-virtual {v14, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "extra_from_search"

    .line 477
    invoke-virtual {v14, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    iput-object v14, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 481
    new-instance v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v14}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 482
    sget v8, Lcom/android/settings/R$string;->lock_screen_notifs_title:I

    iput v8, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v8, "lock_screen_notifications"

    .line 483
    invoke-virtual {v5, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x117a

    .line 485
    iput v8, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v8

    iput v8, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 487
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 488
    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 489
    invoke-virtual {v8, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 490
    invoke-virtual {v8, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    iput-object v8, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 494
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v4, 0x1208

    .line 495
    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 497
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.applock"

    const-string v8, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    .line 498
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "is_from_suggestions"

    .line 499
    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v4, "top_level_advanced_features"

    .line 501
    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 502
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportSSecure()Z

    move-result v4

    const-string v5, "com.samsung.android.app.sprotect"

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    sget v4, Lcom/android/settings/R$string;->applockhide_app_name:I

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    .line 505
    :cond_2
    sget v4, Lcom/android/settings/R$string;->applock_app_name:I

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 511
    :goto_1
    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v4, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v4, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 515
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    if-nez v8, :cond_4

    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    .line 516
    invoke-static {v4, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 517
    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v10}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 519
    :cond_4
    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v6, :cond_5

    .line 520
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v11}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 523
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 524
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v12}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 525
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v14}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    const-string v2, "applock"

    .line 529
    invoke-static {v2}, Lcom/android/settingslib/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 530
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportSSecure()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 531
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportSSecure()Z

    move-result v2

    if-nez v2, :cond_9

    .line 532
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_9
    if-eqz v7, :cond_a

    .line 538
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private updateClockAndInformationPreference()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 348
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    goto :goto_1

    .line 345
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updateNotificationValue()V
    .locals 7

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0xc

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    .line 360
    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 364
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v5, :cond_7

    if-eqz v4, :cond_1

    .line 366
    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {v5, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v3, :cond_2

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 377
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "lockscreen_minimizing_notification"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x2

    if-ne v2, v1, :cond_4

    goto :goto_2

    .line 384
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_view_style_card_option:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 382
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_view_style_icon_option:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 395
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->updatePreference()V

    .line 396
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;->updatePreference()V

    .line 397
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;->updatePreference()V

    .line 398
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;->updatePreference()V

    .line 399
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/ShortcutsPreferenceController;->updatePreference()V

    .line 400
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->updatePreference()V

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

    .line 848
    invoke-static {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LockScreenSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1130

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 590
    sget p0, Lcom/android/settings/R$xml;->sec_lockscreen_settings:I

    return p0
.end method

.method protected isGuestUser()Z
    .locals 1

    .line 544
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 405
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult : requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LockScreenSettings"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    .line 408
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    if-eqz p1, :cond_2

    .line 411
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->updatePreference()V

    goto :goto_0

    :cond_0
    const/16 p3, 0xb1

    const/4 v0, -0x1

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 415
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->startTrustAgent()V

    goto :goto_0

    :cond_1
    const/16 p3, 0xc8

    if-ne p1, p3, :cond_2

    if-ne p2, v0, :cond_2

    .line 417
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->updatePreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 232
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 233
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    const/16 v0, 0xc8

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    .line 234
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    const/16 v0, 0x7b

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    .line 236
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    if-eqz p1, :cond_0

    .line 237
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    .line 240
    :cond_0
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/WallpaperServicesPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    .line 241
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    .line 242
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getLockType()I

    move-result p1

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->initPreference(I)V

    .line 171
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;->registerContentObserver()V

    .line 172
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;->registerContentObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 208
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 209
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;->unregisterContentObserver()V

    .line 210
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;->unregisterContentObserver()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 203
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->unregisterContentObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 555
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 556
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "lock_screen_menu_notifications"

    .line 557
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 558
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 562
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "lockscreen_minimizing_notification"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_view_style_card_option:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 564
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_view_style_icon_option:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 568
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 574
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0x1130

    const/16 v2, 0x1163

    .line 577
    invoke-static {v0, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-eqz p1, :cond_4

    xor-int/lit8 p1, p2, 0x1

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "lockscreen_notifications_option"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->ChangeSettingsAsLockScreenDisabled()V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setLinkedDataView()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateNotificationValue()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateClockAndInformationPreference()V

    .line 189
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 190
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->registerContentObserver()V

    .line 192
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 193
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->aodCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mWidgetDummyPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 217
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
