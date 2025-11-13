.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lokhttp3/internal/NamedRunnable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method public varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    const-string p1, "OkHttp %s settings"

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
