.class public interface abstract Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
.super Ljava/lang/Object;
.source "ISemWifiP2pCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;,
        Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.p2p.ISemWifiP2pCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
