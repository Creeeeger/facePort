.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mReceiver:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V

    iput-object v6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    invoke-virtual {p0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    return-void
.end method

.method public setBatchingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;->mReceiver:Landroid/view/BatchedInputEventReceiver;

    invoke-virtual {p0, p1}, Landroid/view/BatchedInputEventReceiver;->setBatchingEnabled(Z)V

    return-void
.end method
