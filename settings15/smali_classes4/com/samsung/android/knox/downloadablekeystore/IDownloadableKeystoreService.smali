.class public interface abstract Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;,
        Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.downloadablekeystore.IDownloadableKeystoreService"


# virtual methods
.method public abstract startTimaKeystoreServices(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
