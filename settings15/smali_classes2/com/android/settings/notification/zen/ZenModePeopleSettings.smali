.class public Lcom/android/settings/notification/zen/ZenModePeopleSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/notification/zen/ZenModeSettingsBase$ZenModeDependentListener;
.implements Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static mContactAllowList:Ljava/util/List;

.field public static mIsFromDnd:Z

.field public static mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# instance fields
.field public final CONTACT_ID:I

.field public final PHONE_NUMBER:I

.field public final REQUEST_CODE_OK:I

.field public mControllers:Ljava/util/List;

.field public mZenModeAllowAlsoController:Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;

.field public mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$1;

    const v1, 0x7f1702b5

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->REQUEST_CODE_OK:I

    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->PHONE_NUMBER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->CONTACT_ID:I

    return-void
.end method

.method public static buildPreferenceControllers$3(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-boolean v3, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-boolean v3, v1, Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;->mIsFromDnd:Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/notification/zen/SecZenModePeopleSettingsController;

    const-string v1, "key_sec_zen_mode_people_settings_dropdown_menu"

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/settings/notification/zen/SecZenModePeopleSettingsController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;

    const-string v1, "zen_mode_also_allow"

    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-static {p1, v0}, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->buildPreferenceControllers$3(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v1, v0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    :cond_4
    instance-of v1, v0, Lcom/samsung/android/settings/notification/zen/SecZenModePeopleSettingsController;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/notification/zen/SecZenModePeopleSettingsController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModePeopleSettingsController;->setModeDependentListener(Lcom/android/settings/notification/zen/ZenModeSettingsBase$ZenModeDependentListener;)V

    :cond_5
    instance-of v1, v0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenModeAllowAlsoController:Lcom/samsung/android/settings/notification/zen/ZenModeAllowAlsoController;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget-boolean p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/settings/notification/zen/ZenModeSettings;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-class p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenFragment;

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71f

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702b5

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->REQUEST_CODE_OK:I

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "result"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModePeopleSettings;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-boolean p2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenUtil;->setExceptionContact(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string v0, "zen_contact"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iput-object p0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeCallExceptionListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    :cond_0
    return-void
.end method
