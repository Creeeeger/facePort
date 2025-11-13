.class Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;
.super Landroid/view/BatchedInputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;

.field final synthetic val$listener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;

    iput-object p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver$1;->val$listener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
