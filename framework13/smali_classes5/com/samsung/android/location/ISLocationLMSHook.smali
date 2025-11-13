.class public interface abstract Lcom/samsung/android/location/ISLocationLMSHook;
.super Ljava/lang/Object;
.source "ISLocationLMSHook.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationLMSHook$Stub;,
        Lcom/samsung/android/location/ISLocationLMSHook$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationLMSHook"


# virtual methods
.method public abstract blacklist getHWGeofence()Landroid/location/IGpsGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isProviderEnabledForUser(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isUidForeground(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
