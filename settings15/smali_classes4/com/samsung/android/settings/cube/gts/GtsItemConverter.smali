.class public Lcom/samsung/android/settings/cube/gts/GtsItemConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GtsItemConverter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->DEBUG:Z

    return-void
.end method

.method public static convertData(Lcom/samsung/android/settings/cube/index/ControlData;Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
    .locals 6

    const-string v0, "convertData() : "

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    const-string p1, "convertData() : itemValue is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertData Title() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertData itemValue() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "convertData data.getControlType() : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    invoke-static {v1, v4, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    invoke-static {v1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->createItem(I)Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    iput-object p0, v1, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    iput-object p1, v1, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    sget-object p1, Lcom/samsung/android/settings/cube/gts/GtsItemConverter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convertData() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
