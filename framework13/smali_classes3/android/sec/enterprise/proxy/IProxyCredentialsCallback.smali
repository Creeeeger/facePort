.class public interface abstract Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
.super Ljava/lang/Object;
.source "IProxyCredentialsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/proxy/IProxyCredentialsCallback$Stub;,
        Landroid/sec/enterprise/proxy/IProxyCredentialsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.proxy.IProxyCredentialsCallback"


# virtual methods
.method public abstract blacklist onAuthenticationResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
