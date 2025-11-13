.class public final Lcom/android/systemui/util/kotlin/PackageManagerExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final isComponentActuallyEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method
