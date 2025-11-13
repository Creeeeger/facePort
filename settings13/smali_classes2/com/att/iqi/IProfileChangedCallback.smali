.class public interface abstract Lcom/att/iqi/IProfileChangedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IProfileChangedCallback$Stub;,
        Lcom/att/iqi/IProfileChangedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onProfileChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
