.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final delegate:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(Ljava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-void
.end method
