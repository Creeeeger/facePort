.class public final Lcom/android/systemui/controls/controller/PackageUpdateMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final callback:Ljava/lang/Runnable;

.field public final context:Landroid/content/Context;

.field public final monitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->callback:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->bgHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->monitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->user:Landroid/os/UserHandle;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
