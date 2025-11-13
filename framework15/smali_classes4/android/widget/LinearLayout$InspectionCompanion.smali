.class public final Landroid/widget/LinearLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "LinearLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBaselineAlignedChildIndexId:I

.field private blacklist mBaselineAlignedId:I

.field private blacklist mDividerId:I

.field private blacklist mGravityId:I

.field private blacklist mMeasureWithLargestChildId:I

.field private blacklist mOrientationId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mWeightSumId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 5

    const-string v0, "baselineAligned"

    const v1, 0x1010126

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mBaselineAlignedId:I

    const-string v0, "baselineAlignedChildIndex"

    const v1, 0x1010127

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    const-string v0, "divider"

    const v1, 0x1010129

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mDividerId:I

    const-string v0, "gravity"

    const v1, 0x10100af

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mGravityId:I

    const-string/jumbo v0, "measureWithLargestChild"

    const v1, 0x10102d4

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mMeasureWithLargestChildId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const-string v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "vertical"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v3, "orientation"

    const v4, 0x10100c4

    invoke-interface {p1, v3, v4, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mOrientationId:I

    const-string/jumbo v1, "weightSum"

    const v3, 0x1010128

    invoke-interface {p1, v1, v3}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mWeightSumId:I

    iput-boolean v2, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/LinearLayout;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mBaselineAlignedId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isBaselineAligned()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBaselineAlignedChildIndex()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mDividerId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mMeasureWithLargestChildId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isMeasureWithLargestChildEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mOrientationId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/LinearLayout$InspectionCompanion;->mWeightSumId:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWeightSum()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

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

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout$InspectionCompanion;->readProperties(Landroid/widget/LinearLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
