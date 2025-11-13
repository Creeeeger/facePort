.class public final Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $select$inlined:Lkotlinx/coroutines/selects/SelectInstance;

.field public final synthetic this$0:Lkotlinx/coroutines/selects/OnTimeout;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectInstance;Lkotlinx/coroutines/selects/OnTimeout;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->$select$inlined:Lkotlinx/coroutines/selects/SelectInstance;

    iput-object p2, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/selects/OnTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->$select$inlined:Lkotlinx/coroutines/selects/SelectInstance;

    iget-object p0, p0, Lkotlinx/coroutines/selects/OnTimeout$register$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/selects/OnTimeout;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method
