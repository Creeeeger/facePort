.class public final Landroid/widget/GridView$InspectionCompanion;
.super Ljava/lang/Object;
.source "GridView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mColumnWidthId:I

.field private blacklist mGravityId:I

.field private blacklist mHorizontalSpacingId:I

.field private blacklist mNumColumnsId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mStretchModeId:I

.field private blacklist mVerticalSpacingId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 5

    const v0, 0x1010117

    const-string v1, "columnWidth"

    invoke-interface {p1, v1, v0}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mColumnWidthId:I

    const-string v0, "gravity"

    const v2, 0x10100af

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mGravityId:I

    const-string v0, "horizontalSpacing"

    const v2, 0x1010114

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mHorizontalSpacingId:I

    const-string/jumbo v0, "numColumns"

    const v2, 0x1010118

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mNumColumnsId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "none"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v2, "spacingWidth"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string/jumbo v2, "spacingWidthUniform"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v2, "stretchMode"

    const v4, 0x1010116

    invoke-interface {p1, v2, v4, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mStretchModeId:I

    const-string/jumbo v1, "verticalSpacing"

    const v2, 0x1010115

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mVerticalSpacingId:I

    iput-boolean v3, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/GridView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mColumnWidthId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mHorizontalSpacingId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mNumColumnsId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mStretchModeId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getStretchMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mVerticalSpacingId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

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

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView$InspectionCompanion;->readProperties(Landroid/widget/GridView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
