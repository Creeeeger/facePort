.class public final Lokhttp3/internal/connection/RealCall$timeout$1;
.super Lokio/AsyncTimeout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/connection/RealCall;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->this$0:Lokhttp3/internal/connection/RealCall;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public final timedOut()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->this$0:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    return-void
.end method
