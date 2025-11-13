.class public interface abstract Lcom/samsung/android/knox/restriction/IRoamingPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.restriction.IRoamingPolicy"


# virtual methods
.method public abstract isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
