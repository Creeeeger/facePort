.class public Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mEditorCategory:Landroidx/preference/PreferenceCategory;

.field public mEditorHijriCalendar:Landroidx/preference/SecSwitchPreference;

.field public mEditorLunarCalendar:Landroidx/preference/SecSwitchPreference;

.field public final mIsDualDarDoEnabled:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

.field public mTrustAgentClickIntent:Landroid/content/Intent;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;

    const v1, 0x7f1701be

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LockScreenSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1130

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701be

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo p3, "onActivityResult : requestCode : "

    const-string v0, " resultCode : "

    const-string v1, "LockScreenSettings"

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    new-instance p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    if-eqz p1, :cond_2

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

    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->updatePreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;

    const/16 v0, 0x7b

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mIsDualDarDoEnabled:Z

    if-eqz p1, :cond_0

    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    :cond_0
    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;->init(Landroidx/fragment/app/Fragment;)V

    const-class p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    const/16 v0, 0xc8

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    const-string v0, "LockScreenSettings"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f14281c

    goto :goto_0

    :cond_1
    const p1, 0x7f14281b

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const-string/jumbo v1, "passwordQuality : "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10000

    if-eq p1, v1, :cond_7

    const/high16 v1, 0x20000

    if-eq p1, v1, :cond_6

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_6

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x70000

    if-eq p1, v1, :cond_4

    const/high16 v1, 0x90000

    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const p1, 0x7f14054d

    goto :goto_0

    :cond_4
    const p1, 0x7f14304e

    goto :goto_0

    :cond_5
    const p1, 0x7f14281d

    goto :goto_0

    :cond_6
    const p1, 0x7f14281f

    goto :goto_0

    :cond_7
    const p1, 0x7f14281e

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InitPreference : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "lockscreen_editor_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "editor_touch_and_hold_to_edit"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    const-string p1, "editor_hijri_calendar"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorHijriCalendar:Landroidx/preference/SecSwitchPreference;

    const-string p1, "editor_lunar_calendar"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorLunarCalendar:Landroidx/preference/SecSwitchPreference;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "always_on_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_8
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_AOD:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f141635

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f141634

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->unregisterContentObserver()V

    return-void
.end method

.method public final onResume()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lockscreen_notifications_option"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledForCurrentUser()Z

    move-result v5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v6, :cond_3

    new-instance v6, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-eqz v7, :cond_c

    iget-object v7, v7, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v8, "LSE4465LF"

    iput-object v8, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const/16 v8, 0x1130

    iput v8, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v9, 0x7f142353

    iput v9, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.samsung.dressroom.intent.action.SHOW_LOCK_SETTINGS"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v10, 0x14000020

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object v9, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-wide/16 v9, 0x3e8

    iput-wide v9, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->clickInterval:J

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v10, "LSE4465LP"

    iput-object v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v8, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v10, 0x7f141b25

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-class v12, Lcom/android/settings/Settings$LockscreenNotificationActivity;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iput-object v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v11, "LSE4465LH"

    iput-object v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v8, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v11, 0x7f140645

    iput v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-class v11, Lcom/samsung/android/settings/biometrics/face/FaceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v13, "LSE4465LN"

    iput-object v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v8, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v13, 0x7f140646

    iput v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-class v13, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintFragment;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    new-instance v13, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v13}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v14, "LSE4465SA"

    iput-object v14, v13, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v8, v13, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v8, 0x7f142507    # 1.96918E38f

    iput v8, v13, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v8, ":settings:fragment_args_key"

    const-string v14, "lockscreen_alert_notification"

    invoke-virtual {v4, v8, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v14, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v12, ":settings:show_fragment_args"

    invoke-virtual {v8, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "extra_from_search"

    invoke-virtual {v8, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v8, v13, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v4, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isKnoxOrganizationOwnedDevice(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v4, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    iget v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    if-nez v3, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v4, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v4, v10}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    if-nez v0, :cond_a

    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez v5, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_b
    if-eqz v6, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iput-boolean v2, v0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    goto :goto_7

    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTouchAndHoldToEditPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_f
    :goto_7
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f142502

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_10
    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->registerContentObserver()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
