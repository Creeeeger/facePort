.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$KeyguardLockedStateListener;,
        Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;,
        Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;,
        Landroid/app/KeyguardManager$KeyguardDismissCallback;,
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;,
        Landroid/app/KeyguardManager$LockTypes;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final greylist-max-o ACTION_CONFIRM_FRP_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_FRP_CREDENTIAL"

.field public static final greylist-max-o EXTRA_ALTERNATE_BUTTON_LABEL:Ljava/lang/String; = "android.app.extra.ALTERNATE_BUTTON_LABEL"

.field public static final greylist-max-o EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final blacklist EXTRA_DISALLOW_BIOMETRICS_IF_POLICY_EXISTS:Ljava/lang/String; = "check_dpm"

.field public static final greylist-max-o EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"

.field public static final whitelist PASSWORD:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PATTERN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PIN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RESULT_ALTERNATE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyguardManager"


# instance fields
.field private final greylist-max-o mAm:Landroid/app/IActivityManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

.field private final blacklist mKeyguardLockedStateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$KeyguardLockedStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;",
            "Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final greylist-max-o mTrustManager:Landroid/app/trust/ITrustManager;

.field private final greylist-max-o mWM:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 0

    iget-object p0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    .line 197
    new-instance v0, Landroid/app/KeyguardManager$1;

    invoke-direct {v0, p0}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    .line 551
    iput-object p1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 552
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 553
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 554
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mAm:Landroid/app/IActivityManager;

    .line 555
    nop

    .line 556
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 555
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 557
    nop

    .line 558
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 559
    return-void
.end method

.method private blacklist checkInitialLockMethodUsage()Z
    .locals 2

    .line 797
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const/4 v0, 0x1

    return v0

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INITIAL_LOCK permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1112
    if-nez p2, :cond_0

    .line 1113
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 1115
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :pswitch_0
    nop

    .line 1124
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 1125
    .local v0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1120
    .end local v0    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 1121
    .local v0, "pinStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1117
    .end local v0    # "pinStr":Ljava/lang/CharSequence;
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1118
    .local v0, "passwordStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 396
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 397
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 400
    .end local v1    # "i":I
    :cond_0
    const-string v1, "com.android.settings"

    return-object v1
.end method

.method private blacklist hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 804
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1153
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1159
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    nop

    .line 1163
    :try_start_2
    monitor-exit v0

    .line 1164
    return-void

    .line 1160
    :catch_0
    move-exception v1

    .line 1161
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1163
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist addWeakEscrowToken([BLandroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)J
    .locals 4
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 932
    const-string v0, "Token cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    const-string v0, "User cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 934
    const-string v0, "Executor cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 935
    const-string v0, "Listener cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 936
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 937
    .local v0, "userId":I
    new-instance v1, Landroid/app/KeyguardManager$4;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/KeyguardManager$4;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)V

    .line 951
    .local v1, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v2

    return-wide v2
.end method

