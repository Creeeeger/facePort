.class public abstract Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static bixbyActionMap:Ljava/util/Map;


# direct methods
.method public static getTargetMenu(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->bixbyActionMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->bixbyActionMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData$BixbyActionEnum;->values()[Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData$BixbyActionEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->bixbyActionMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData$BixbyActionEnum;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->bixbyActionMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData$BixbyActionEnum;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData$BixbyActionEnum;->getTargetMenu()Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/accessibility/bixby/action/DummyAction;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;-><init>()V

    return-object p0
.end method
