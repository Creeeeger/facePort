.class public abstract Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/common/util/concurrent/AbstractFuture$Trusted;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    instance-of p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return p0
.end method
