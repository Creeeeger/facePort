.class public final Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/common/data/repository/PackageChangeRepository;


# instance fields
.field public final monitor$delegate:Lkotlin/Lazy;

.field public final monitorFactory:Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Factory;

.field public final packageInstallSessionsForPrimaryUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->monitorFactory:Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Factory;

    new-instance p2, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$monitor$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$monitor$2;-><init>(Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->monitor$delegate:Lkotlin/Lazy;

    iget-object p1, p1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->installSessionsForPrimaryUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->packageInstallSessionsForPrimaryUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final packageChanged(Landroid/os/UserHandle;)Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$packageChanged$$inlined$filter$1;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->monitor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$packageChanged$1;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->logger:Lcom/android/systemui/common/data/repository/PackageUpdateLogger;

    invoke-direct {v1, p0}, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$packageChanged$1;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$packageChanged$$inlined$filter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$packageChanged$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/os/UserHandle;)V

    return-object v0
.end method
