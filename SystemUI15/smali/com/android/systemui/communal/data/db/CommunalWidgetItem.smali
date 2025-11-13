.class public final Lcom/android/systemui/communal/data/db/CommunalWidgetItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final componentName:Ljava/lang/String;

.field public final itemId:J

.field public final uid:J

.field public final widgetId:I


# direct methods
.method public constructor <init>(JILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    iput p3, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->widgetId:I

    iput-object p4, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->componentName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;

    iget-wide v3, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    iget-wide v5, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->widgetId:I

    iget v3, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->widgetId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->componentName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->componentName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    iget-wide p0, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->widgetId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->componentName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunalWidgetItem(uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetItem;->itemId:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
