.class public final synthetic Lcom/samsung/android/settings/gts/SoundsAndVibrationSettingsGtsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    sget p0, Lcom/samsung/android/settings/gts/SoundsAndVibrationSettingsGtsProvider;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.settings.gts.category.SOUNDS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.settings.gts.category.VIBRATION_INTENSITY"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.settings.gts.category.VIBRATION_SYSTEM"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.settings.gts.category.VIBRATION"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.settings.gts.category.SOUNDS_SYSTEM_SOUNDS"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.settings.gts.category.SOUNDS_VOLUME"

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
