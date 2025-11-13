.class public Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;,
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener;,
        Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field private static final ARG_PACKAGE_UID:Ljava/lang/String; = "uid"

.field private static final GEAR_MANAGER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.watchmanager"

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field public static final KEY_REMOVE_TASK_WHEN_FINISHING:Ljava/lang/String; = "remove_task_when_finishing"

.field private static final LOCAL_LOGV:Z = false

.field private static final REQUEST_DUAL_APP_UNINSTALL:I = 0x2

.field private static final SEC_DEBUG:Z = true

.field private static final SIDE_SYNC_PKG_NAME:Ljava/lang/String; = "com.sec.android.sidesync30"

.field private static final SIDE_SYNC_SOURCE_PKG_NAME:Ljava/lang/String; = "com.sec.android.sidesync.source"

.field private static final TAG:Ljava/lang/String; = "AppButtonsPrefCtl"


# instance fields
.field private mAccessedFromAutoRevoke:Z

.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppLaunchIntent:Landroid/content/Intent;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mButton3:Landroid/widget/Button;

.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field mDisableAfterUninstall:Z

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

.field final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToPackageRemove:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOverlayManager:Landroid/content/om/OverlayManager;

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageName:Ljava/lang/String;

.field private final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mRequestRemoveDeviceAdmin:I

.field private final mRequestUninstall:I

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSessionId:J

