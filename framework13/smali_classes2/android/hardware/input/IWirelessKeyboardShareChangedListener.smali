.class public interface abstract Landroid/hardware/input/IWirelessKeyboardShareChangedListener;
.super Ljava/lang/Object;
.source "IWirelessKeyboardShareChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;,
        Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IWirelessKeyboardShareChangedListener"


# virtual methods
.method public abstract blacklist onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
