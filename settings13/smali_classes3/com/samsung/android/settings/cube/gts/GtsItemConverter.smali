.class public Lcom/samsung/android/settings/cube/gts/GtsItemConverter;
.super Ljava/lang/Object;
.source "GtsItemConverter.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GtsItemConverter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertData(Lcom/samsung/android/settings/cube/index/ControlData;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
    .locals 4

    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 19
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    const-string p1, "convertData() : itemValue is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 23
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 24
    sget-object v1, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertData Title() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/index/ControlData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertData itemValue() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertData data.getControlType() : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/index/ControlData;->getControlType()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/index/ControlData;->getControlType()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->createItem(I)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertData() : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->setData(Lcom/samsung/android/settings/cube/index/ControlData;Lcom/samsung/android/settings/cube/ControlValue;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    sget-object p1, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertData() "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
