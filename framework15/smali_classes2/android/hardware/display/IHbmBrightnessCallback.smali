.class public interface abstract Landroid/hardware/display/IHbmBrightnessCallback;
.super Ljava/lang/Object;
.source "IHbmBrightnessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IHbmBrightnessCallback$Stub;,
        Landroid/hardware/display/IHbmBrightnessCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IHbmBrightnessCallback"


# virtual methods
.method public abstract blacklist onChanged(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
