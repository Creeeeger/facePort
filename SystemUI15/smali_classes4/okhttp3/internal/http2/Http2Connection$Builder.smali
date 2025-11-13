.class public final Lokhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final client:Z

.field public connectionName:Ljava/lang/String;

.field public listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field public pingIntervalMillis:I

.field public final pushObserver:Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method public constructor <init>(ZLokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    sget-object p1, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1;

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    sget-object p1, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    return-void
.end method
