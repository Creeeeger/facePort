.class public final Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewGroup$MarginLayoutParams$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mLayout_marginBottomId:I

.field private blacklist mLayout_marginLeftId:I

.field private blacklist mLayout_marginRightId:I

.field private blacklist mLayout_marginTopId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    const-string v0, "layout_marginBottom"

    const v1, 0x10100fa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginBottomId:I

    const-string v0, "layout_marginLeft"

    const v1, 0x10100f7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginLeftId:I

    const-string v0, "layout_marginRight"

    const v1, 0x10100f9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginRightId:I

    const-string v0, "layout_marginTop"

    const v1, 0x10100f8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginTopId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginBottomId:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginLeftId:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginRightId:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->mLayout_marginTopId:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

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

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams$InspectionCompanion;->readProperties(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