.method public blacklist checkLock(I[B)Z
    .locals 4
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1100
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1102
    .local v0, "credential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v1, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1103
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1102
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1104
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_0

    .line 1105
    return v3

    .line 1107
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public whitelist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 230
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 233
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    return-object v0
.end method

.method public greylist-max-o createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 250
    invoke-virtual {p0, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 256
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 257
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    return-object v0
.end method

.method public blacklist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I
    .param p4, "disallowBiometricsIfPolicyExists"    # Z

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 284
    const-string v1, "check_dpm"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    :cond_0
    return-object v0
.end method

.method public whitelist createConfirmFactoryResetCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "alternateButtonLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "not supported on this device"

    const-string v2, "KeyguardManager"

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 325
    :try_start_0
    const-string/jumbo v0, "persistent_data_block"

    .line 326
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v0

    .line 327
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->hasFrpCredentialHandle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const-string v1, "The persistent data block does not have a factory reset credential."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 339
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_0
    nop

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 343
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 344
    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 347
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    return-object v0

    .line 328
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_1
    :try_start_1
    const-string v3, "No persistent data block service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "title":Ljava/lang/CharSequence;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "title":Ljava/lang/CharSequence;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v0, "Factory reset credential cannot be verified after provisioning."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must not be provisioned yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3
    const-string v0, "Factory reset credentials not supported."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$3;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$3;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 794
    :goto_0
    return-void
.end method

.method public whitelist getMinLockLength(ZI)I
    .locals 4
    .param p1, "isPin"    # Z
    .param p2, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 851
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    const/4 v0, -0x1

    return v0

    .line 854
    :cond_0
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p2

    .line 856
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 857
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 858
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 859
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 860
    .local v1, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    nop

    .line 861
    invoke-static {v1, p1, p2}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 862
    .local v2, "minMetrics":Landroid/app/admin/PasswordMetrics;
    iget v3, v2, Landroid/app/admin/PasswordMetrics;->length:I

    return v3
.end method

.method public whitelist getPrivateNotificationsAllowed()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getPrivateNotificationsAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist inKeyguardRestrictedInputMode()Z
    .locals 1

    .line 620
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceLocked()Z
    .locals 1

    .line 631
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-p isDeviceLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 642
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDeviceSecure()Z
    .locals 1

    .line 657
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isDeviceSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 668
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardLocked()Z
    .locals 2

    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardSecure()Z
    .locals 2

    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->isKeyguardSecure(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isValidLockPasswordComplexity(I[BI)Z
    .locals 6
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 823
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 824
    return v1

    .line 826
    :cond_0
    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p3

    .line 828
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 829
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 830
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 831
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 833
    .local v2, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 835
    .local v4, "isPinOrPattern":Z
    :goto_0
    invoke-static {v2, p3, v4, p2}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object v5

    .line 836
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 835
    :cond_2
    return v1
.end method

.method public whitelist isWeakEscrowTokenActive(JLandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 977
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist isWeakEscrowTokenValid(J[BLandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    const-string v0, "Token cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 991
    const-string v0, "User cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0

    return v0
.end method

.method public whitelist newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist registerWeakEscrowTokenRemovedListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1007
    const-string v0, "Listener cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1008
    const-string v0, "Executor cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1009
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "Listener already registered: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    new-instance v0, Landroid/app/KeyguardManager$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/KeyguardManager$5;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)V

    .line 1024
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    return v1

    .line 1028
    :cond_0
    const-string v1, "KeyguardManager"

    const-string v2, "Listener failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return v3
.end method

.method public whitelist removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1176
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1182
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    nop

    .line 1186
    :try_start_2
    monitor-exit v0

    .line 1187
    return-void

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1186
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist removeWeakEscrowToken(JLandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 965
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 966
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeWeakEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 700
    return-void
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 733
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "requestDismissKeyguard"

    aput-object v2, v0, v1

    const v1, 0x8d04

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 735
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 736
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/app/KeyguardManager$2;

    invoke-direct {v2, p0, p3, p1}, Landroid/app/KeyguardManager$2;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V

    .line 735
    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 758
    return-void
.end method

.method public whitelist semDismissKeyguard()V
    .locals 4

    .line 1198
    const v0, 0x8d04

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "semDismissKeyguard"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1200
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    .line 1203
    :goto_0
    return-void
.end method

.method public whitelist semIsKeyguardShowingAndNotOccluded()Z
    .locals 1

    .line 1215
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1216
    :catch_0
    move-exception v0

    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 1233
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v0

    .line 1236
    :goto_0
    return-void
.end method

.method public blacklist semStartLockscreenFingerprintAuth()V
    .locals 1

    .line 1247
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->startLockscreenFingerprintAuth()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1250
    :goto_0
    return-void
.end method

.method public whitelist setLock(I[BI)Z
    .locals 6
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 882
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 883
    return v1

    .line 886
    :cond_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 887
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    const-string v3, "KeyguardManager"

    if-eqz v2, :cond_1

    .line 888
    const-string v2, "Password already set, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return v1

    .line 891
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->isValidLockPasswordComplexity(I[BI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 892
    const-string v2, "Password is not valid, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v1

    .line 897
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 899
    .local v2, "credential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v4, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 901
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    .line 899
    invoke-virtual {v4, v2, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 907
    .local v2, "success":Z
    :goto_0
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 908
    goto :goto_1

    .line 907
    .end local v2    # "success":Z
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 903
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Save lock exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    const/4 v2, 0x0

    .local v2, "success":Z
    goto :goto_0

    .line 909
    :goto_1
    return v2

    .line 907
    .end local v2    # "success":Z
    :goto_2
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 908
    throw v2
.end method

.method public blacklist setLock(I[BI[B)Z
    .locals 4
    .param p1, "newLockType"    # I
    .param p2, "newPassword"    # [B
    .param p3, "currentLockType"    # I
    .param p4, "currentPassword"    # [B

    .line 1076
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1077
    .local v0, "userId":I
    invoke-direct {p0, p3, p4}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1079
    .local v1, "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 1081
    .local v2, "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    return v3
.end method

.method public whitelist setPrivateNotificationsAllowed(Z)V
    .locals 2
    .param p1, "allow"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setPrivateNotificationsAllowed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    nop

    .line 372
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterWeakEscrowTokenRemovedListener(Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1044
    const-string v0, "Listener cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1046
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Listener was not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1047
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    return v1

    .line 1051
    :cond_1
    const-string v1, "KeyguardManager"

    const-string v3, "Listener failed to unregister."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return v2
.end method
