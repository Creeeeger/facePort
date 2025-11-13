.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;
.super Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.sdm.VZWSystemUpdatesLauncher"

    return-object p0
.end method

.method public final isFotaSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isVZWFotaNewEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final topLevelKey()Ljava/lang/String;
    .locals 0

    const-string p0, "dashboard_tile_pref_com.samsung.sdm.VZWSystemUpdatesLauncher"

    return-object p0
.end method
