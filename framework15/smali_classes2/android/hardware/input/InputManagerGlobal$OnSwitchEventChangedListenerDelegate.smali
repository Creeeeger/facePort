.class final Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnSwitchEventChangedListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_SWITCH_EVENT_CHANGED:I


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;->onSwitchEventChanged(IIII)V

    :cond_0
    return-void
.end method

.method public blacklist sendSwitchEventChanged(IIII)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
