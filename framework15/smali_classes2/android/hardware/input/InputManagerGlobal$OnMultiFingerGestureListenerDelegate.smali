.class final Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnMultiFingerGestureListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V
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

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-interface {v2, v0, v1}, Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;->onMultiFingerGesture(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
