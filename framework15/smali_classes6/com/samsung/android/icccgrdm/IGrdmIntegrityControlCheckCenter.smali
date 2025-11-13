.class public interface abstract Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "IGrdmIntegrityControlCheckCenter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;,
        Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.icccgrdm.IGrdmIntegrityControlCheckCenter"


# virtual methods
.method public abstract blacklist grdmSetAttestationData([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
