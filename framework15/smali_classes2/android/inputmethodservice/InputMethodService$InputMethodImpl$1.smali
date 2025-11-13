.class Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;
.super Landroid/view/InputEventReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-static {v2, v1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->-$$Nest$mdeliverStylusHandwritingMotionEvent(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->this$1:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mscheduleHandwritingSessionTimeout(Landroid/inputmethodservice/InputMethodService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$1;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
