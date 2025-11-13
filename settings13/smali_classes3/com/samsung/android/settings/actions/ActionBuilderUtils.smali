.class public Lcom/samsung/android/settings/actions/ActionBuilderUtils;
.super Ljava/lang/Object;
.source "ActionBuilderUtils.java"


# direct methods
.method public static getPreferenceController(Landroid/content/Context;Lcom/samsung/android/settings/actions/ActionData;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/settings/actions/ActionData;->getPreferenceController()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/actions/ActionBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 0

    .line 20
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 25
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method
