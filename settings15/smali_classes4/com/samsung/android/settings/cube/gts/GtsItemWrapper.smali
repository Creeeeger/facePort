.class public abstract Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field protected static final DEBUG:Z

.field protected static final INVALID_MIN_MAX_ATTRIBUTE_VALUE:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "GtsItemWrapper"


# instance fields
.field protected mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

.field protected mControlValue:Lcom/samsung/android/settings/cube/ControlValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->DEBUG:Z

    return-void
.end method

.method public static createItem(I)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "controlType : "

    invoke-static {p0, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/cube/gts/CustomItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SingleChoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SliderTickMarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SliderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SwitchItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/cube/gts/IntentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
.end method

.method public final buildGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->setRevision(I)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    iget-object p1, p1, Lcom/samsung/android/settings/cube/ControlValue;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    iget-object v0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mUri:Landroid/net/Uri;

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->setUri(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->addEmbeddedItem(Lcom/samsung/android/gtscell/data/GtsItem;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->setText(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public abstract isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
.end method
