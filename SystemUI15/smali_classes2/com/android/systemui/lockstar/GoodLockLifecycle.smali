.class public final Lcom/android/systemui/lockstar/GoodLockLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isInstalled:Z

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mainHandler:Landroid/os/Handler;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/GoodLockLifecycle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/GoodLockLifecycle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/lockstar/GoodLockLifecycle$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/lockstar/GoodLockLifecycle;)V

    iput-object p1, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string p2, "GoodLockLifecycle: init"

    const-string v0, "GoodLockLifecycle"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-string p1, "com.samsung.android.goodlock"

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/GoodLockLifecycle;->updateGoodLockInstalledState(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "GoodLockLifecycle:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    const-string p2, "   isInstalled = "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final updateGoodLockInstalledState(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.goodlock"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "updateGoodLockInstalledState: GOOD_LOCK"

    const-string v1, "GoodLockLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :catch_0
    iget-boolean p1, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    if-eq v2, p1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateGoodLockInstalledState: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/lockstar/GoodLockLifecycle$notifyChanged$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/lockstar/GoodLockLifecycle$notifyChanged$1;-><init>(Lcom/android/systemui/lockstar/GoodLockLifecycle;)V

    iget-object p0, p0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
