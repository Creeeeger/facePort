.class public interface abstract Lcom/att/iqi/IServiceStateChangeCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IServiceStateChangeCallback$Stub;,
        Lcom/att/iqi/IServiceStateChangeCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onServiceChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
