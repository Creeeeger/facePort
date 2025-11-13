.class public Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field private static final ARG_PACKAGE_UID:Ljava/lang/String; = "uid"

.field private static final GEAR_MANAGER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.watchmanager"

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field public static final KEY_REMOVE_TASK_WHEN_FINISHING:Ljava/lang/String; = "remove_task_when_finishing"

.field private static final LOCAL_LOGV:Z = false

.field private static final REQUEST_DUAL_APP_ARCHIVE:I = 0x4159

.field private static final REQUEST_DUAL_APP_UNINSTALL:I = 0x2

.field private static final RESULT_DUAL_APP_ARCHIVE_FAIL:I = 0x4

.field private static final SEC_DEBUG:Z = true

.field private static final SIDE_SYNC_PKG_NAME:Ljava/lang/String; = "com.sec.android.sidesync30"

.field private static final SIDE_SYNC_SOURCE_PKG_NAME:Ljava/lang/String; = "com.sec.android.sidesync.source"

.field private static final TAG:Ljava/lang/String; = "AppButtonsPrefCtl"


# instance fields
.field private mAccessedFromAutoRevoke:Z

.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field private mAppButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppLaunchIntent:Landroid/content/Intent;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private final mArchiveBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mButton3:Landroid/widget/Button;

.field private mButton4:Landroid/widget/Button;

.field private mButton4Container:Landroid/widget/RelativeLayout;

.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDisableInProgress:Z

.field final mDisableOverridedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field private mForceStopInProgress:Z

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mHibernationEligibility:I

.field final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRestoringState:Z

.field private mIsSupportedArchive:Z

.field private mListeningToPackageRemove:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOverlayManager:Landroid/content/om/OverlayManager;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/widget/LinearLayout;

.field private final mRequestRemoveDeviceAdmin:I

.field private final mRequestUninstall:I

.field private final mRestoreBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private mSessionId:J

