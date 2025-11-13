.class public interface abstract Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;
.super Ljava/lang/Object;
.source "ISemWifiApClientListUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback$Stub;,
        Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ISemWifiApClientListUpdateCallback"


# virtual methods
.method public abstract blacklist onClientListUpdated(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOverallDataLimitChanged(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
