.class public interface abstract Landroid/hardware/input/IPointerIconChangedListener;
.super Ljava/lang/Object;
.source "IPointerIconChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IPointerIconChangedListener$Stub;,
        Landroid/hardware/input/IPointerIconChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IPointerIconChangedListener"


# virtual methods
.method public abstract blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
