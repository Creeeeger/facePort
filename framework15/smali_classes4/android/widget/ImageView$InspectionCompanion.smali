.class public final Landroid/widget/ImageView$InspectionCompanion;
.super Ljava/lang/Object;
.source "ImageView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAdjustViewBoundsId:I

.field private blacklist mBaselineAlignBottomId:I

.field private blacklist mBaselineId:I

.field private blacklist mBlendModeId:I

.field private blacklist mCropToPaddingId:I

.field private blacklist mMaxHeightId:I

.field private blacklist mMaxWidthId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mScaleTypeId:I

.field private blacklist mSrcId:I

.field private blacklist mTintId:I

.field private blacklist mTintModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    const-string v0, "adjustViewBounds"

    const v1, 0x101011e

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mAdjustViewBoundsId:I

    const-string v0, "baseline"

    const v1, 0x101031c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineId:I

    const-string v0, "baselineAlignBottom"

    const v1, 0x1010122

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineAlignBottomId:I

    const-string v0, "blendMode"

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBlendModeId:I

    const-string v0, "cropToPadding"

    const v1, 0x1010123

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mCropToPaddingId:I

    const-string/jumbo v0, "maxHeight"

    const v1, 0x1010120

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxHeightId:I

    const-string/jumbo v0, "maxWidth"

    const v1, 0x101011f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxWidthId:I

    const-string/jumbo v0, "scaleType"

    const v1, 0x101011d

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mScaleTypeId:I

    const-string/jumbo v0, "src"

    const v1, 0x1010119

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mSrcId:I

    const-string/jumbo v0, "tint"

    const v1, 0x1010121

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintId:I

    const-string/jumbo v0, "tintMode"

    const v1, 0x10103fb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintModeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ImageView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mAdjustViewBoundsId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAdjustViewBounds()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBaselineAlignBottomId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBaselineAlignBottom()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mCropToPaddingId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getCropToPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxHeightId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mScaleTypeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mSrcId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ImageView$InspectionCompanion;->mTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

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

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView$InspectionCompanion;->readProperties(Landroid/widget/ImageView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
