.class public final Lokhttp3/internal/connection/Transmitter$1;
.super Lokio/AsyncTimeout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Transmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter$1;->this$0:Lokhttp3/internal/connection/Transmitter;

    return-void
.end method


# virtual methods
.method public final timedOut()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/Transmitter$1;->this$0:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method
