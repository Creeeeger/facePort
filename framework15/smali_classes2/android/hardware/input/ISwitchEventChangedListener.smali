.class public interface abstract Landroid/hardware/input/ISwitchEventChangedListener;
.super Ljava/lang/Object;
.source "ISwitchEventChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/ISwitchEventChangedListener$Stub;,
        Landroid/hardware/input/ISwitchEventChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.ISwitchEventChangedListener"


# virtual methods
.method public abstract blacklist onSwitchEventChanged(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
