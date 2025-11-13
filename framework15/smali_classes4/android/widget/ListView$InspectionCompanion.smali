.class public final Landroid/widget/ListView$InspectionCompanion;
.super Ljava/lang/Object;
.source "ListView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDividerHeightId:I

.field private blacklist mDividerId:I

.field private blacklist mFooterDividersEnabledId:I

.field private blacklist mHeaderDividersEnabledId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    const-string v0, "divider"

    const v1, 0x1010129

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView$InspectionCompanion;->mDividerId:I

    const-string v0, "dividerHeight"

    const v1, 0x101012a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView$InspectionCompanion;->mDividerHeightId:I

    const-string v0, "footerDividersEnabled"

    const v1, 0x101022f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView$InspectionCompanion;->mFooterDividersEnabledId:I

    const-string v0, "headerDividersEnabled"

    const v1, 0x101022e

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView$InspectionCompanion;->mHeaderDividersEnabledId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ListView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ListView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView$InspectionCompanion;->mDividerId:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ListView$InspectionCompanion;->mDividerHeightId:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ListView$InspectionCompanion;->mFooterDividersEnabledId:I

    invoke-virtual {p1}, Landroid/widget/ListView;->areFooterDividersEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ListView$InspectionCompanion;->mHeaderDividersEnabledId:I

    invoke-virtual {p1}, Landroid/widget/ListView;->areHeaderDividersEnabled()Z

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

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView$InspectionCompanion;->readProperties(Landroid/widget/ListView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
