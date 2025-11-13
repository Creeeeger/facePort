.class public Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Default;
.super Ljava/lang/Object;
.source "IWirelessKeyboardShareChangedListener.java"

# interfaces
.implements Landroid/hardware/input/IWirelessKeyboardShareChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
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

.method public blacklist onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "index"    # I
    .param p4, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
