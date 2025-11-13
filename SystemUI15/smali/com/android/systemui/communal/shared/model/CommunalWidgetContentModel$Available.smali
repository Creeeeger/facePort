.class public final Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel;


# instance fields
.field public final appWidgetId:I

.field public final priority:I

.field public final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    iput-object p2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput p3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->priority:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget v1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    iget v3, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->priority:I

    iget p1, p1, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->priority:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Available(appWidgetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", providerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->priority:I

    const-string v0, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
