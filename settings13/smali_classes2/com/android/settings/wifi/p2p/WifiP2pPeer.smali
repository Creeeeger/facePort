.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroidx/preference/Preference;
.source "WifiP2pPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    }
.end annotation


# static fields
.field public static final deviceTypeDefaultIcon:[I

.field public static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field private mBinding:Z

.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I

.field private mSecondSummary:Landroid/widget/TextView;

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0x1b

    new-array v0, v0, [I

    .line 69
    sget v1, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_mobile:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v3, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_tablet:I

    const/4 v4, 0x1

    aput v3, v0, v4

    sget v3, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_wearable:I

    const/4 v5, 0x2

    aput v3, v0, v5

    sget v3, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_pc:I

    const/4 v6, 0x3

    aput v3, v0, v6

    sget v7, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_accessory:I

    const/4 v8, 0x4

    aput v7, v0, v8

    sget v7, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_tv:I

    const/4 v9, 0x5

    aput v7, v0, v9

    sget v10, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_level_box:I

    const/4 v11, 0x6

    aput v10, v0, v11

    sget v12, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_signage:I

    const/4 v13, 0x7

    aput v12, v0, v13

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_refrigerator:I

    const/16 v15, 0x8

    aput v14, v0, v15

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_washing_machine:I

    const/16 v15, 0x9

    aput v14, v0, v15

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_dryer:I

    const/16 v17, 0xa

    aput v14, v0, v17

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_floor_airconditioner:I

    const/16 v13, 0xb

    aput v14, v0, v13

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_room_airconditioner:I

    const/16 v19, 0xc

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_system_airconditioner:I

    const/16 v19, 0xd

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_air_purifier:I

    const/16 v19, 0xe

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_oven:I

    const/16 v19, 0xf

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_range:I

    const/16 v19, 0x10

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_robot_vacuum:I

    const/16 v19, 0x11

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_smart_home:I

    const/16 v19, 0x12

    aput v14, v0, v19

    sget v14, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_printer:I

    const/16 v19, 0x13

    aput v14, v0, v19

    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_level_u:I

    const/16 v20, 0x14

    aput v19, v0, v20

    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_stereo:I

    const/16 v20, 0x15

    aput v19, v0, v20

    const/16 v19, 0x16

    aput v7, v0, v19

    const/16 v19, 0x17

    aput v12, v0, v19

    sget v12, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_samsung_connect:I

    const/16 v19, 0x18

    aput v12, v0, v19

    sget v12, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_camera:I

    const/16 v19, 0x19

    aput v12, v0, v19

    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_camcorder:I

    const/16 v20, 0x1a

    aput v19, v0, v20

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    new-array v0, v15, [I

    .line 110
    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_pc_desktop:I

    aput v19, v0, v2

    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_mouse:I

    aput v19, v0, v4

    sget v19, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_game_device:I

    aput v19, v0, v5

    sget v20, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_keyboard:I

    aput v20, v0, v6

    sget v21, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_soundbar:I

    aput v21, v0, v8

    sget v22, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_av360r7:I

    aput v22, v0, v9

    sget v22, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_bluray_player:I

    aput v22, v0, v11

    sget v22, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_mono:I

    const/16 v18, 0x7

    aput v22, v0, v18

    const/16 v16, 0x8

    aput v10, v0, v16

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    new-array v0, v13, [I

    aput v3, v0, v2

    aput v20, v0, v4

    aput v14, v0, v5

    aput v12, v0, v6

    .line 122
    sget v2, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_storage:I

    aput v2, v0, v8

    sget v2, Lcom/android/settings/R$drawable;->sec_wifidirect_list_ic_network_infra:I

    aput v2, v0, v9

    aput v7, v0, v11

    const/4 v2, 0x7

    aput v21, v0, v2

    const/16 v2, 0x8

    aput v19, v0, v2

    aput v1, v0, v15

    aput v10, v0, v17

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5

    .line 171
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 177
    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    const v1, 0xff00

    and-int/2addr p2, v1

    shr-int/2addr p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    .line 179
    :goto_0
    sget v1, Lcom/android/settings/R$layout;->sec_wifi_p2p_custom_preference:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p2, v3, :cond_7

    const/16 v4, 0x1b

    if-gt p2, v4, :cond_7

    .line 182
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    sub-int/2addr p2, v3

    aget p2, v4, p2

    iput p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    .line 183
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    const/16 v4, 0x401

    if-eq p2, v4, :cond_6

    const/16 p1, 0x704

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1502

    if-eq p2, p1, :cond_4

    const/16 p1, 0x1601

    if-eq p2, p1, :cond_3

    const/16 p1, 0x701

    if-eq p2, p1, :cond_2

    const/16 p1, 0x702

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 194
    :pswitch_0
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 p2, 0x3

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 191
    :pswitch_1
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 188
    :pswitch_2
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 200
    :cond_1
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 197
    :cond_2
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget p1, p1, v1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 209
    :cond_3
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget p1, p1, v0

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 206
    :cond_4
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 p2, 0x7

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 203
    :cond_5
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 p2, 0x6

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 185
    :cond_6
    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget p1, p2, p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_2

    .line 215
    :cond_7
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz p2, :cond_c

    const-string v0, "-"

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 217
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 219
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_1

    .line 221
    :cond_8
    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_1

    .line 223
    :cond_9
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    const/16 p1, 0x10

    .line 225
    invoke-static {p2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_1

    .line 227
    :cond_a
    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 230
    :goto_1
    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result p2

    if-lt p1, p2, :cond_b

    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result p2

    if-gt p1, p2, :cond_b

    .line 231
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sub-int/2addr p2, v3

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    .line 233
    :cond_b
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result p2

    sub-int/2addr p2, v3

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_2

    :cond_c
    const-string p1, "WifiP2pPeer"

    const-string p2, "Malformed primaryDeviceType"

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result p2

    sub-int/2addr p2, v3

    aget p1, p1, p2

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x501
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 5

    .line 297
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->wifi_p2p_status:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v2, 0x3ebd70a4    # 0.37f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->wifi_p2p_preference_title_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    sget v1, Lcom/android/settings/R$string;->sec_wifi_p2p_connecting:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    sget v1, Lcom/android/settings/R$string;->sec_wifi_p2p_tap_to_cancel_connect:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_wifi_p2p_highlight_text_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    sget v1, Lcom/android/settings/R$string;->sec_wifi_p2p_tap_to_disconnect:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 322
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->wifi_p2p_preference_title_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 327
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 328
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private setSecondSummary(I)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 3

    .line 273
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v0, :cond_1

    .line 278
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 281
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 284
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v0, v2, :cond_3

    if-ge v0, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    .line 289
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 290
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 293
    :cond_4
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x1020016

    .line 251
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    .line 252
    sget v0, Lcom/android/settings/R$id;->second_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    .line 258
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setTalkback(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    return-void
.end method
