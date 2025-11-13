.class Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "NfcOsaifukeitaiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 352
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 354
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "secure_nfc_settings_dcm"

    const-string v1, "secure_nfc_settings_kdi"

    const-string v2, "nfc_payment_settings"

    const-string v3, "nfc_read_write"

    const-string v4, "toggle_lock_number_initialization"

    const-string v5, "nfc_rkt_settings"

    const-string v6, "android_beam_settings"

    const-string v7, "nfc_osaifukeitai_settings"

    const-string v8, "nfc_setting_title"

    if-eqz p1, :cond_1

    .line 355
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "toggle_osaifukeitai_lock"

    .line 357
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "toggle_lock_number_change"

    .line 358
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "nfc_payment_settings_jpn"

    .line 362
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 367
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 368
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Athelete_Edition:Z

    if-nez p1, :cond_3

    const-string p1, "nfc_settings"

    .line 371
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "nfc_mode_general"

    .line 372
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "mode_card_mode"

    .line 373
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "mode_standard_mode"

    .line 374
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "nfc_payment_sim"

    .line 375
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIMvnoModel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 380
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Athelete_Edition:Z

    if-eqz p1, :cond_4

    goto :goto_0

    .line 389
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->-$$Nest$sfgetMNO()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RKT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 390
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_5
    :goto_0
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Athelete_Edition:Z

    if-nez v0, :cond_2

    .line 330
    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Edition:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Starwars_Edition:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_ANTENNA_ANIMATION:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 331
    :cond_1
    :goto_0
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm_oly:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 335
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->-$$Nest$sfgetMNO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_rkt_faver3:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 338
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 339
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 341
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 342
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_kdi:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 345
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
