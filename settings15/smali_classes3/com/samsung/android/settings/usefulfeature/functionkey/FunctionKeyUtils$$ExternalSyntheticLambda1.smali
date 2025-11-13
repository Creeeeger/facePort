.class public final synthetic Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    iget-object p0, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->key:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->FUNC_KEY_DOUBLE_SELECTED_ITEM_DEFAULT:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
