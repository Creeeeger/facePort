.class public interface abstract Lcom/samsung/android/knox/IMiscPolicy;
.super Ljava/lang/Object;
.source "IMiscPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IMiscPolicy$Stub;
    }
.end annotation


# virtual methods
.method public abstract getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
