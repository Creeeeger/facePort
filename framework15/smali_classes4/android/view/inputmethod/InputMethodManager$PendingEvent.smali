.class final Landroid/view/inputmethod/InputMethodManager$PendingEvent;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public greylist-max-o mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

.field public greylist-max-o mEvent:Landroid/view/InputEvent;

.field public greylist-max-o mHandled:Z

.field public greylist-max-o mHandler:Landroid/os/Handler;

.field public greylist-max-o mInputMethodId:Ljava/lang/String;

.field public greylist-max-o mToken:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
