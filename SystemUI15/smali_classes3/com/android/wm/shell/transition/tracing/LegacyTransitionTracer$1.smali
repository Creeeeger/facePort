.class public final Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBytes(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getItemSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result p0

    return p0
.end method

.method public final write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/wm/shell/nano/Transition;

    invoke-interface {p2, p0}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/wm/shell/nano/Transition;

    iput-object p0, p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->transitions:[Lcom/android/wm/shell/nano/Transition;

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
