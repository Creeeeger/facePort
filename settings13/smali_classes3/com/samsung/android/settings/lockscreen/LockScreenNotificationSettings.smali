.class public Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockScreenNotificationSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;
.implements Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;
.implements Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;


# static fields
.field private static final DEBUG:Z

.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field static hasWorkProfile:Z


# instance fields
.field private isCheckedCoverScreenShowNotificationCheckBox:Z

.field private mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mFromConfigureSettings:Z

.field private mFromSetupWizard:Z

.field private mIsLockScreenDisabled:Z

.field private mJustPPP:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedRedaction:Z

.field private mSecControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFromSetupWizard(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mFromSetupWizard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJustPPP(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mJustPPP:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLockscreenAllowPrivateNotifications(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLockscreenNotificationsEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misShownSilentNotifications(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isShownSilentNotifications()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LockScreenNotificationSettings"

    const/4 v1, 0x3

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->DEBUG:Z

    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->hasWorkProfile:Z

    .line 266
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_lockscreen_notification_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 434
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 587
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addBottomButton()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_redaction_bottom_button:I

    const/4 v3, 0x0

    .line 370
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 371
    sget v2, Lcom/android/settings/R$id;->button_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 372
    new-instance v3, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 412
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    .line 413
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 414
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 415
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private adjustDialogWidth(Landroid/view/View;)V
    .locals 3

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 421
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->dialog_title_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 423
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/16 p1, 0xc

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isShowingDialogStyle()Z
    .locals 0

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDisplayDialogType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isShownSilentNotifications()Z
    .locals 2

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_silent_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private masterSwitchChanged(Z)V
    .locals 3

    .line 357
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    .line 358
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->accept(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onChanged(Z)V
    .locals 4

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 321
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    const/16 v3, 0xc

    .line 319
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 324
    iget-object p1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    const/4 p1, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    goto :goto_1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1163

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 330
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_notifications_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePrefStateWhenLockTypeNone()V
    .locals 3

    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 190
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    return-void

    .line 180
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p0, :cond_3

    .line 181
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;

    const-string v2, "lock_screen_notifications"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationContentController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationContentController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowContentWhenUnlockedController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShowContentWhenUnlockedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/NotiStyleDividerController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiStyleDividerController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/SensitiveWorkProfileNotificationPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/SensitiveWorkProfileNotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 508
    instance-of v2, v1, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    check-cast v1, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 583
    const-class p0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "needRedaction"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const/16 p0, 0x114c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 517
    sget p0, Lcom/android/settings/R$xml;->sec_lockscreen_notification_settings:I

    return p0
.end method

.method public getWorkProfileUserId(I)I
    .locals 1

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 569
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 570
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_1
    const/16 p0, -0x2710

    return p0
.end method

.method public hasWorkProfile(I)Z
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getWorkProfileUserId(I)I

    move-result p0

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedRedaction()Z
    .locals 0

    .line 535
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    return p0
.end method

.method public notifyChange(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 527
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    .line 528
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->accept(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z
    .locals 4

    const-string p1, "LockScreenNotificationSettings"

    const/4 v0, 0x0

    const-string v1, "lock_screen_show_notifications"

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 341
    invoke-static {v0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->newInstance(I)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    move-result-object p2

    .line 342
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->setListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;)V

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz p2, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 p2, 0x2

    .line 346
    invoke-static {p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->newInstance(I)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    move-result-object p2

    .line 347
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->setListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;)V

    .line 348
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->setCheckListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;)V

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    :goto_0
    return v0
.end method

.method public onCheckBoxChange(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    return-void
.end method

.method public onCheckedChanged(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 561
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    const-string v0, "cover_screen_show_notification"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenNotificationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    .line 208
    invoke-interface {v0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->hasWorkProfile(I)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->hasWorkProfile:Z

    .line 139
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    const-string p1, "LockScreenNotificationSettings"

    const-string v0, "onCreate"

    .line 141
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "needRedaction"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    const-string v0, "fromSetupWizard"

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mFromSetupWizard:Z

    const-string v0, "justPPP"

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mJustPPP:Z

    const-string p1, "description_pref"

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "fromFragment"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "configure_settings"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mFromConfigureSettings:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 263
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 219
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    const/4 v0, 0x1

    .line 551
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 214
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPositiveClick()V
    .locals 2

    const/4 v0, 0x0

    .line 544
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    .line 545
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "cover_screen_show_notification"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 229
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 236
    sget-boolean v1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->hasWorkProfile:Z

    if-nez v1, :cond_0

    const-string v1, "sensitive_work_profile"

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xc

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    .line 240
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 243
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    .line 244
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 248
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    .line 254
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    .line 255
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    .line 253
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->updatePrefStateWhenLockTypeNone()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 314
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "LockScreenNotificationSettings"

    const-string v0, "onViewCreated"

    .line 155
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 157
    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 158
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->COVERSCREEN_SETTINGS:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 163
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 164
    iget-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    if-eqz p2, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->addBottomButton()V

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isShowingDialogStyle()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_2

    sget p2, Lcom/android/settings/R$style;->LockScreenTheme:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->adjustDialogWidth(Landroid/view/View;)V

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 171
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    if-nez p1, :cond_4

    .line 173
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    :cond_4
    return-void
.end method
