.class public final Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static sInstance:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
