.class public Lcom/android/internal/app/AppLockPolicy;
.super Ljava/lang/Object;
.source "AppLockPolicy.java"


# static fields
.field private static final blacklist APPLOCK_ENABLED:Ljava/lang/String; = "app_lock_enabled"

.field public static final blacklist BINDER_ARRAY_DISPLAYID:I = 0x0

.field public static final blacklist BINDER_ARRAY_EXCEPTIONLIST:I = 0x2

.field public static final blacklist BINDER_ARRAY_LOCKED:I = 0x0

.field public static final blacklist BINDER_ARRAY_MULTIWINDOW:I = 0x0

.field public static final blacklist BINDER_ARRAY_NOTIFICATION:I = 0x1

.field public static final blacklist BINDER_ARRAY_VERIFYING:I = 0x1

.field private static final blacklist BIOMETRICS_PASSWORD_TYPE:Ljava/lang/String; = "biometrics_password_type"

.field private static final blacklist BIOMETRICS_PATTERN_TYPE:Ljava/lang/String; = "biometrics_pattern_type"

.field private static final blacklist BIOMETRICS_PINCODE_TYPE:Ljava/lang/String; = "biometrics_pincode_type"

.field private static final blacklist BIOMETRICS_TYPE:Ljava/lang/String; = "biometrics_type"

.field private static final blacklist CHECK_APPLOCK_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

.field private static final blacklist CHECK_APPLOCK_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

.field private static final blacklist CHECK_APPLOCK_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

.field private static final blacklist CHECK_APPLOCK_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

.field private static final blacklist CHECK_APPLOCK_PATTERN_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PATTERN_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

.field private static final blacklist CHECK_APPLOCK_PATTERN_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PATTERN_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

.field private static final blacklist CHECK_APPLOCK_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

.field private static final blacklist CHECK_APPLOCK_PINCODE_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PINCODE_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

.field private static final blacklist CHECK_APPLOCK_PINCODE_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PINCODE_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

.field private static final blacklist FACE_PASSWORD_TYPE:Ljava/lang/String; = "face_password_type"

.field private static final blacklist FACE_PATTERN_TYPE:Ljava/lang/String; = "face_pattern_type"

.field private static final blacklist FACE_PINCODE_TYPE:Ljava/lang/String; = "face_pincode_type"

.field private static final blacklist FACE_SPASS_PASSWORD_TYPE:Ljava/lang/String; = "face_spass_password_type"

.field private static final blacklist FACE_SPASS_PATTERN_TYPE:Ljava/lang/String; = "face_spass_pattern_type"

.field private static final blacklist FACE_SPASS_PINCODE_TYPE:Ljava/lang/String; = "face_spass_pincode_type"

.field private static final blacklist FACE_SPASS_TYPE:Ljava/lang/String; = "face_spass_type"

.field private static final blacklist FACE_TYPE:Ljava/lang/String; = "face_type"

.field private static final blacklist FINGERPRINT_PASSWORD_TYPE:Ljava/lang/String; = "fingerprint_password_type"

.field private static final blacklist FINGERPRINT_PATTERN_TYPE:Ljava/lang/String; = "fingerprint_pattern_type"

.field private static final blacklist FINGERPRINT_PINCODE_TYPE:Ljava/lang/String; = "fingerprint_pincode_type"

.field private static final blacklist FINGERPRINT_TYPE:Ljava/lang/String; = "fingerprint_type"

.field public static final blacklist FLOATING_MESSAGE_REQUEST:Ljava/lang/String; = "FLOATING_MESSAGE_REQUEST"

.field private static final blacklist IRIS_PASSWORD_TYPE:Ljava/lang/String; = "iris_password_type"

.field private static final blacklist IRIS_PATTERN_TYPE:Ljava/lang/String; = "iris_pattern_type"

.field private static final blacklist IRIS_PINCODE_TYPE:Ljava/lang/String; = "iris_pincode_type"

.field private static final blacklist IRIS_TYPE:Ljava/lang/String; = "iris_type"

.field public static final blacklist LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field public static final blacklist LAUNCH_FROM_NOTIFICATION:Ljava/lang/String; = "LAUNCH_FROM_NOTIFICATION"

.field public static final blacklist LAUNCH_FROM_RESUME:Ljava/lang/String; = "LAUNCH_FROM_RESUME"

