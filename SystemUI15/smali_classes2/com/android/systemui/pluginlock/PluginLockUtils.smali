.class public Lcom/android/systemui/pluginlock/PluginLockUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final LEVEL_SYSUI_SAFEMODE_S:I = 0x2

.field private static final LEVEL_SYSUI_SAFEMODE_T:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PluginLockUtils"

.field private static final sSafeModeLevel:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

.field private mExecutors:Ljava/util/concurrent/ExecutorService;

.field private mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

.field private final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static synthetic $r8$lambda$GvW74dJgtEWTb5xZWGHdmJeMrW0(Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->lambda$requestSafeMode$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UwbUQsZLM8IlCa9sH3bNPxNRef0(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->lambda$addDump$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rbdgfLvDRVDlPlYwUlmmQOskeFw(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->lambda$getExecutor$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1fdc4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/android/systemui/pluginlock/PluginLockUtils;->sSafeModeLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/pluginlock/utils/DumpUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->checkSafeMode()V

    return-void
.end method

.method private getRescuePartyLevel()I
    .locals 1

    :try_start_0
    const-string p0, "persist.sys.rescue_level"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addDump$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->addEvent(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$getExecutor$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "PluginLockUtils"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$requestSafeMode$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call dls_safe_mode, level:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getRescuePartyLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockUtils"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->addEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dls_safe_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->callProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addDump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public callProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "callProvider, result:"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PluginLockUtils"

    if-eqz v2, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.samsung.android.dynamiclock.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "callProvider, user isn\'t unlocked yet"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public checkSafeMode()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    move-result v0

    const-string v2, "checkSafeMode, userUnlocked="

    const-string v3, ", safeMode="

    const-string v4, "PluginLockUtils"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->requestSafeMode()V

    :cond_2
    return-void
.end method

.method public getDump()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDumpLegacy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDumpLegacy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public getHandlerExecutor()Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    return-object p0
.end method

.method public isCurrentOwner()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDesktopMode(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGoingToRescueParty()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getRescuePartyLevel()I

    move-result p0

    sget v0, Lcom/android/systemui/pluginlock/PluginLockUtils;->sSafeModeLevel:I

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLockScreenEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requestMultiPack(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "user_pack"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->callProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public requestSafeMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
