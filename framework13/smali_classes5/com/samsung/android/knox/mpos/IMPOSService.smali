.class public interface abstract Lcom/samsung/android/knox/mpos/IMPOSService;
.super Ljava/lang/Object;
.source "IMPOSService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/mpos/IMPOSService$Stub;,
        Lcom/samsung/android/knox/mpos/IMPOSService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.mpos.IMPOSService"


# virtual methods
.method public abstract blacklist loadTa(ILandroid/os/ParcelFileDescriptor;JJLcom/samsung/android/knox/mpos/MposTZServiceConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist processTACommand(ILcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unloadTa(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
