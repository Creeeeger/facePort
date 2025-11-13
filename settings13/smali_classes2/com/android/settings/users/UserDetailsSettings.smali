.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAppAndContentAccessPref:Landroidx/preference/Preference;

.field mAppCopyingPref:Landroidx/preference/Preference;

.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mDialog:Landroid/app/Dialog;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGuestUserAutoCreated:Z

.field private mPhonePref:Landroidx/preference/SwitchPreference;

.field mRemoveUserPref:Landroidx/preference/Preference;

.field mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$4UyOLihnka6HrbLNnMr_msa1JC4(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6_MPbOQpvCGs8hFVWSENLGO9T74(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2bt_Jwg1oUsCOc6x81ycuOocaY(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WaBGm5SXOSqoeZUdi88GxV0s7kw(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kPzVHYd3hsgHeP5kxvtuKnauaqo(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5VdS1tGqS8f6BWbk-_JT5mdxvk(Lcom/android/settings/users/UserDetailsSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/users/UserDetailsSettings;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhonePref(Lcom/android/settings/users/UserDetailsSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserDetailsSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private enableCallsAndSms(Z)V
    .locals 6

    .line 513
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    const-string/jumbo v1, "no_sms"

    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    xor-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 523
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    .line 524
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 525
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 528
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 529
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 528
    invoke-virtual {v3, v2, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 535
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v2, v5, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 537
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/2addr p1, v3

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private isSecondaryUser(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 594
    iget-object p0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string p1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->removeUser()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 314
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 320
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->resetGuest()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->resetGuest()V

    return-void
.end method

.method private openAppAndContentAccessScreen(Z)V
    .locals 3

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "new_user"

    .line 570
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/users/AppRestrictionsFragment;

    .line 572
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 573
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_restrictions_title:I

    .line 574
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private openAppCopyingScreen()V
    .locals 0

    return-void
.end method

.method private removeUser()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method

.method private resetGuest()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e3

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    const/16 v0, 0x64

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method

.method private shouldShowSetupPromptDialog()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->isSecondaryUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 548
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 549
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 550
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ltz p1, :cond_1

    if-ltz p0, :cond_1

    .line 552
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method canDeleteUser()Z
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 482
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v2, "no_remove_user"

    .line 481
    invoke-static {p0, v2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 484
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method canSwitchUserNow()Z
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x254

    return p0

    :cond_1
    const/16 p0, 0x251

    return p0

    :cond_2
    const/16 p0, 0x250

    return p0

    :cond_3
    const/16 p0, 0x24f

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62

    return p0
.end method

.method initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 11

    const/16 v0, -0x2710

    if-eqz p2, :cond_0

    const-string/jumbo v1, "user_id"

    .line 376
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eq v1, v0, :cond_b

    const-string/jumbo v0, "new_user"

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 382
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    const-string/jumbo v0, "switch_user"

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "enable_calling"

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    const-string/jumbo v3, "remove_user"

    .line 386
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    const-string v4, "app_and_content_access"

    .line 387
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    const-string v5, "app_copying"

    .line 388
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    const-string/jumbo v6, "user_detail_header"

    .line 390
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    .line 391
    sget v7, Lcom/android/settings/R$id;->photo_default:I

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 392
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-static {p1, v7, v8}, Lcom/android/settingslib/Utils;->secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$string;->user_image_photo_selector:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v7, Lcom/android/settings/R$id;->add_a_photo_icon:I

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$drawable;->add_a_photo_circled:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    sget v7, Lcom/android/settings/R$id;->userName:I

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 398
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    sget v7, Lcom/android/settingslib/R$string;->user_switch_to_user:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v9, v2

    .line 402
    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v6, v6, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v6, :cond_1

    .line 406
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 408
    :cond_1
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 409
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 410
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 413
    :goto_1
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-nez v6, :cond_2

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 415
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 416
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 417
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 419
    :cond_2
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 423
    :cond_3
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    if-eqz p2, :cond_5

    .line 428
    invoke-direct {p0, v8}, Lcom/android/settings/users/UserDetailsSettings;->openAppAndContentAccessScreen(Z)V

    goto :goto_2

    .line 431
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 434
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p2

    const-string/jumbo v0, "no_outgoing_calls"

    if-eqz p2, :cond_9

    .line 438
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    sget v1, Lcom/android/settings/R$string;->user_enable_calling:I

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 439
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 440
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    .line 441
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v8

    .line 440
    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 442
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_6

    .line 443
    sget v0, Lcom/android/settingslib/R$string;->guest_reset_guest:I

    goto :goto_3

    .line 444
    :cond_6
    sget v0, Lcom/android/settingslib/R$string;->guest_exit_guest:I

    .line 442
    :goto_3
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 445
    iget-boolean p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz p2, :cond_8

    .line 446
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    move v2, v8

    :cond_7
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 449
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_4

    .line 452
    :cond_9
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/2addr v0, v8

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 454
    iget-object p2, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->user_remove_user:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 455
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 458
    :goto_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string/jumbo v0, "no_remove_user"

    .line 457
    invoke-static {p1, v0, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 459
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 462
    :cond_a
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 465
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_5
    return-void

    .line 378
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Arguments to this fragment must contain the user id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "user"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 139
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 140
    sget v0, Lcom/android/settings/R$xml;->user_details_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 335
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_2

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createRemoveGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 343
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 347
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createSetupUserDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    .line 331
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 332
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 319
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    .line 321
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 322
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 313
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    .line 315
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 316
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 307
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    .line 309
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 310
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 217
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    return p2

    .line 222
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canDeleteUser()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_user_mode_delete_toast_on_during_call:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/content/pm/SemUserInfo;->isSecondNumberMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.action.REMOVE_TWO_PHONE_USER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    :goto_0
    return v2

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_5

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 198
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->shouldShowSetupPromptDialog()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_1

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    :goto_1
    return v2

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 206
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->openAppAndContentAccessScreen(Z)V

    return v2

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 209
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->openAppCopyingScreen()V

    return v2

    :cond_7
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 156
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 0

    .line 371
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method switchUser()V
    .locals 4

    const-string v0, "UserDetailSettings.switchUser"

    .line 498
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e5

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 503
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 505
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    const-string v1, "Error while switching to other user."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    .line 507
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    .line 509
    throw v0
.end method
