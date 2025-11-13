.class public abstract Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.super Ljava/lang/Object;
.source "GtsItemWrapper.java"


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "GtsItemWrapper"


# instance fields
.field protected mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

.field protected mControlValue:Lcom/samsung/android/settings/cube/ControlValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(I)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/cube/gts/CustomItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/CustomItem;-><init>()V

    return-object p0

    .line 54
    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SingleChoiceItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/SingleChoiceItem;-><init>()V

    return-object p0

    .line 60
    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SliderTickMarkItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/SliderTickMarkItem;-><init>()V

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SliderItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/SliderItem;-><init>()V

    return-object p0

    .line 51
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/cube/gts/SwitchItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/SwitchItem;-><init>()V

    return-object p0

    .line 66
    :cond_2
    new-instance p0, Lcom/samsung/android/settings/cube/gts/IntentItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/IntentItem;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
.end method

.method public buildGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 2

    .line 36
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources;->getInstance()Lcom/samsung/android/settings/gts/GtsResources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/gts/GtsResources;->getMinVersion(Ljava/lang/String;)I

    move-result p1

    .line 37
    invoke-virtual {p2, p1}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->setRevision(I)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->setUri(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->addEmbeddedItem(Lcom/samsung/android/gtscell/data/GtsItem;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->setText(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0
.end method

.method public buildGtsItemExpression(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 1

    .line 31
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources;->getInstance()Lcom/samsung/android/settings/gts/GtsResources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/gts/GtsResources;->getMinVersion(Ljava/lang/String;)I

    move-result p1

    .line 32
    invoke-virtual {p2, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setVersion(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method protected getAttributeArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected getAttributeInt(Ljava/lang/String;)I
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getStorePackage()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getStorePackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSummary()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getSummary()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/index/ControlData;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected getValue()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
.end method

.method public setData(Lcom/samsung/android/settings/cube/index/ControlData;Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    .line 107
    iput-object p2, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    return-void
.end method
