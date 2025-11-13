.class public final Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel;


# instance fields
.field public final appWidgetId:I

.field public final icon:Landroid/graphics/Bitmap;

.field public final packageName:Ljava/lang/String;

.field public final priority:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    iput p2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->priority:I

    iput-object p3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    iget v1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    iget v3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->priority:I

    iget v3, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->priority:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->priority:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pending(appWidgetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", icon="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", user="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