.field private final mShouldNotDisabledPackages:[Ljava/lang/String;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$AuTY5HYX0E7aah881_zHhaOx6sk(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$handleDialogClick$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$g7lR7zIdSclWjOi4uGpc2kHudS0(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$initButtonPreference$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMLLsU6KNjNh7eQdTfjh8Rl-u00(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$handleDialogClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tQJ0nsR-4n5ZDzykDhWppjQ0SiQ(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$refreshUi$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$txKC9lIe18nuQIUFYExTyL-RB1w(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$uninstallPkg$4(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9yy_QpXRl-EI3SEK5-n6MhQLqw(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$requireAuthAndExecute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4JWDB3aIT5Jwdxsr7yO63P241I(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$handleDialogClick$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yHG35yZ2kQvT_flBETa_UoZmzcI(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$initBottomButtonsLayout$7(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessedFromAutoRevoke(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmButton4(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFinishing(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mProgress:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestRemoveDeviceAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsRestoringState(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsRestoringState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getPackageNameForMetric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUid(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDisabledUntilUsed(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequireAuthAndExecute(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGoogleCoreControl(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setGoogleCoreControl(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDialogInner(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->showDialogInner(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopListeningToPackageRemove(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V
    .locals 6

    const-string v0, "action_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsSupportedArchive:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsRestoringState:Z

    const-string v1, "com.android.statementservice"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mShouldNotDisabledPackages:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableOverridedPackages:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHibernationEligibility:I

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRestoreBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mArchiveBroadcastReceiver:Landroid/content/BroadcastReceiver;

    instance-of v1, p2, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const-string p5, "device_policy"

    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p5, "user"

    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const-class p5, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/om/OverlayManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    const-class p2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string p5, "CscFeature_Setting_ConfigAppAndIntentListForDisablingMenuOverride"

    invoke-virtual {p2, p5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 p5, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableOverridedPackages:Ljava/util/HashMap;

    aget-object v5, v3, v0

    aget-object v3, v3, p5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    :cond_2
    iput p6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    iput p7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.action.AUTO_REVOKE_PERMISSIONS"

    const-wide/16 p6, 0x0

    invoke-virtual {p1, p2, p6, p7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    cmp-long p1, p1, p6

    if-eqz p1, :cond_3

    move v0, p5

    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {p1, p2, p4}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p1, p0, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_4

    :cond_4
    iput-boolean p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    :goto_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment should implement AppButtonsDialogListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getPackageNameForMetric()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private getUid()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->retrieveAppEntry()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private handleDualAppArchiveResult(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f1403db

    invoke-static {p1, v0, p0, p1, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f1403da

    invoke-static {p1, v0, p0, p1, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initButtonPreference()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "action_buttons"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1414bd

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v1, 0x7f0805fc

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f14302a

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    const v1, 0x7f0805e0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f141009

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)V

    const v1, 0x7f0805ed

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)V

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    iget-object v2, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-object v3, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    if-eq v1, v3, :cond_0

    iput-object v1, v2, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton3Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v2, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_1
    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method private isAppEligibleForHibernation()Z
    .locals 2

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHibernationEligibility:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDisabledUntilUsed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDisablingBtnBlocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z
    .locals 6

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "DisableBlocked by Meta : "

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v4, "com.sec.android.app.blockdisabling"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Not found package : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.evernote"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.samsung.android.app.pinboard"

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.osp.app.signin"

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method private isDisablingBtnUnblocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 9

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "fail to get least api level : "

    const-string v2, "mirror info : "

    const-string v3, "Disable UnBlocked by Meta : "

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.app.firewall"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_0

    return v4

    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    const-string v7, "com.sec.android.app.unblockdisabling"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v5, v4

    goto/16 :goto_2

    :cond_1
    const-string v3, "com.sec.android.app.unblockdisabling.mirrorpkginfo"

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x2

    const/16 v8, 0x21

    if-lt v6, v7, :cond_2

    :try_start_1
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v7, "ro.product.first_api_level"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move v6, v5

    :catch_1
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    array-length v1, v2

    if-lt v1, v4, :cond_3

    aget-object v1, v2, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-lt v8, v6, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameNotFoundException about : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.watchmanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.android.sidesync30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.android.sidesync.source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_4

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.samsung.knox.securefolder"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :cond_5
    :goto_3
    return v4
.end method

.method private isEnabledArchive(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6

    const-string v0, "This app("

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AppButtonsPrefCtl"

    if-nez v1, :cond_0

    const-string p0, "Archiving flags is false"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->isAppArchivable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not app archivable"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "This user ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    const-string v0, ") is not owner"

    invoke-static {p1, p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/android/settingslib/applications/AppUtils;->isArchived(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v4, "This app ("

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is archived"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v5, p1}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;->isAllowUninstallOrArchive(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is allow uninstall or archive"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v5, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUninstallBlocked(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const-string v4, "this app ("

    if-eqz v0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is uninstall blocked by admin"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isAppEligibleForHibernation()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is eligible for hibernation"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is enable archive"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, ") is not found"

    invoke-static {p0, p1, v0, v3}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isInstantApp()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKioskHomeBlocked(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "isKioskModeEnabled"

    const-string v2, "content://com.sec.knox.provider2/KioskMode"

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLaunchedInternal()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings.intelligence"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :catch_0
    const-string p0, "AppButtonsPrefCtl"

    const-string v1, "Can not get the launched package from activity manager!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSettingsRunOnTop()Z
    .locals 4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "topActivity : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "taskPkgName : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.galaxyregistry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isSystemModule()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settingslib/applications/AppUtils;->isMainlineModule(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleDialogClick$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/16 v2, 0x36a

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getPackageNameForMetric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.att.iqi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/att/iqi/lib/IQIManager;->disableService()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140cfa

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setGoogleCoreControl(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleDialogClick$2()V
    .locals 1

    const-string v0, "com.att.iqi"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    return-void
.end method

.method private synthetic lambda$handleDialogClick$3()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.att.iqi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/IQIManager;->forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14100c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initBottomButtonsLayout$7(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method private synthetic lambda$initButtonPreference$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method private synthetic lambda$refreshUi$5(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHibernationEligibility:I

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateArchiveButton()V

    return-void
.end method

.method private static synthetic lambda$requireAuthAndExecute$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$uninstallPkg$4(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x368

    invoke-virtual {p1, p2, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchApplication()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    const-string v1, "AppButtonsPrefCtl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sessionId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " uninstalling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reached from auto revoke"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v0, v5, v2, v3, v4}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIJLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not launch intent for action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateOpenButton()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/16 v2, 0x6ed

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private refreshAndFinishIfPossible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->startListeningToPackageRemove()V

    :goto_0
    return-void
.end method

.method private requireAuthAndExecute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private setBottomButtonBar()V
    .locals 7

    const-string v0, "setBottomButtonBar"

    const-string v1, "AppButtonsPrefCtl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v2, 0x7f0a0299

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0850

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070da2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0a0240

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0a028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f0a0292

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f0a0293

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f0a028f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v3, 0x7f0a028e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f0a0bca

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mProgress:Landroid/widget/LinearLayout;

    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "setBottomButtonBar buttonBar null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private setGoogleCoreControl(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const-string v0, "com.google.android.configupdater"

    const-string v2, "com.google.android.syncadapters.calendar"

    const-string v3, "com.google.android.gms"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "update control setting : "

    const-string v0, ", "

    invoke-static {p1, v3, v0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "AppButtonsPrefCtl"

    invoke-static {p1, v2, v3}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p2, :cond_1

    move v1, v0

    :cond_1
    const-string p1, "google_core_control"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setIntentAndFinish(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "remove_task_when_finishing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return-void
.end method

.method private showDialogInner(I)V
    .locals 3

    new-instance v0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialog "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startListeningToPackageRemove()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateArchiveButton()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsSupportedArchive:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isEnabledArchive(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/AppUtils;->isArchived(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsRestoringState:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4Container:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    const v3, 0x7f141ef2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v4, 0x7f08083d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    const v3, 0x7f1403d9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v4, 0x7f080835

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton4Container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private updateForceStopButtonsForException(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigAppListForDisablingForceStopButton"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blockForceStopAppList : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ws.dm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.downloadablekeystore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.sec.android.fotaclient"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_EnableItsOn"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.itsoninc.android.itsonclient"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "com.itsoninc.android.itsonservice"

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "com.itsoninc.android.uid"

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_5
    const-string p1, "com.samsung.android.themecenter"

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_6
    const-string p1, "com.samsung.android.localeoverlaymanager"

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isKioskHomeBlocked(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_8
    const-string p1, "com.samsung.android.da.daagent"

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons(Landroid/content/pm/PackageInfo;)V
    .locals 5

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "Buttoin1,2 Disabled by AdminRestriction : "

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isStopSystemAppAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to get package info"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v3

    const/4 v4, 0x0

    const/16 v2, 0x327

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x4

    const-string v7, "settings"

    const/16 v4, 0x3c

    const/4 v5, 0x1

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Landroid/app/ActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(ILjava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemModule()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x4

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "action_buttons"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible(Z)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible(Z)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x4159

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDualAppArchiveResult(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleDialogClick(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public handleDisableable()Z
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppButtonsPrefCtl"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f080838

    const v5, 0x7f140d09

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisablingBtnUnblocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisablingBtnBlocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "handleDisableable disable case 2, disableable : false"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    check-cast v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v1, v0

    const-string v0, "handleDisableable disable case 3, disableable : "

    invoke-static {v0, v3, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    const v4, 0x7f140df6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v5, 0x7f080839

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    const-string v0, "handleDisableable enable case 1, disableable : true"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v0, "handleDisableable disable case 1"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    return v1
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public initBottomButtonsLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    if-nez v0, :cond_0

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "initBottomButtonsLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setBottomButtonBar()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    const v1, 0x7f1414bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v2, 0x7f08083c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    const v3, 0x7f14302a

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v4, 0x7f08083e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    const v3, 0x7f141009

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v4, 0x7f08083a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateArchiveButton()V

    :cond_0
    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method public bridge synthetic onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRestoreBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mArchiveBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUI()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.unarchive.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRestoreBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.archive.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mArchiveBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public refreshUi()Z
    .locals 4

    const-string v0, "refreshUi()"

    const-string v1, "AppButtonsPrefCtl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->retrieveAppEntry()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AppButton refreshUI for Pkg : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v3, "android.app.home.alternate"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateOpenButton()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUninstallButton()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateArchiveButton()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->checkAdminRestrictionOnButtons(Landroid/content/pm/PackageInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v2
.end method

.method public retrieveAppEntry()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide v3, 0x100401240L

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception when retrieving package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppButtonsPrefCtl"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setSupportedArchive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mIsSupportedArchive:Z

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public uninstallPkg(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateForceStopButton()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppButtonsPrefCtl"

    if-eqz v0, :cond_1

    const-string v0, "User can\'t force stop device admin"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    const-string v0, "App is not explicitly stopped"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isAppInstalled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Archive app is not supported force stop"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "package"

    invoke-static {v3, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-direct {v4, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending broadcast to query restart status for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "android.permission.HANDLE_QUERY_PACKAGE_RESTART"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonsForException(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public updateForceStopButtonInner(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public updateOpenButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isLaunchedInternal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSettingsRunOnTop()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "launched on other process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateUI()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    const-string v2, "no_control_apps"

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(Z)V

    :cond_0
    return-void
.end method

.method public updateUninstallButton()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    const-string v5, "AppButtonsPrefCtl"

    if-nez v4, :cond_1

    const-string p0, "Uninstall button is not exist."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDisableable()Z

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    const v6, 0x7f14302a

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v7, 0x7f08083e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v4, v6, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v0, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_5

    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    const v6, 0x7f140df6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const v7, 0x7f080839

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v4, v6, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    move v0, v2

    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "disablAppList : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_6

    const-string v0, "disable button 1 by CSCFEATURE_SETTING_CONFIGFORBIDAPPDISABLEBUTTON"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mShouldNotDisabledPackages:[Ljava/lang/String;

    array-length v6, v4

    move v7, v3

    :goto_5
    if-ge v7, v6, :cond_9

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_8

    const-string v0, "disable button 1 by mShouldNotDisabledPackages"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v8, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_a

    if-eq v4, v2, :cond_a

    const-string v0, "disable button 1 by MDM Policy"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_a
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v0, "disable button 1 by mDpm.packageHasActiveAdmins"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_b
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "disable button 1 by Utils.isProfileOrDeviceOwner"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v0, v3

    goto :goto_8

    :cond_c
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    :goto_8
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, "disable button 1 by Utils.isDeviceProvisioningPackage"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_e
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v0, "disable button 1 by mDpm.isUninstallInQueue"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_f
    if-eqz v0, :cond_15

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v1, :cond_11

    const-string v0, "disable button 1 by isBundled && mHomePackages.contains"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_9
    move v0, v3

    goto :goto_b

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_13

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le v0, v2, :cond_12

    goto :goto_a

    :cond_12
    move v2, v3

    :goto_a
    move v0, v2

    goto :goto_b

    :cond_13
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveHomeAppBehavior()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v2, :cond_15

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    :cond_15
    :goto_b
    iget-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v2, :cond_16

    const-string v0, "disable button 1 by mAppsControlDisallowedBySystem"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_16
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_17

    const-string v0, "disable button 1 isResourceOverlay"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_17
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {v4, v2, v1}, Landroid/content/om/OverlayManager;->getOverlayInfo(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v0, "disable button 1 overlayInfo"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_18
    move v3, v0

    :goto_c
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    const-string p0, "mButtonsPref.setButton2Enabled : "

    invoke-static {p0, v5, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
