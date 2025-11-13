.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroidx/lifecycle/LifecycleRegistry;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder$bind$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder$bind$1;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/flow/StateFlow;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
