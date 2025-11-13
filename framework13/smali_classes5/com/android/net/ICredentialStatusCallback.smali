.class public interface abstract Lcom/android/net/ICredentialStatusCallback;
.super Ljava/lang/Object;
.source "ICredentialStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/ICredentialStatusCallback$Stub;,
        Lcom/android/net/ICredentialStatusCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.net.ICredentialStatusCallback"


# virtual methods
.method public abstract blacklist onFail(I)V
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
