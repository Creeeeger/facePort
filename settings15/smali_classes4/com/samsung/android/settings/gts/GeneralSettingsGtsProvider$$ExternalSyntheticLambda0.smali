.class public final synthetic Lcom/samsung/android/settings/gts/GeneralSettingsGtsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget p0, Lcom/samsung/android/settings/gts/GeneralSettingsGtsProvider;->$r8$clinit:I

    const-string p0, "com.samsung.android.settings.gts.category.MOUSE_AND_TRACKPAD"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