.field public static final blacklist LAUNCH_FROM_SETTINGS:Ljava/lang/String; = "APPLOCK_APPS_FROM_SETTINGS"

.field public static final blacklist LOCKED_APP_CAN_SHOW_WHEN_LOCKED:Ljava/lang/String; = "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

.field private static final blacklist LOCKED_CLASSES:Ljava/lang/String; = "applock_locked_apps_classes"

.field private static final blacklist LOCKED_PACKAGE:Ljava/lang/String; = "applock_locked_apps_packages"

.field public static final blacklist LOCKED_PACKAGE_ACTIVITY_OPTIONS:Ljava/lang/String; = "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

.field public static final blacklist LOCKED_PACKAGE_DISPLAYID:Ljava/lang/String; = "LOCKED_PACKAGE_DISPLAYID"

.field public static final blacklist LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final blacklist LOCKED_PACKAGE_INTENT:Ljava/lang/String; = "LOCKED_PACKAGE_INTENT"

.field public static final blacklist LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field public static final blacklist LOCKED_PACKAGE_MULTIWINDOWSTYLE:Ljava/lang/String; = "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

.field public static final blacklist LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final blacklist LOCKED_PACKAGE_USERID:Ljava/lang/String; = "LOCKED_PACKAGE_USERID"

.field public static final blacklist LOCKED_PACKAGE_WINDOW_ATTRIBUTES:Ljava/lang/String; = "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

.field private static final blacklist LOCKED_TYPE:Ljava/lang/String; = "applock_lock_type"

.field private static final blacklist PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.samsung.android.contacts"

.field private static final blacklist PASSWORD_TYPE:Ljava/lang/String; = "password_type"

.field private static final blacklist PATTERN_TYPE:Ljava/lang/String; = "pattern_type"

.field private static final blacklist PINCODE_TYPE:Ljava/lang/String; = "pincode_type"

.field public static final blacklist REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field public static final blacklist START_SERVICE_WITH_NO_ANIMATION:Ljava/lang/String; = "START_SERVICE_WITH_NO_ANIMATION"

.field private static final blacklist TAG:Ljava/lang/String; = "AppLockPolicy"

.field private static volatile blacklist mInstance:Lcom/android/internal/app/AppLockPolicy;

.field private static blacklist mIsAppLockEnabled:Z


# instance fields
.field private blacklist mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mAppLockSharedPref:Landroid/app/AppLockCoreState;

.field private blacklist mAppLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedLock:Ljava/lang/Object;

.field private blacklist mAppLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedRelatedClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedVerifyingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLockedClasses:Ljava/lang/String;

.field private blacklist mLockedPackages:Ljava/lang/String;

.field private blacklist mLockedType:Ljava/lang/String;

