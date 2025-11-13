.class public interface abstract Lcom/samsung/android/knox/util/ISemKeyStoreService;
.super Ljava/lang/Object;
.source "ISemKeyStoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;,
        Lcom/samsung/android/knox/util/ISemKeyStoreService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.util.ISemKeyStoreService"


# virtual methods
.method public abstract blacklist getKeystoreStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist grantAccessForAKS(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isAliasExists(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
