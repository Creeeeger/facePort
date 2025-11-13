.class final Landroidx/room/coroutines/PooledConnectionImpl$RollbackException;
.super Ljava/lang/Throwable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$RollbackException;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/PooledConnectionImpl$RollbackException;->result:Ljava/lang/Object;

    return-object p0
.end method
