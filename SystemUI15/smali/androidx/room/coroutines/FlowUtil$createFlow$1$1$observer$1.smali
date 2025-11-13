.class public final Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $observerChannel:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/channels/Channel;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInvalidated(Ljava/util/Set;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$1$1$observer$1;->$observerChannel:Lkotlinx/coroutines/channels/Channel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
