.class public final Landroidx/picker/loader/DataLoaderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/loader/DataLoader;


# instance fields
.field public final factory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

.field public final iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

.field public final labelMap$delegate:Lkotlin/Lazy;

.field public final packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;


# direct methods
.method public constructor <init>(Landroidx/picker/features/scs/AbstractAppDataListFactory;Landroidx/picker/helper/PackageManagerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->factory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

    iput-object p2, p0, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;

    new-instance p1, Landroidx/picker/loader/DataLoaderImpl$labelMap$2;

    invoke-direct {p1, p0}, Landroidx/picker/loader/DataLoaderImpl$labelMap$2;-><init>(Landroidx/picker/loader/DataLoaderImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->labelMap$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    invoke-direct {p1, p0}, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;-><init>(Landroidx/picker/loader/DataLoaderImpl;)V

    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl;->iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    return-void
.end method


# virtual methods
.method public final loadIcon(Landroidx/picker/model/AppInfo;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl;->iconLoader:Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/picker/loader/CachedLoader$load$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/picker/loader/CachedLoader$load$1;-><init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
