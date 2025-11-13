.class public Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "GrdmIntegrityControlCheckCenter.java"


# instance fields
.field blacklist mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;->mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    .line 23
    return-void
.end method
