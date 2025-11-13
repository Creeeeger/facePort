.class public interface abstract Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
.super Ljava/lang/Object;
.source "IFmReceiverCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;,
        Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.broadcom.fm.fmreceiver.IFmReceiverCallback"


# virtual methods
.method public abstract blacklist onRdsAFEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRdsDataEvent(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRdsPIECCEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRdsRTPlusEvent(IIIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
