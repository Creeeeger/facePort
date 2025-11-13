.class final Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceListenerDelegate"
.end annotation


# static fields
.field static final blacklist MSG_DEVICE_ADDED:I = 0x1

.field static final blacklist MSG_DEVICE_CHANGED:I = 0x3

.field static final blacklist MSG_DEVICE_REMOVED:I = 0x2


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
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

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceChanged(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceRemoved(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
