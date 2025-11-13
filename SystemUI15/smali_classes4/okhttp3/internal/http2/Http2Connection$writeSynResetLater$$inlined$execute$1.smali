.class public final Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

.field public final synthetic $streamId$inlined:I

.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p6, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->$streamId$inlined:I

    iput-object p7, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    :try_start_0
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->$streamId$inlined:I

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, v1, p0}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->DEFAULT_SETTINGS:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
