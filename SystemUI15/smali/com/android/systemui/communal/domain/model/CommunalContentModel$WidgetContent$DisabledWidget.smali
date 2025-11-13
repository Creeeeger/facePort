.class public final Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;


# instance fields
.field public final appWidgetId:I

.field public final key:Ljava/lang/String;

.field public final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    iput-object p2, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    sget-object p2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY;->Companion:Lcom/android/systemui/communal/domain/model/CommunalContentModel$KEY$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "disabled_widget_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->key:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    iput-object p1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;

    iget v1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    iget v3, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p1, p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->size:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DisabledWidget(appWidgetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->appWidgetId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", providerInfo="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
