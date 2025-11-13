.class public final synthetic Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
