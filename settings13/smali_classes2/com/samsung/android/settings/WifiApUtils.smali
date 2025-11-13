.class public Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "WifiApUtils.java"


# static fields
.field private static final DBG:Z

.field private static DBGSTR:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    .line 32
    sput-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    .line 33
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 40
    sget-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mhs.customer"

    .line 41
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "mhs.dbgstr"

    .line 45
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    .line 51
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringID(I)I
    .locals 8

    .line 62
    sget-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mhs.customer"

    .line 63
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 69
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    const-string v1, "USC"

    const-string v2, "CMCC"

    if-ne p0, v0, :cond_3

    .line 70
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning_usc:I

    goto/16 :goto_11

    .line 71
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning_chn:I

    goto/16 :goto_11

    .line 72
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning_jpn:I

    goto/16 :goto_11

    .line 78
    :cond_3
    sget v0, Lcom/android/settings/R$string;->wifi_ap_hide_ssid:I

    const-string v3, "NEWCO"

    const-string v4, "TMO"

    if-ne p0, v0, :cond_5

    .line 79
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    :cond_4
    sget p0, Lcom/android/settings/R$string;->wifi_ap_hide_ssid_tmo:I

    goto/16 :goto_11

    .line 80
    :cond_5
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn:I

    const-string v5, "ATT"

    const-string v6, "VZW"

    if-ne p0, v0, :cond_a

    .line 81
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_usc:I

    goto/16 :goto_11

    .line 82
    :cond_6
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_vzw:I

    goto/16 :goto_11

    .line 83
    :cond_7
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_chn:I

    goto/16 :goto_11

    .line 84
    :cond_8
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_att:I

    goto/16 :goto_11

    .line 85
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_jpn:I

    goto/16 :goto_11

    .line 86
    :cond_a
    sget v0, Lcom/android/settings/R$string;->positive_button_off:I

    if-ne p0, v0, :cond_c

    .line 87
    sget-object p0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget p0, Lcom/android/settings/R$string;->dlg_ok:I

    goto/16 :goto_11

    .line 88
    :cond_b
    sget p0, Lcom/android/settings/R$string;->turn_off_button:I

    goto/16 :goto_11

    .line 89
    :cond_c
    sget v0, Lcom/android/settings/R$string;->positive_button_on:I

    if-ne p0, v0, :cond_e

    .line 90
    sget-object p0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget p0, Lcom/android/settings/R$string;->turn_on_button:I

    goto/16 :goto_11

    .line 91
    :cond_d
    sget p0, Lcom/android/settings/R$string;->common_ok:I

    goto/16 :goto_11

    .line 92
    :cond_e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    if-ne p0, v0, :cond_f

    .line 93
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title_att:I

    goto/16 :goto_11

    .line 94
    :cond_f
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn:I

    const-string v7, "SPRINT"

    if-ne p0, v0, :cond_12

    .line 95
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn_tmo:I

    goto/16 :goto_11

    .line 96
    :cond_10
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn_spr:I

    goto/16 :goto_11

    .line 97
    :cond_11
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn_vzw:I

    goto/16 :goto_11

    .line 98
    :cond_12
    sget v0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client:I

    if-ne p0, v0, :cond_18

    .line 99
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_0

    .line 100
    :cond_13
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget p0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client_tmo:I

    goto/16 :goto_11

    .line 101
    :cond_14
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget p0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client_spr:I

    goto/16 :goto_11

    .line 102
    :cond_15
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget p0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client_vzw:I

    goto/16 :goto_11

    .line 103
    :cond_16
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client_chn:I

    goto/16 :goto_11

    .line 99
    :cond_17
    :goto_0
    sget p0, Lcom/android/settings/R$string;->wifi_ap_disconnect_client_att:I

    goto/16 :goto_11

    .line 104
    :cond_18
    sget v0, Lcom/android/settings/R$string;->wifi_ap_change_policy_warn:I

    if-ne p0, v0, :cond_1d

    .line 105
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 106
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1

    .line 107
    :cond_19
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/settings/R$string;->wifi_ap_change_policy_warn_tmo:I

    goto/16 :goto_11

    .line 108
    :cond_1a
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/settings/R$string;->wifi_ap_change_policy_warn_chn:I

    goto/16 :goto_11

    .line 109
    :cond_1b
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_change_policy_warn_mtr:I

    goto/16 :goto_11

    .line 106
    :cond_1c
    :goto_1
    sget p0, Lcom/android/settings/R$string;->wifi_ap_change_policy_warn_att:I

    goto/16 :goto_11

    .line 110
    :cond_1d
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1:I

    if-ne p0, v0, :cond_23

    .line 111
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2

    .line 112
    :cond_1e
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1_tmo:I

    goto/16 :goto_11

    .line 113
    :cond_1f
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1_spr:I

    goto/16 :goto_11

    .line 114
    :cond_20
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1_vzw:I

    goto/16 :goto_11

    .line 115
    :cond_21
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1_chn:I

    goto/16 :goto_11

    .line 111
    :cond_22
    :goto_2
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1_att:I

    goto/16 :goto_11

    .line 116
    :cond_23
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2:I

    if-ne p0, v0, :cond_27

    .line 117
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_3

    .line 119
    :cond_24
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2_spr:I

    goto/16 :goto_11

    .line 120
    :cond_25
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2_chn:I

    goto/16 :goto_11

    .line 118
    :cond_26
    :goto_3
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2_att:I

    goto/16 :goto_11

    .line 121
    :cond_27
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color3:I

    if-ne p0, v0, :cond_2b

    .line 122
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_4

    .line 124
    :cond_28
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color3_spr:I

    goto/16 :goto_11

    .line 125
    :cond_29
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color3_chn:I

    goto/16 :goto_11

    .line 123
    :cond_2a
    :goto_4
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color3_att:I

    goto/16 :goto_11

    .line 126
    :cond_2b
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4:I

    if-ne p0, v0, :cond_31

    .line 127
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4_att:I

    goto/16 :goto_11

    .line 128
    :cond_2c
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4_tmo:I

    goto/16 :goto_11

    .line 129
    :cond_2d
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_5

    .line 130
    :cond_2e
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4_spr:I

    goto/16 :goto_11

    .line 131
    :cond_2f
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4_vzw:I

    goto/16 :goto_11

    .line 129
    :cond_30
    :goto_5
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4_mtr:I

    goto/16 :goto_11

    .line 132
    :cond_31
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1:I

    if-ne p0, v0, :cond_37

    .line 133
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_6

    .line 134
    :cond_32
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1_tmo:I

    goto/16 :goto_11

    .line 135
    :cond_33
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1_spr:I

    goto/16 :goto_11

    .line 136
    :cond_34
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1_vzw:I

    goto/16 :goto_11

    .line 137
    :cond_35
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1_chn:I

    goto/16 :goto_11

    .line 133
    :cond_36
    :goto_6
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1_att:I

    goto/16 :goto_11

    .line 138
    :cond_37
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2:I

    if-ne p0, v0, :cond_3b

    .line 139
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_7

    .line 141
    :cond_38
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2_spr:I

    goto/16 :goto_11

    .line 142
    :cond_39
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2_chn:I

    goto/16 :goto_11

    .line 140
    :cond_3a
    :goto_7
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2_att:I

    goto/16 :goto_11

    .line 143
    :cond_3b
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color3:I

    if-ne p0, v0, :cond_3f

    .line 144
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_8

    .line 146
    :cond_3c
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color3_spr:I

    goto/16 :goto_11

    .line 147
    :cond_3d
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color3_chn:I

    goto/16 :goto_11

    .line 145
    :cond_3e
    :goto_8
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color3_att:I

    goto/16 :goto_11

    .line 148
    :cond_3f
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4:I

    if-ne p0, v0, :cond_45

    .line 149
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4_att:I

    goto/16 :goto_11

    .line 150
    :cond_40
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4_tmo:I

    goto/16 :goto_11

    .line 151
    :cond_41
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_9

    .line 152
    :cond_42
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4_spr:I

    goto/16 :goto_11

    .line 153
    :cond_43
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4_vzw:I

    goto/16 :goto_11

    .line 151
    :cond_44
    :goto_9
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4_mtr:I

    goto/16 :goto_11

    .line 154
    :cond_45
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden1:I

    if-ne p0, v0, :cond_47

    .line 155
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden1_tmo:I

    goto/16 :goto_11

    .line 156
    :cond_46
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden1_chn:I

    goto/16 :goto_11

    .line 157
    :cond_47
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden2:I

    if-ne p0, v0, :cond_49

    .line 158
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden2_tmo:I

    goto/16 :goto_11

    .line 159
    :cond_48
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden2_chn:I

    goto/16 :goto_11

    .line 160
    :cond_49
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden3:I

    if-ne p0, v0, :cond_4b

    .line 161
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden3_tmo:I

    goto/16 :goto_11

    .line 162
    :cond_4a
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden3_chn:I

    goto/16 :goto_11

    .line 163
    :cond_4b
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden4:I

    if-ne p0, v0, :cond_4c

    .line 164
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden4_tmo:I

    goto/16 :goto_11

    .line 165
    :cond_4c
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden1:I

    if-ne p0, v0, :cond_4e

    .line 166
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden1_tmo:I

    goto/16 :goto_11

    .line 167
    :cond_4d
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden1_chn:I

    goto/16 :goto_11

    .line 168
    :cond_4e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden2:I

    if-ne p0, v0, :cond_50

    .line 169
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden2_tmo:I

    goto/16 :goto_11

    .line 170
    :cond_4f
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden2_chn:I

    goto/16 :goto_11

    .line 171
    :cond_50
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden3:I

    if-ne p0, v0, :cond_52

    .line 172
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden3_tmo:I

    goto/16 :goto_11

    .line 173
    :cond_51
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden3_chn:I

    goto/16 :goto_11

    .line 174
    :cond_52
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden4:I

    if-ne p0, v0, :cond_53

    .line 175
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden4_tmo:I

    goto/16 :goto_11

    .line 176
    :cond_53
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient:I

    if-ne p0, v0, :cond_5a

    .line 177
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_att:I

    goto/16 :goto_11

    .line 178
    :cond_54
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_tmo:I

    goto/16 :goto_11

    .line 179
    :cond_55
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_a

    .line 180
    :cond_56
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_spr:I

    goto/16 :goto_11

    .line 181
    :cond_57
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_vzw:I

    goto/16 :goto_11

    .line 182
    :cond_58
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_chn:I

    goto/16 :goto_11

    .line 179
    :cond_59
    :goto_a
    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_changeable_maxclient_mtr:I

    goto/16 :goto_11

    .line 183
    :cond_5a
    sget v0, Lcom/android/settings/R$string;->dialog_battery_data_warning:I

    if-ne p0, v0, :cond_5f

    .line 184
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_b

    .line 185
    :cond_5b
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    sget p0, Lcom/android/settings/R$string;->dialog_battery_data_warning_tmo:I

    goto/16 :goto_11

    .line 186
    :cond_5c
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget p0, Lcom/android/settings/R$string;->dialog_battery_data_warning_spr:I

    goto/16 :goto_11

    .line 187
    :cond_5d
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->dialog_battery_data_warning_vzw:I

    goto/16 :goto_11

    .line 184
    :cond_5e
    :goto_b
    sget p0, Lcom/android/settings/R$string;->dialog_battery_data_warning_att:I

    goto/16 :goto_11

    .line 188
    :cond_5f
    sget v0, Lcom/android/settings/R$string;->unable_to_use_hotspot_flight_mode:I

    if-ne p0, v0, :cond_60

    .line 189
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->unable_to_use_hotspot_flight_mode_tmo:I

    goto/16 :goto_11

    .line 190
    :cond_60
    sget v0, Lcom/android/settings/R$string;->wifi_ap_starting:I

    if-ne p0, v0, :cond_64

    .line 191
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_c

    .line 193
    :cond_61
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    sget p0, Lcom/android/settings/R$string;->wifi_ap_starting_tmo:I

    goto/16 :goto_11

    .line 194
    :cond_62
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_starting_chn:I

    goto/16 :goto_11

    .line 192
    :cond_63
    :goto_c
    sget p0, Lcom/android/settings/R$string;->wifi_ap_starting_att:I

    goto/16 :goto_11

    .line 195
    :cond_64
    sget v0, Lcom/android/settings/R$string;->wifi_ap_stopping:I

    if-ne p0, v0, :cond_68

    .line 196
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 197
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_d

    .line 198
    :cond_65
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget p0, Lcom/android/settings/R$string;->wifi_ap_stopping_tmo:I

    goto/16 :goto_11

    .line 199
    :cond_66
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_stopping_chn:I

    goto/16 :goto_11

    .line 197
    :cond_67
    :goto_d
    sget p0, Lcom/android/settings/R$string;->wifi_ap_stopping_att:I

    goto/16 :goto_11

    .line 200
    :cond_68
    sget v0, Lcom/android/settings/R$string;->wifi_notify_mobileap_is_on:I

    if-ne p0, v0, :cond_69

    .line 201
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_notify_mobileap_is_on_chn:I

    goto/16 :goto_11

    .line 202
    :cond_69
    sget v0, Lcom/android/settings/R$string;->wifi_tether_enabled_subtext:I

    if-ne p0, v0, :cond_6e

    .line 203
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_e

    .line 204
    :cond_6a
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget p0, Lcom/android/settings/R$string;->wifi_tether_enabled_subtext_tmo:I

    goto/16 :goto_11

    .line 205
    :cond_6b
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    sget p0, Lcom/android/settings/R$string;->wifi_tether_enabled_subtext_spr:I

    goto/16 :goto_11

    .line 206
    :cond_6c
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_tether_enabled_subtext_vzw:I

    goto/16 :goto_11

    .line 203
    :cond_6d
    :goto_e
    sget p0, Lcom/android/settings/R$string;->wifi_tether_enabled_subtext_att:I

    goto/16 :goto_11

    .line 207
    :cond_6e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_help_enable_msg_summary:I

    if-ne p0, v0, :cond_6f

    .line 208
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_help_enable_msg_summary_vzw:I

    goto/16 :goto_11

    .line 209
    :cond_6f
    sget v0, Lcom/android/settings/R$string;->wifi_ap__wifi_sharing:I

    if-ne p0, v0, :cond_70

    .line 210
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap__wifi_sharing_vzw:I

    goto/16 :goto_11

    .line 211
    :cond_70
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction:I

    if-ne p0, v0, :cond_74

    .line 212
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_vzw:I

    goto/16 :goto_11

    .line 213
    :cond_71
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_tmo:I

    goto/16 :goto_11

    .line 214
    :cond_72
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_spr:I

    goto/16 :goto_11

    .line 215
    :cond_73
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_chn:I

    goto/16 :goto_11

    .line 216
    :cond_74
    sget v0, Lcom/android/settings/R$string;->wifi_ap_no_hotspot_mode_warning:I

    if-ne p0, v0, :cond_77

    .line 217
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 218
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto :goto_f

    .line 219
    :cond_75
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_no_hotspot_mode_warning_tmo:I

    goto/16 :goto_11

    .line 218
    :cond_76
    :goto_f
    sget p0, Lcom/android/settings/R$string;->wifi_ap_no_hotspot_mode_warning_att:I

    goto/16 :goto_11

    .line 220
    :cond_77
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_configure:I

    if-ne p0, v0, :cond_79

    .line 221
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_configure_vzw:I

    goto/16 :goto_11

    .line 222
    :cond_78
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_configure_tmo:I

    goto/16 :goto_11

    .line 223
    :cond_79
    sget v0, Lcom/android/settings/R$string;->mobileap:I

    if-ne p0, v0, :cond_7a

    .line 224
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->mobileap_jpn:I

    goto/16 :goto_11

    .line 225
    :cond_7a
    sget v0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_title:I

    if-ne p0, v0, :cond_7b

    .line 226
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_title_jpn:I

    goto/16 :goto_11

    .line 227
    :cond_7b
    sget v0, Lcom/android/settings/R$string;->wifi_ap_instruction_configure_non_grace:I

    if-ne p0, v0, :cond_7c

    .line 228
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_instruction_configure_non_grace_tmo:I

    goto/16 :goto_11

    .line 229
    :cond_7c
    sget v0, Lcom/android/settings/R$string;->first_use_wifi_msg:I

    if-ne p0, v0, :cond_7d

    .line 230
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->first_use_wifi_msg_mtr:I

    goto/16 :goto_11

    .line 231
    :cond_7d
    sget v0, Lcom/android/settings/R$string;->first_use_title:I

    if-ne p0, v0, :cond_7e

    .line 232
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->first_use_title_mtr:I

    goto/16 :goto_11

    .line 233
    :cond_7e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn:I

    if-ne p0, v0, :cond_82

    .line 234
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    sget p0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_vzw:I

    goto/16 :goto_11

    .line 235
    :cond_7f
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    sget p0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_tmo:I

    goto/16 :goto_11

    .line 236
    :cond_80
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    sget p0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_spr:I

    goto/16 :goto_11

    .line 237
    :cond_81
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_chn:I

    goto/16 :goto_11

    .line 238
    :cond_82
    sget v0, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_title:I

    if-ne p0, v0, :cond_83

    .line 239
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_title_mtr:I

    goto/16 :goto_11

    .line 240
    :cond_83
    sget v0, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_msg:I

    if-ne p0, v0, :cond_84

    .line 241
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_broadcast_network_name_msg_mtr:I

    goto/16 :goto_11

    .line 242
    :cond_84
    sget v0, Lcom/android/settings/R$string;->mobile_ap_not_disable:I

    if-ne p0, v0, :cond_85

    .line 243
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->mobile_ap_not_disable_chn:I

    goto/16 :goto_11

    .line 244
    :cond_85
    sget v0, Lcom/android/settings/R$string;->mobile_ap_disable:I

    if-ne p0, v0, :cond_86

    .line 245
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->mobile_ap_disable_chn:I

    goto/16 :goto_11

    .line 246
    :cond_86
    sget v0, Lcom/android/settings/R$string;->easy_group_network_disable:I

    if-ne p0, v0, :cond_87

    .line 247
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->easy_group_network_disable_chn:I

    goto/16 :goto_11

    .line 248
    :cond_87
    sget v0, Lcom/android/settings/R$string;->wifi_disable:I

    if-ne p0, v0, :cond_88

    .line 249
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_disable_chn:I

    goto/16 :goto_11

    .line 250
    :cond_88
    sget v0, Lcom/android/settings/R$string;->wifiaplan_dlg_restart_required:I

    if-ne p0, v0, :cond_89

    .line 251
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifiaplan_dlg_restart_required_spr:I

    goto/16 :goto_11

    .line 252
    :cond_89
    sget v0, Lcom/android/settings/R$string;->wifiaplan_dlg_restart_required_message:I

    if-ne p0, v0, :cond_8a

    .line 253
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifiaplan_dlg_restart_required_message_spr:I

    goto/16 :goto_11

    .line 254
    :cond_8a
    sget v0, Lcom/android/settings/R$string;->wifi_hotspot20_summary:I

    if-ne p0, v0, :cond_8c

    .line 255
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_8b

    sget p0, Lcom/android/settings/R$string;->wifi_hotspot20_summary_dcm:I

    goto/16 :goto_11

    .line 256
    :cond_8b
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_hotspot20_summary_tmo:I

    goto/16 :goto_11

    .line 257
    :cond_8c
    sget v0, Lcom/android/settings/R$string;->wifi_captive_portal_message:I

    if-ne p0, v0, :cond_8e

    .line 258
    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 259
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    sget-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 260
    :cond_8d
    sget p0, Lcom/android/settings/R$string;->wifi_captive_portal_message_us_common:I

    goto/16 :goto_11

    .line 262
    :cond_8e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_body_text:I

    if-ne p0, v0, :cond_8f

    .line 263
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_body_text_jpn:I

    goto/16 :goto_11

    .line 264
    :cond_8f
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_body_text_tablet:I

    if-ne p0, v0, :cond_90

    .line 265
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_body_text_jpn_tablet:I

    goto/16 :goto_11

    .line 266
    :cond_90
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_not_available:I

    if-ne p0, v0, :cond_91

    .line 267
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_not_available_jpn:I

    goto/16 :goto_11

    .line 268
    :cond_91
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_mhs_on_text:I

    if-ne p0, v0, :cond_92

    .line 269
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_mhs_on_text_jpn:I

    goto/16 :goto_11

    .line 270
    :cond_92
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_during_conn_text:I

    if-ne p0, v0, :cond_93

    .line 271
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_during_conn_text_jpn:I

    goto/16 :goto_11

    .line 272
    :cond_93
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_text:I

    if-ne p0, v0, :cond_94

    .line 273
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_text_jpn:I

    goto/16 :goto_11

    .line 274
    :cond_94
    sget v0, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title:I

    if-ne p0, v0, :cond_95

    .line 275
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_title_jpn:I

    goto/16 :goto_11

    .line 276
    :cond_95
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_auto_hotspot:I

    if-ne p0, v0, :cond_9b

    .line 277
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_99

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_96

    goto :goto_10

    .line 280
    :cond_96
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 281
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_97

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_auto_hotspot_tablet_jpn:I

    goto/16 :goto_11

    .line 282
    :cond_97
    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_auto_hotspot_jpn:I

    goto/16 :goto_11

    .line 283
    :cond_98
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_auto_hotspot_tablet:I

    goto/16 :goto_11

    .line 278
    :cond_99
    :goto_10
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_9a

    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_subtext_tablet:I

    goto/16 :goto_11

    .line 279
    :cond_9a
    sget p0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_subtext:I

    goto/16 :goto_11

    .line 284
    :cond_9b
    sget v0, Lcom/android/settings/R$string;->smart_tethering_description:I

    if-ne p0, v0, :cond_9e

    .line 285
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 286
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_9c

    sget p0, Lcom/android/settings/R$string;->smart_tethering_description_tablet_jpn:I

    goto/16 :goto_11

    .line 287
    :cond_9c
    sget p0, Lcom/android/settings/R$string;->smart_tethering_description_jpn:I

    goto/16 :goto_11

    .line 288
    :cond_9d
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->smart_tethering_description_tablet:I

    goto/16 :goto_11

    .line 289
    :cond_9e
    sget v0, Lcom/android/settings/R$string;->wifi_ap_samsung_account:I

    if-ne p0, v0, :cond_9f

    .line 290
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_samsung_account_jpn:I

    goto/16 :goto_11

    .line 291
    :cond_9f
    sget v0, Lcom/android/settings/R$string;->wifi_ap_mhs_add_allowed_device_description:I

    if-ne p0, v0, :cond_a0

    .line 292
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_ap_mhs_add_allowed_device_description_jpn:I

    goto/16 :goto_11

    .line 293
    :cond_a0
    sget v0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_title:I

    if-ne p0, v0, :cond_a1

    .line 294
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_title_jpn:I

    goto/16 :goto_11

    .line 295
    :cond_a1
    sget v0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text:I

    if-ne p0, v0, :cond_a4

    .line 296
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 297
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_a2

    sget p0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text_tablet_jpn:I

    goto/16 :goto_11

    .line 298
    :cond_a2
    sget p0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text_jpn:I

    goto/16 :goto_11

    .line 299
    :cond_a3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget p0, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text_tablet:I

    goto/16 :goto_11

    .line 301
    :cond_a4
    sget v0, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg_beyond_vzw:I

    if-ne p0, v0, :cond_a5

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-nez v0, :cond_a5

    .line 302
    sget p0, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg_wo_wifisharing_vzw:I

    goto/16 :goto_11

    .line 303
    :cond_a5
    sget v0, Lcom/android/settings/R$string;->wifi_ap_power_save_hint:I

    if-ne p0, v0, :cond_a6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 304
    sget p0, Lcom/android/settings/R$string;->wifi_ap_power_save_hint_jpn:I

    goto/16 :goto_11

    .line 305
    :cond_a6
    sget v0, Lcom/android/settings/R$string;->wifi_ap_pmf_hint:I

    if-ne p0, v0, :cond_a7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 306
    sget p0, Lcom/android/settings/R$string;->wifi_ap_pmf_hint_jpn:I

    goto/16 :goto_11

    .line 307
    :cond_a7
    sget v0, Lcom/android/settings/R$string;->wifi_ap_enable_help_text:I

    if-ne p0, v0, :cond_a8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 308
    sget p0, Lcom/android/settings/R$string;->wifi_ap_enable_help_text_jpn:I

    goto/16 :goto_11

    .line 309
    :cond_a8
    sget v0, Lcom/android/settings/R$string;->wifi_ap_hide_ssid_hint:I

    if-ne p0, v0, :cond_a9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 310
    sget p0, Lcom/android/settings/R$string;->wifi_ap_hide_ssid_hint_jpn:I

    goto :goto_11

    .line 311
    :cond_a9
    sget v0, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot:I

    if-ne p0, v0, :cond_aa

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 312
    sget p0, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot_jpn:I

    goto :goto_11

    .line 313
    :cond_aa
    sget v0, Lcom/android/settings/R$string;->wifi_ap_set_mobile_data_limit:I

    if-ne p0, v0, :cond_ab

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 314
    sget p0, Lcom/android/settings/R$string;->wifi_ap_set_mobile_data_limit_jpn:I

    goto :goto_11

    .line 315
    :cond_ab
    sget v0, Lcom/android/settings/R$string;->wifi_ap_security_warning:I

    if-ne p0, v0, :cond_ac

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 316
    sget p0, Lcom/android/settings/R$string;->wifi_ap_security_warning_jpn:I

    goto :goto_11

    .line 317
    :cond_ac
    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_title:I

    if-ne p0, v0, :cond_ad

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 318
    sget p0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_title_jpn:I

    goto :goto_11

    .line 319
    :cond_ad
    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_phone:I

    if-ne p0, v0, :cond_ae

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 320
    sget p0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_phone_jpn:I

    goto :goto_11

    .line 321
    :cond_ae
    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_tablet:I

    if-ne p0, v0, :cond_af

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 322
    sget p0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_tablet_jpn:I

    goto :goto_11

    .line 323
    :cond_af
    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_settings_link_text:I

    if-ne p0, v0, :cond_b0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 324
    sget p0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_settings_link_text_jpn:I

    :cond_b0
    :goto_11
    return p0
.end method
