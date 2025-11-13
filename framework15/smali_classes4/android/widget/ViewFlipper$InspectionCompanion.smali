.class public final Landroid/widget/ViewFlipper$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewFlipper$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ViewFlipper;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAutoStartId:I

.field private blacklist mFlipIntervalId:I

.field private blacklist mFlippingId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    const-string v0, "autoStart"

    const v1, 0x10102b5

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mAutoStartId:I

    const-string v0, "flipInterval"

    const v1, 0x1010179

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mFlipIntervalId:I

    const-string v0, "flipping"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mFlippingId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ViewFlipper;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mAutoStartId:I

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mFlipIntervalId:I

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getFlipInterval()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ViewFlipper$InspectionCompanion;->mFlippingId:I

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ViewFlipper;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewFlipper$InspectionCompanion;->readProperties(Landroid/widget/ViewFlipper;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
