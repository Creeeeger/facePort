.class public final Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;


# instance fields
.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final appWidgetId:I

.field public final inQuietMode:Z

.field public final key:Ljava/lang/String;

.field public final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetProviderInfo;Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    iput-object p2, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput-boolean p4, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    sget-object p2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY;->Companion:Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "widget_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->key:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iget v1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    iget v3, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object v3, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    iget-boolean p1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Widget(appWidgetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", providerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appWidgetHost="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inQuietMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
