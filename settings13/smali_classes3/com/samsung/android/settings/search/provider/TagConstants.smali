.class public Lcom/samsung/android/settings/search/provider/TagConstants;
.super Ljava/lang/Object;
.source "TagConstants.java"


# direct methods
.method public static getRandomTagList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.samsung.android.settings.intelligence.TAG_SECURE"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_EYE_PROTECTION"

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_ADVANCED"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_RECOMMENDED"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_NOTIFICATIONS"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_FOR_PRIVACY"

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_BACKUP"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_FOR_HEALTH"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_HEARING"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_PUBLIC_AREA"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_ONE_HANDED"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_VIDEO"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.settings.intelligence.TAG_DEVICE_TROUBLE"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->supportSPenTag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/search/provider/TagChecker;->isSPenTagTypeRandom(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.settings.intelligence.TAG_SPEN"

    .line 62
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
