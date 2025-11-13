.class public Lcom/samsung/android/settings/as/utils/WorkUtils;
.super Ljava/lang/Object;
.source "WorkUtils.java"


# direct methods
.method public static getPersonalProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPersonalProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isKnoxDoModeImpl(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "device_policy"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string v0, "WorkUtils"

    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 35
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "isKnoxDoModeImpl true"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "isKnoxDoModeImpl false"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isWorkSoundSyncEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isWorkSoundSyncEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
