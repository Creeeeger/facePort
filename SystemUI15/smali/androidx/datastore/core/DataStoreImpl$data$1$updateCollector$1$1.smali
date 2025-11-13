.class public final Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;

    invoke-direct {v0}, Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;-><init>()V

    sput-object v0, Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;->INSTANCE:Landroidx/datastore/core/DataStoreImpl$data$1$updateCollector$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
