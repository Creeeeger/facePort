.class final Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPointerIconChangedListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
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

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/PointerIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/PointerIcon;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v4}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getHotSpotX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getHotSpotY()F

    move-result v5

    invoke-interface {v2, v0, v3, v4, v5}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