.field private final mShouldNotDisabledPackages:[Ljava/lang/String;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUpdatedSysApp:Z

.field private final mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CYHpb60AbZkSbPcDdNPGwTyBOnY(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$handleDialogClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$C_E2Gl4I8pSvvKsEH4jW8arW0I0(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$initButtonPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LP4oyj1MCwnaUWufrPcG9SttB6U(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->lambda$initBottomButtonsLayout$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessedFromAutoRevoke(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsControlDisallowedBySystem(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinishing(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestRemoveDeviceAdmin(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatedSysApp(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getPackageNameForMetric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUid(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDisabledUntilUsed(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSingleUser(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSingleUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetGoogleCoreControl(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setGoogleCoreControl(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialogInner(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->showDialogInner(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopListeningToPackageRemove(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V
    .locals 6

    const-string v0, "action_buttons"

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    .line 120
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUpdatedSysApp:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    const-string v1, "com.android.statementservice"

    .line 171
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mShouldNotDisabledPackages:[Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableOverridedPackages:Ljava/util/HashMap;

    .line 926
    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1121
    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    instance-of v1, p2, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;

    if-eqz v1, :cond_5

    .line 192
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 194
    invoke-virtual {v1, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 195
    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const-string p5, "device_policy"

    .line 196
    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo p5, "user"

    .line 197
    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 199
    const-class p5, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, p5}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/om/OverlayManager;

    iput-object p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    .line 200
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 202
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    .line 207
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string p5, "CscFeature_Setting_ConfigAppAndIntentListForDisablingMenuOverride"

    invoke-virtual {p2, p5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 208
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 p5, 0x1

    .line 212
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 213
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 214
    array-length v1, p2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/"

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 217
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableOverridedPackages:Ljava/util/HashMap;

    aget-object v5, v3, v0

    aget-object v3, v3, p5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 224
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 228
    :cond_2
    iput p6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    .line 229
    iput p7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    .line 230
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    .line 231
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

    .line 232
    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    if-eqz p4, :cond_4

    .line 235
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {p1, p4, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 236
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p1, p0, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 237
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_2

    .line 239
    :cond_4
    iput-boolean p5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    :goto_2
    return-void

    .line 188
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment should implement AppButtonsDialogListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getPackageNameForMetric()Ljava/lang/String;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 1093
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

    .line 1071
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->retrieveAppEntry()V

    .line 1074
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_1

    .line 1075
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private initButtonPreference()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "action_buttons"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->launch_instant_app:I

    .line 1017
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_open:I

    .line 1018
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 1019
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->uninstall_text:I

    .line 1020
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_delete:I

    .line 1021
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener-IA;)V

    .line 1022
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->force_stop:I

    .line 1023
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_force_stop:I

    .line 1024
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener-IA;)V

    .line 1025
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const/4 v1, 0x0

    .line 1026
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method private isDisabledUntilUsed()Z
    .locals 1

    .line 910
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
    .locals 5

    const-string v0, "AppButtonsPrefCtl"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1247
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1248
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v3, "com.sec.android.app.blockdisabling"

    .line 1249
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisableBlocked by Meta : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    .line 1254
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found package : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    :goto_0
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.evernote"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.samsung.android.app.pinboard"

    .line 1260
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.osp.app.signin"

    .line 1261
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private isDisablingBtnUnblocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 9

    const-string v0, "AppButtonsPrefCtl"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1192
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1193
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    const-string v4, "com.sec.android.app.unblockdisabling"

    .line 1195
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable UnBlocked by Meta : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v2, v1

    goto/16 :goto_2

    :cond_0
    const-string v4, "com.sec.android.app.unblockdisabling.mirrorpkginfo"

    const/4 v5, 0x0

    .line 1199
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mirror info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ":"

    .line 1202
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x21

    .line 1205
    array-length v6, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 1207
    :try_start_1
    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v7, "ro.product.first_api_level"

    .line 1208
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move v6, v2

    .line 1210
    :catch_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get least api level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v6, v2

    .line 1213
    :goto_1
    array-length v3, v4

    if-lt v3, v1, :cond_2

    aget-object v3, v4, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-lt v5, v6, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    aget-object v4, v4, v2

    .line 1216
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1217
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1225
    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException about : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_2
    :goto_2
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.app.watchmanager"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.sidesync30"

    .line 1231
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.sidesync.source"

    .line 1232
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 1234
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_3

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.samsung.knox.securefolder"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method

.method private isInstantApp()Z
    .locals 0

    .line 1081
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
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider2/KioskMode"

    const-string v2, "isKioskModeEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1356
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v3, "getKioskHomePackage"

    invoke-static {p0, v1, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1361
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLaunchedInternal()Z
    .locals 2

    const/4 v0, 0x1

    .line 1372
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1373
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.settings"

    .line 1374
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings.intelligence"

    .line 1375
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

    .line 1377
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSingleUser()Z
    .locals 1

    .line 922
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemModule()Z
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1086
    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->isSystemModule(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1087
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

.method private synthetic lambda$handleDialogClick$0()V
    .locals 1

    const-string v0, "com.att.iqi"

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    return-void
.end method

.method private synthetic lambda$initBottomButtonsLayout$2(Landroid/view/View;)V
    .locals 0

    .line 1168
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method private synthetic lambda$initButtonPreference$1(Landroid/view/View;)V
    .locals 0

    .line 1019
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->launchApplication()V

    return-void
.end method

.method private launchApplication()V
    .locals 8

    .line 1048
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1049
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAccessedFromAutoRevoke:Z

    const-string v1, "AppButtonsPrefCtl"

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " uninstalling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reached from auto revoke"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x110

    .line 1053
    iget-wide v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mSessionId:J

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->getUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-static/range {v2 .. v7}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IJILjava/lang/String;I)V

    .line 1058
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

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not launch intent for action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateOpenButton()V

    .line 1064
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

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 747
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(ZZ)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->startListeningToPackageRemove()V

    :goto_0
    return-void
.end method

.method private setBottomButtonBar()V
    .locals 7

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "setBottomButtonBar"

    .line 1135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v2, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1139
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_bottom_bar_preference:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1141
    sget v3, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1142
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    sget v3, Lcom/android/settings/R$id;->button1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    .line 1144
    sget v3, Lcom/android/settings/R$id;->button2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    .line 1145
    sget v3, Lcom/android/settings/R$id;->button3:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    .line 1146
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1147
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1148
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1149
    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "setBottomButtonBar buttonBar null"

    .line 1151
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 0

    .line 1156
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1157
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private setGoogleCoreControl(Ljava/lang/String;I)V
    .locals 6

    .line 1311
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 1312
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/4 v0, 0x3

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.configupdater"

    const-string v4, "com.google.android.syncadapters.calendar"

    .line 1314
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1316
    aget-object v4, v2, v3

    .line 1317
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update control setting : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
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
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 2

    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    .line 739
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "remove_task_when_finishing"

    .line 740
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 742
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    return-void
.end method

.method private showDialogInner(I)V
    .locals 3

    .line 915
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->newInstance(I)Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 917
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 941
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

    .line 1030
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 1034
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1035
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1043
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mListeningToPackageRemove:Z

    .line 1044
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateForceStopButtonsForException(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 5

    .line 1270
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigAppListForDisablingForceStopButton"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockForceStopAppList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1274
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1275
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1283
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

    .line 1284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.downloadablekeystore"

    .line 1285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.sec.android.fotaclient"

    .line 1286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 1288
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_EnableItsOn"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.itsoninc.android.itsonclient"

    .line 1289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.itsoninc.android.itsonservice"

    .line 1290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.itsoninc.android.uid"

    .line 1291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1292
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1293
    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1294
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1295
    :cond_5
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.themecenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1296
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1297
    :cond_6
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.localeoverlaymanager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1298
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1300
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isKioskHomeBlocked(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1301
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1304
    :cond_8
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string p2, "com.samsung.android.da.daagent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1305
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1287
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
    .locals 4

    const-string v0, "AppButtonsPrefCtl"

    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isStopSystemAppAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 1337
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    aget-object v2, v2, v3

    .line 1338
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buttoin1,2 Disabled by AdminRestriction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 1341
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to get package info"

    .line 1345
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method forceStopPackage(Ljava/lang/String;)V
    .locals 6

    .line 818
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 819
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 821
    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v3

    const/16 v2, 0x327

    const/4 v5, 0x0

    move-object v4, p1

    .line 818
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 824
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppButtonsPrefCtl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 829
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 830
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 832
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 246
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

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "action_buttons"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 410
    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 411
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    if-eqz p1, :cond_0

    .line 412
    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    .line 413
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    .line 416
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible(Z)V

    goto :goto_0

    .line 417
    :cond_1
    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestRemoveDeviceAdmin:I

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 418
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshAndFinishIfPossible(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleDialogClick(I)V
    .locals 6

    const-string v0, "com.att.iqi"

    const/16 v1, 0x36a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 455
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    if-nez p1, :cond_1

    .line 456
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 458
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {p1, v0, v1}, Lcom/att/iqi/lib/IQIManager;->forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 462
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mForceStopInProgress:Z

    goto/16 :goto_0

    .line 465
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->force_stop_in_progress:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v4, v3, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 450
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 425
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    new-array v5, v3, [Landroid/util/Pair;

    invoke-virtual {p1, v4, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 428
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 429
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    if-nez p1, :cond_5

    .line 430
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 432
    invoke-virtual {p1}, Lcom/att/iqi/lib/IQIManager;->disableService()V

    .line 433
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    goto :goto_0

    .line 436
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->disable_app_in_progress:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 441
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setGoogleCoreControl(Ljava/lang/String;I)V

    .line 443
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method handleDisableable()Z
    .locals 8

    .line 842
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 843
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 845
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :catch_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "AppButtonsPrefCtl"

    const/4 v5, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 851
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisablingBtnUnblocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 857
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisabledUntilUsed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->disable_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v6, Lcom/android/settings/R$drawable;->sec_app_info_button_disable:I

    .line 860
    invoke-virtual {v1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 859
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isDisablingBtnBlocked(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "handleDisableable disable case 2, disableable : false"

    .line 863
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationFeatureProvider;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 867
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    .line 869
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDisableable disable case 3, disableable : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->enable_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 873
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v6, Lcom/android/settings/R$drawable;->sec_app_info_button_enable:I

    .line 874
    invoke-virtual {v1, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 873
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 876
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableInProgress:Z

    const-string p0, "handleDisableable enable case 1, disableable : true"

    .line 878
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_1

    .line 853
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->disable_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v1, Lcom/android/settings/R$drawable;->sec_app_info_button_disable:I

    .line 855
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 854
    invoke-virtual {v0, v5, p0, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string p0, "handleDisableable disable case 1"

    .line 856
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public initBottomButtonsLayout()V
    .locals 4

    .line 1161
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFinishing:Z

    if-nez v0, :cond_0

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "initBottomButtonsLayout"

    .line 1162
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setBottomButtonBar()V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->launch_instant_app:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v2, Lcom/android/settings/R$drawable;->sec_app_info_button_open:I

    .line 1167
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1166
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->uninstall_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_uninstall:I

    .line 1173
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1172
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1174
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->force_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_force_stop:I

    .line 1179
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1178
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ForceStopButtonListener-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 906
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    return-void
.end method

.method public bridge synthetic onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V

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

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

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
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    const-string v2, "no_control_apps"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method refreshUi()Z
    .locals 6

    const-string v0, "AppButtonsPrefCtl"

    const-string v1, "refreshUi()"

    .line 955
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->retrieveAppEntry()V

    .line 961
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 964
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    .line 965
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    const-string v3, "AppButton refreshUI for Pkg : "

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 966
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 967
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 968
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mUserId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 973
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 978
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 979
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    .line 980
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 981
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 982
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const-string v5, "android.app.home.alternate"

    .line 987
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 989
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1001
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateOpenButton()V

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateUninstallButton()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButton()V

    .line 1007
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->checkAdminRestrictionOnButtons(Landroid/content/pm/PackageInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method retrieveAppEntry()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v3, 0x401240

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 527
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppButtonsPrefCtl"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 533
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3

    .line 800
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->stopListeningToPackageRemove()V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 804
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x368

    invoke-virtual {p1, p2, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 809
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mRequestUninstall:I

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 813
    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDisableAfterUninstall:Z

    return-void
.end method

.method updateForceStopButton()V
    .locals 13

    .line 755
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppButtonsPrefCtl"

    if-eqz v0, :cond_0

    const-string v0, "User can\'t force stop device admin"

    .line 757
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto/16 :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "App is not explicitly stopped"

    .line 762
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    goto :goto_0

    .line 765
    :cond_1
    new-instance v5, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "package"

    .line 766
    invoke-static {v6, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-array v0, v3, [Ljava/lang/String;

    .line 767
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending broadcast to query restart status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 777
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonsForException(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method updateForceStopButtonInner(Z)V
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 785
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton3:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method updateOpenButton()V
    .locals 5

    .line 539
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    .line 542
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

    .line 549
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 550
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppLaunchIntent:Landroid/content/Intent;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    goto :goto_1

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isLaunchedInternal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 557
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 552
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method updateUninstallButton()V
    .locals 10

    .line 565
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

    .line 569
    :goto_0
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDisableable()Z

    move-result v0

    goto :goto_2

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v5, Lcom/android/settings/R$string;->uninstall_text:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v6, Lcom/android/settings/R$drawable;->sec_app_info_button_uninstall:I

    .line 579
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 578
    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 582
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_4

    move v0, v3

    goto :goto_2

    .line 570
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    sget v5, Lcom/android/settings/R$string;->enable_text:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v6, Lcom/android/settings/R$drawable;->sec_app_info_button_enable:I

    .line 572
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 571
    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    move v0, v2

    .line 591
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v6, "AppButtonsPrefCtl"

    if-nez v4, :cond_6

    .line 592
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disablAppList : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    .line 594
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 595
    array-length v5, v4

    move v7, v3

    :goto_3
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 596
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 597
    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_5

    const-string v0, "disable button 1 by CSCFEATURE_SETTING_CONFIGFORBIDAPPDISABLEBUTTON"

    .line 599
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 608
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mShouldNotDisabledPackages:[Ljava/lang/String;

    array-length v5, v4

    move v7, v3

    :goto_5
    if-ge v7, v5, :cond_8

    aget-object v8, v4, v7

    .line 609
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 610
    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_7

    const-string v0, "disable button 1 by mShouldNotDisabledPackages"

    .line 612
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_6

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    new-array v4, v2, [Ljava/lang/String;

    .line 621
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 622
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v8, "getApplicationUninstallationEnabled"

    invoke-static {v5, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    if-eq v4, v2, :cond_9

    const-string v0, "disable button 1 by MDM Policy"

    .line 625
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_9
    if-eqz v1, :cond_a

    .line 634
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v0, "disable button 1 by mDpm.packageHasActiveAdmins"

    .line 636
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 642
    :cond_a
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v4, v5, v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 643
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v7}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "disable button 1 by Utils.isProfileOrDeviceOwner"

    .line 645
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 650
    :cond_b
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mUserId:I

    invoke-static {v4, v5, v7}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_7
    move v0, v3

    .line 656
    :cond_c
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "disable button 1 by Utils.isDeviceProvisioningPackage"

    .line 659
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 663
    :cond_d
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, "disable button 1 by mDpm.isUninstallInQueue"

    .line 665
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_e
    if-eqz v0, :cond_12

    .line 674
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v1, :cond_f

    const-string v0, "disable button 1 by isBundled && mHomePackages.contains"

    .line 677
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_9

    .line 679
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le v0, v2, :cond_10

    goto :goto_8

    :cond_10
    move v2, v3

    :goto_8
    move v0, v2

    goto :goto_9

    .line 688
    :cond_11
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 693
    :cond_12
    :goto_9
    iget-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppsControlDisallowedBySystem:Z

    if-eqz v2, :cond_13

    const-string v0, "disable button 1 by mAppsControlDisallowedBySystem"

    .line 695
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 702
    :cond_13
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_14

    const-string v0, "disable button 1 isResourceOverlay"

    .line 705
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 707
    :cond_14
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 708
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 709
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {v4, v2, v1}, Landroid/content/om/OverlayManager;->getOverlayInfo(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 710
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 711
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 713
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 712
    invoke-virtual {v2, v1, v4}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v0, "disable button 1 overlayInfo"

    .line 716
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_15
    move v3, v0

    .line 723
    :goto_a
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mButton2:Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mButtonsPref.setButton2Enabled : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
