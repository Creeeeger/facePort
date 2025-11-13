.class public final synthetic Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/gtscell/data/GtsSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    iget p0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->buildGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setVersion(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
