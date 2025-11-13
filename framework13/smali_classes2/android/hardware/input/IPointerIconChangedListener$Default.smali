.class public Landroid/hardware/input/IPointerIconChangedListener$Default;
.super Ljava/lang/Object;
.source "IPointerIconChangedListener.java"

# interfaces
.implements Landroid/hardware/input/IPointerIconChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IPointerIconChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
