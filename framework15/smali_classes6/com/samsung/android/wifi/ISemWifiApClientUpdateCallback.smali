.class public interface abstract Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;
.super Ljava/lang/Object;
.source "ISemWifiApClientUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Stub;,
        Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ISemWifiApClientUpdateCallback"


# virtual methods
.method public abstract blacklist onClientUpdated(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
