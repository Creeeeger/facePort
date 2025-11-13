.class public abstract Lcom/android/settings/security/MemtagHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getSummary()I
    .locals 3

    const-string v0, "persist.device_config.runtime_native_boot.bootloader_override"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "force_off"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f14179a

    return v0

    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "force_on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f14179b

    return v0

    :cond_1
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/security/MemtagHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1417a0

    return v0

    :cond_2
    const v0, 0x7f14179f

    return v0

    :cond_3
    invoke-static {}, Lcom/android/settings/security/MemtagHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1417a1

    return v0

    :cond_4
    const v0, 0x7f14179e

    return v0
.end method

.method public static isChecked()Z
    .locals 2

    const-string v0, "arm64.memtag.bootctl"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "memtag"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
