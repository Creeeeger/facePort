.class public interface abstract Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceLifecycleCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public blacklist onBinderDied()V
    .locals 0

    return-void
.end method

.method public blacklist onConnected(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onDisconnected(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    return-void
.end method
