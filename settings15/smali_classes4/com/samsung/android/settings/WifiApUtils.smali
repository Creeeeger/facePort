.class public abstract Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mhs.customer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "mhs.dbgstr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringID(I)I
    .locals 6

    sget-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mhs.customer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    :cond_0
    const v0, 0x7f143708

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143709

    goto/16 :goto_5

    :cond_1
    const v0, 0x7f143425

    const-string v1, "VZW"

    const-string v2, "ATT"

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz p0, :cond_2

    const p0, 0x7f143427

    goto/16 :goto_5

    :cond_2
    const p0, 0x7f14342c

    goto/16 :goto_5

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f143426

    goto/16 :goto_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143428

    goto/16 :goto_5

    :cond_5
    const v0, 0x7f141c4e

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f140d33

    goto/16 :goto_5

    :cond_6
    const p0, 0x7f142fd0    # 1.96974E38f

    goto/16 :goto_5

    :cond_7
    const v0, 0x7f141c4f    # 1.9687273E38f

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const p0, 0x7f142fd6

    goto/16 :goto_5

    :cond_8
    const p0, 0x7f1409d0

    goto/16 :goto_5

    :cond_9
    const v0, 0x7f143429

    if-ne p0, v0, :cond_a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14342a

    goto/16 :goto_5

    :cond_a
    const v0, 0x7f14342d

    if-ne p0, v0, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x7f14342e

    goto/16 :goto_5

    :cond_b
    const v0, 0x7f14342f

    if-ne p0, v0, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const p0, 0x7f143430

    goto/16 :goto_5

    :cond_c
    const v0, 0x7f143367

    const-string v3, "USC"

    const-string v4, "NEWCO"

    const-string v5, "TMO"

    if-ne p0, v0, :cond_10

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const p0, 0x7f14336a

    goto/16 :goto_5

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14336b

    goto/16 :goto_5

    :cond_f
    :goto_0
    const p0, 0x7f143368

    goto/16 :goto_5

    :cond_10
    const v0, 0x7f14336c

    if-ne p0, v0, :cond_12

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_11
    const p0, 0x7f14336d

    goto/16 :goto_5

    :cond_12
    const v0, 0x7f14336f

    if-ne p0, v0, :cond_14

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_13
    const p0, 0x7f143370

    goto/16 :goto_5

    :cond_14
    const v0, 0x7f143372

    if-ne p0, v0, :cond_19

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const p0, 0x7f143373

    goto/16 :goto_5

    :cond_15
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const p0, 0x7f143376

    goto/16 :goto_5

    :cond_16
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1

    :cond_17
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143377

    goto/16 :goto_5

    :cond_18
    :goto_1
    const p0, 0x7f143374

    goto/16 :goto_5

    :cond_19
    const v0, 0x7f14333f

    if-ne p0, v0, :cond_1d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2

    :cond_1a
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p0, 0x7f143342

    goto/16 :goto_5

    :cond_1b
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143343

    goto/16 :goto_5

    :cond_1c
    :goto_2
    const p0, 0x7f143340

    goto/16 :goto_5

    :cond_1d
    const v0, 0x7f143344

    if-ne p0, v0, :cond_1f

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_1e
    const p0, 0x7f143345    # 1.9699195E38f

    goto/16 :goto_5

    :cond_1f
    const v0, 0x7f143347

    if-ne p0, v0, :cond_21

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_20
    const p0, 0x7f143348

    goto/16 :goto_5

    :cond_21
    const v0, 0x7f14334a

    if-ne p0, v0, :cond_26

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const p0, 0x7f14334b

    goto/16 :goto_5

    :cond_22
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const p0, 0x7f14334e

    goto/16 :goto_5

    :cond_23
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_3

    :cond_24
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14334f

    goto/16 :goto_5

    :cond_25
    :goto_3
    const p0, 0x7f14334c

    goto/16 :goto_5

    :cond_26
    const v0, 0x7f143378

    if-ne p0, v0, :cond_27

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143379

    goto/16 :goto_5

    :cond_27
    const v0, 0x7f14337a

    if-ne p0, v0, :cond_28

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14337b

    goto/16 :goto_5

    :cond_28
    const v0, 0x7f14337c

    if-ne p0, v0, :cond_29

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14337d

    goto/16 :goto_5

    :cond_29
    const v0, 0x7f14337e

    if-ne p0, v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14337f

    goto/16 :goto_5

    :cond_2a
    const v0, 0x7f143350

    if-ne p0, v0, :cond_2b

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143351

    goto/16 :goto_5

    :cond_2b
    const v0, 0x7f143352

    if-ne p0, v0, :cond_2c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143353

    goto/16 :goto_5

    :cond_2c
    const v0, 0x7f143354

    if-ne p0, v0, :cond_2d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143355

    goto/16 :goto_5

    :cond_2d
    const v0, 0x7f143356

    if-ne p0, v0, :cond_2e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143357

    goto/16 :goto_5

    :cond_2e
    const v0, 0x7f1432b3

    if-ne p0, v0, :cond_2f

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1432b4

    goto/16 :goto_5

    :cond_2f
    const v0, 0x7f14181f

    if-ne p0, v0, :cond_30

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f141821

    goto/16 :goto_5

    :cond_30
    const v0, 0x7f143478

    if-ne p0, v0, :cond_31

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143479

    goto/16 :goto_5

    :cond_31
    const v0, 0x7f1432c3

    if-ne p0, v0, :cond_34

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_32

    const p0, 0x7f1432c6

    goto/16 :goto_5

    :cond_32
    const p0, 0x7f1432c4

    goto/16 :goto_5

    :cond_33
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1432c5

    goto/16 :goto_5

    :cond_34
    const v0, 0x7f140fba

    if-ne p0, v0, :cond_35

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f140fbb

    goto/16 :goto_5

    :cond_35
    const v0, 0x7f140fb7

    if-ne p0, v0, :cond_36

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f140fb8

    goto/16 :goto_5

    :cond_36
    const v0, 0x7f143401

    if-ne p0, v0, :cond_37

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_37

    const p0, 0x7f143402

    goto/16 :goto_5

    :cond_37
    const v0, 0x7f1432e2

    if-ne p0, v0, :cond_38

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1432e3

    goto/16 :goto_5

    :cond_38
    const v0, 0x7f1432e0

    if-ne p0, v0, :cond_39

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1432e1

    goto/16 :goto_5

    :cond_39
    const v0, 0x7f1434a7    # 1.9699913E38f

    if-ne p0, v0, :cond_3b

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_3a
    const p0, 0x7f1434a8    # 1.9699915E38f

    goto/16 :goto_5

    :cond_3b
    const v0, 0x7f14343b

    if-ne p0, v0, :cond_3c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14343c

    goto/16 :goto_5

    :cond_3c
    const v0, 0x7f14343e    # 1.96997E38f

    if-ne p0, v0, :cond_3d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14343d

    goto/16 :goto_5

    :cond_3d
    const v0, 0x7f143453

    if-ne p0, v0, :cond_3e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143454

    goto/16 :goto_5

    :cond_3e
    const v0, 0x7f14344e

    if-ne p0, v0, :cond_3f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14344f

    goto/16 :goto_5

    :cond_3f
    const v0, 0x7f14344c

    if-ne p0, v0, :cond_40

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14344d

    goto/16 :goto_5

    :cond_40
    const v0, 0x7f143451

    if-ne p0, v0, :cond_41

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143452

    goto/16 :goto_5

    :cond_41
    const v0, 0x7f1433fe

    if-ne p0, v0, :cond_42

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1433ff

    goto/16 :goto_5

    :cond_42
    const v0, 0x7f143437

    if-ne p0, v0, :cond_48

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_46

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_43

    goto :goto_4

    :cond_43
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_44

    const p0, 0x7f14343a

    goto/16 :goto_5

    :cond_44
    const p0, 0x7f143438

    goto/16 :goto_5

    :cond_45
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143439

    goto/16 :goto_5

    :cond_46
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_47

    const p0, 0x7f143442

    goto/16 :goto_5

    :cond_47
    const p0, 0x7f143441

    goto/16 :goto_5

    :cond_48
    const v0, 0x7f142cbd

    if-ne p0, v0, :cond_49

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f142cbf

    goto/16 :goto_5

    :cond_49
    const v0, 0x7f1436a6

    if-ne p0, v0, :cond_4a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1436a7

    goto/16 :goto_5

    :cond_4a
    const v0, 0x7f1436a2

    if-ne p0, v0, :cond_4d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_4b

    const p0, 0x7f1436a5

    goto/16 :goto_5

    :cond_4b
    const p0, 0x7f1436a3

    goto/16 :goto_5

    :cond_4c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f1436a4

    goto/16 :goto_5

    :cond_4d
    const v0, 0x7f143416

    if-ne p0, v0, :cond_4e

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-nez v0, :cond_4e

    const p0, 0x7f143417

    goto/16 :goto_5

    :cond_4e
    const v0, 0x7f1433cb

    if-ne p0, v0, :cond_4f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_4f

    const p0, 0x7f1433cc

    goto/16 :goto_5

    :cond_4f
    const v0, 0x7f1433c6

    if-ne p0, v0, :cond_50

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_50

    const p0, 0x7f1433c7

    goto/16 :goto_5

    :cond_50
    const v0, 0x7f143323

    if-ne p0, v0, :cond_51

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_51

    const p0, 0x7f143324

    goto/16 :goto_5

    :cond_51
    const v0, 0x7f143330

    if-ne p0, v0, :cond_52

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_52

    const p0, 0x7f143331

    goto/16 :goto_5

    :cond_52
    const v0, 0x7f14339c

    if-ne p0, v0, :cond_53

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_53

    const p0, 0x7f14339d

    goto/16 :goto_5

    :cond_53
    const v0, 0x7f1433ec

    if-ne p0, v0, :cond_54

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_54

    const p0, 0x7f1433ed

    goto/16 :goto_5

    :cond_54
    const v0, 0x7f1433e7

    if-ne p0, v0, :cond_55

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_55

    const p0, 0x7f1433e8

    goto/16 :goto_5

    :cond_55
    const v0, 0x7f1432d0

    if-ne p0, v0, :cond_56

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_56

    const p0, 0x7f1432d1

    goto/16 :goto_5

    :cond_56
    const v0, 0x7f1432cc

    if-ne p0, v0, :cond_57

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_57

    const p0, 0x7f1432cd

    goto/16 :goto_5

    :cond_57
    const v0, 0x7f1432ce

    if-ne p0, v0, :cond_58

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_58

    const p0, 0x7f1432cf

    goto/16 :goto_5

    :cond_58
    const v0, 0x7f1432c8

    if-ne p0, v0, :cond_59

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_59

    const p0, 0x7f1432c9

    goto/16 :goto_5

    :cond_59
    const v0, 0x7f143473

    if-ne p0, v0, :cond_5c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5a

    const p0, 0x7f143476

    goto :goto_5

    :cond_5a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5b

    const p0, 0x7f143474

    goto :goto_5

    :cond_5b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f143475

    goto :goto_5

    :cond_5c
    const v0, 0x7f143396

    if-ne p0, v0, :cond_5d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5d

    const p0, 0x7f143397

    goto :goto_5

    :cond_5d
    const v0, 0x7f143334

    if-ne p0, v0, :cond_5e

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5e

    const p0, 0x7f143335

    goto :goto_5

    :cond_5e
    const v0, 0x7f14330c

    if-ne p0, v0, :cond_5f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_5f

    const p0, 0x7f14330d

    goto :goto_5

    :cond_5f
    const v0, 0x7f14341c

    if-ne p0, v0, :cond_60

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_60

    const p0, 0x7f14341d

    :cond_60
    :goto_5
    return p0
.end method