.field private blacklist mLockedTypeInt:I

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateLockedApps(Lcom/android/internal/app/AppLockPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    .line 458
    new-instance v1, Lcom/android/internal/app/AppLockPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$2;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Landroid/app/AppLockCoreState;

    invoke-direct {v0, p1}, Landroid/app/AppLockCoreState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    .line 174
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->init()V

    .line 175
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockLaunchingExceptionList()V

    .line 176
    return-void
.end method

.method private static blacklist fileUriMayExposed(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 747
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x1

    return v0

    .line 750
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getAppLockLaunchingExceptionList()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "activities":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 163
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_0

    .line 164
    const-class v0, Lcom/android/internal/app/AppLockPolicy;

    monitor-enter v0

    .line 165
    :try_start_0
    new-instance v1, Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AppLockPolicy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    .line 166
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 168
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist init()V
    .locals 3

    .line 432
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLockPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$1;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    const-class v2, Lcom/android/internal/app/AppLockPolicy;

    .line 451
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppLockPolicy"

    const-string/jumbo v2, "onUserSwitch, observe()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    return-void
.end method

.method public static blacklist isSupportAppLock()Z
    .locals 1

    .line 699
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    return v0
.end method

.method public static blacklist isSupportSSecure()Z
    .locals 1

    .line 772
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SPROTECT:Z

    return v0
.end method

.method public static blacklist skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 714
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v1, "AppLockPolicy"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "intent is starting with S secure, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v2

    .line 722
    :cond_0
    if-eqz p3, :cond_1

    .line 723
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 724
    const-string v0, "intent is starting in dex display, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v2

    .line 727
    :cond_1
    if-eqz p3, :cond_3

    .line 728
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 730
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    :cond_2
    const-string v0, "intent is starting in multi WindowingMode, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v2

    .line 734
    :cond_3
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 735
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 736
    .local v3, "runningTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 737
    .local v5, "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-eq v6, v2, :cond_4

    .line 739
    const-string v4, "hasMultiWindowRunning, skip"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v2

    .line 742
    .end local v5    # "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    goto :goto_0

    .line 743
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist updateLockedApps()V
    .locals 11

    .line 503
    iget v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    packed-switch v0, :pswitch_data_0

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    goto/16 :goto_0

    .line 571
    :pswitch_0
    const-string v0, "face_spass_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 572
    goto/16 :goto_0

    .line 568
    :pswitch_1
    const-string v0, "face_spass_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 569
    goto/16 :goto_0

    .line 565
    :pswitch_2
    const-string v0, "face_spass_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 566
    goto/16 :goto_0

    .line 562
    :pswitch_3
    const-string v0, "face_spass_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 563
    goto/16 :goto_0

    .line 559
    :pswitch_4
    const-string v0, "face_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 560
    goto :goto_0

    .line 556
    :pswitch_5
    const-string v0, "face_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 557
    goto :goto_0

    .line 553
    :pswitch_6
    const-string v0, "face_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 554
    goto :goto_0

    .line 550
    :pswitch_7
    const-string v0, "face_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 551
    goto :goto_0

    .line 547
    :pswitch_8
    const-string v0, "biometrics_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 548
    goto :goto_0

    .line 544
    :pswitch_9
    const-string v0, "biometrics_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 545
    goto :goto_0

    .line 541
    :pswitch_a
    const-string v0, "biometrics_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 542
    goto :goto_0

    .line 538
    :pswitch_b
    const-string v0, "biometrics_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 539
    goto :goto_0

    .line 535
    :pswitch_c
    const-string v0, "iris_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 536
    goto :goto_0

    .line 532
    :pswitch_d
    const-string v0, "iris_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 533
    goto :goto_0

    .line 529
    :pswitch_e
    const-string v0, "iris_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 530
    goto :goto_0

    .line 526
    :pswitch_f
    const-string v0, "iris_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 527
    goto :goto_0

    .line 523
    :pswitch_10
    const-string v0, "fingerprint_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 524
    goto :goto_0

    .line 520
    :pswitch_11
    const-string v0, "fingerprint_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 521
    goto :goto_0

    .line 517
    :pswitch_12
    const-string v0, "fingerprint_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 518
    goto :goto_0

    .line 514
    :pswitch_13
    const-string v0, "fingerprint_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 515
    goto :goto_0

    .line 511
    :pswitch_14
    const-string/jumbo v0, "password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 512
    goto :goto_0

    .line 508
    :pswitch_15
    const-string/jumbo v0, "pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 509
    goto :goto_0

    .line 505
    :pswitch_16
    const-string/jumbo v0, "pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 506
    nop

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 580
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "lockedPackageArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 583
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 585
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 586
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 587
    .local v9, "relatedPackage":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 588
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v9    # "relatedPackage":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 582
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 593
    :cond_2
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 596
    .end local v1    # "lockedPackageArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 597
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "lockedClassArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v5, v1, v2

    .line 600
    .local v5, "className":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 602
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 603
    .local v6, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 604
    .local v8, "relatedClass":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 605
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v8    # "relatedClass":Ljava/lang/String;
    :cond_4
    goto :goto_4

    .line 599
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 610
    :cond_6
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 612
    .end local v1    # "lockedClassArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist clearAppLockedUnLockedApp()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 637
    const-string v0, "AppLockPolicy dump start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "LockedPackage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 643
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_1

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 649
    :cond_1
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v5, "LockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 653
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_1

    .line 656
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_3

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 659
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v5, "HasUnLockedPackage["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 663
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_2

    .line 666
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_5

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 669
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v5, "HasUnLockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 673
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_3

    .line 676
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_7

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 679
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string/jumbo v5, "mAppLockedVerifyingList["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 683
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_4

    .line 686
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_9

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 689
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    const-string v1, "AppLockPolicy dump end"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 695
    return v2
.end method

.method public blacklist getAppLockedCheckAction()Ljava/lang/String;
    .locals 3

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "checkAction":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

    goto/16 :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto/16 :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

    goto/16 :goto_0

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

    goto/16 :goto_0

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

    goto/16 :goto_0

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 222
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

    goto/16 :goto_0

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

    goto/16 :goto_0

    .line 225
    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 226
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

    goto/16 :goto_0

    .line 227
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 228
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

    goto/16 :goto_0

    .line 229
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 230
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

    goto/16 :goto_0

    .line 231
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 232
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

    goto/16 :goto_0

    .line 233
    :cond_b
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 234
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

    goto/16 :goto_0

    .line 235
    :cond_c
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 236
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

    goto/16 :goto_0

    .line 237
    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 238
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

    goto/16 :goto_0

    .line 239
    :cond_e
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 240
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

    goto :goto_0

    .line 241
    :cond_f
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 242
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

    goto :goto_0

    .line 243
    :cond_10
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 244
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

    goto :goto_0

    .line 245
    :cond_11
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 246
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

    goto :goto_0

    .line 247
    :cond_12
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 248
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

    goto :goto_0

    .line 249
    :cond_13
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 250
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

    goto :goto_0

    .line 251
    :cond_14
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 252
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

    goto :goto_0

    .line 253
    :cond_15
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 254
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

    .line 256
    :cond_16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppLockedCheckAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLockPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v0
.end method

.method public blacklist getAppLockedClassList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    .local v0, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 360
    .local v3, "st":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    nop

    .end local v3    # "st":Ljava/lang/String;
    goto :goto_0

    .line 362
    :cond_0
    monitor-exit v1

    .line 364
    return-object v0

    .line 362
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getAppLockedLockType()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppLockedPackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getApplockLockedAppsClass()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplockLockedAppsPackage()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplockType()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    return v0
.end method

.method public blacklist getSsecureHiddenAppsPackages()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isActivityInExceptionList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    return v1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 199
    :cond_2
    const-string v0, "AppLockPolicy"

    const-string v2, "isActivityInExceptionList: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v1
.end method

.method public blacklist isAppLockedClass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    return v1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    monitor-exit v0

    return v1

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 397
    :cond_2
    monitor-exit v0

    .line 398
    return v1

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isAppLockedPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    if-nez v0, :cond_0

    .line 343
    return v1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    monitor-exit v0

    return v1

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 352
    :cond_2
    monitor-exit v0

    .line 353
    return v1

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isAppLockedVerifying(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 420
    return v1

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 426
    :cond_1
    monitor-exit v0

    .line 427
    return v1

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isApplockEnabled()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isManagedProfileUserId(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 764
    const/16 v0, 0xa

    .line 765
    .local v0, "AFW_USER_ID_START":I
    const/16 v1, 0x5e

    .line 766
    .local v1, "AFW_USER_ID_END":I
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public blacklist reloadFromSettings()V
    .locals 7

    .line 616
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 617
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "applock_locked_apps_packages"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "lockedPackages":Ljava/lang/String;
    const-string v3, "applock_locked_apps_classes"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "lockedClasses":Ljava/lang/String;
    const-string v4, "applock_lock_type"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 620
    .local v4, "lockedTypeInt":I
    const-string v6, "app_lock_enabled"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move v5, v6

    :cond_0
    move v2, v5

    .line 621
    .local v2, "applockEnabled":Z
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v5}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 622
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v5, v1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 624
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v5, v3}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 625
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v5, v4}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 626
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v5, v2}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 628
    :cond_1
    return-void
.end method

.method public blacklist setAppLockedUnLockClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 376
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, "relatedClass":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v3    # "relatedClass":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 383
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setAppLockedUnLockPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 323
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    .local v3, "relatedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v3    # "relatedPackage":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 330
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    if-eqz p2, :cond_1

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    :goto_0
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setApplockEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 286
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 287
    return-void
.end method

.method public blacklist setApplockLockedAppsClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classes"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 274
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 275
    return-void
.end method

.method public blacklist setApplockLockedAppsPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 268
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 269
    return-void
.end method

.method public blacklist setApplockType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 281
    return-void
.end method

.method public blacklist setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 292
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 293
    return-void
.end method

.method public blacklist updateSettings()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 633
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    .line 634
    return-void
.end method
