.class public interface abstract Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkEnableUseOfPacketData(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDataAllowedFromSimSlot(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
