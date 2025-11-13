.class public interface abstract Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
.super Ljava/lang/Object;
.source "IUniversalCredentialManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEnforcedCredentialStorageForLockTypeAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
