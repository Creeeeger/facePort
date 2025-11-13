.class public Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "GrdmIntegrityControlCheckCenter.java"


# instance fields
.field blacklist mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;->mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service assigned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;->mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GrdmIntegrityControlCheckCenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
