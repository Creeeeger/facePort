.class public interface abstract Landroid/hardware/input/ISemLidStateChangedListener;
.super Ljava/lang/Object;
.source "ISemLidStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/ISemLidStateChangedListener$Stub;,
        Landroid/hardware/input/ISemLidStateChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.ISemLidStateChangedListener"


# virtual methods
.method public abstract blacklist onLidStateChanged(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
