.class public final Lcom/android/settingslib/mobile/MobileMappings$Config;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public hideLtePlus:Z

.field public hspaDataDistinguishable:Z

.field public show4gFor3g:Z

.field public show4gForLte:Z

.field public show4glteForLte:Z

.field public showAtLeast3G:Z


# direct methods
.method public static readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 3

    new-instance v0, Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    const v2, 0x1110032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hspaDataDistinguishable:Z

    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "always_show_data_rat_icon_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    const-string v1, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    const-string v1, "show_4glte_for_lte_data_icon_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    const-string v1, "show_4g_for_3g_data_icon_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    const-string v1, "hide_lte_plus_data_icon_bool"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    :cond_1
    return-object v0
.end method
