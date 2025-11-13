.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSdevice"
.end annotation


# instance fields
.field private final mCategoryPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 16
    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "[Phone] "

    const-string v3, "[Tablet] "

    const-string v4, "[Wearable] "

    const-string v5, "[PC] "

    const-string v6, "[Accessory] "

    const-string v7, "[TV] "

    const-string v8, "[AV] "

    const-string v9, "[Signage] "

    const-string v10, "[Refrigerator] "

    const-string v11, "[Washer] "

    const-string v12, "[Dryer] "

    const-string v13, "[Floor A/C] "

    const-string v14, "[Room A/C] "

    const-string v15, "[System A/C] "

    const-string v16, "[Air Purifier] "

    const-string v17, "[Oven] "

    const-string v18, "[Range] "

    const-string v19, "[Robot Vacuum] "

    const-string v20, "[Smart Home] "

    const-string v21, "[Printer] "

    const-string v22, "[Headphone] "

    const-string v23, "[Speaker] "

    const-string v24, "[Monitor] "

    const-string v25, "[E-Board] "

    const-string v26, "[IoT] "

    const-string v27, "[Camera] "

    const-string v28, "[Camcorder] "

    const-string v29, "[Cooktop] "

    const-string v30, "[Dish Washer] "

    const-string v31, "[Microwave Oven] "

    const-string v32, "[Hood] "

    const-string v33, "[KimchiRef] "

    const-string v34, "[Watch] "

    const-string v35, "[Band] "

    const-string v36, "[Router] "

    const-string v37, "[BD] "

    const-string v38, "[Tag] "

    const-string v39, "[Car] "

    const-string v40, "[Airdresser] "

    const-string v41, "[AI Speaker] "

    filled-new-array/range {v2 .. v41}, [Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceIcon(BB)I
    .locals 2

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    if-eq p2, v1, :cond_0

    .line 234
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return p0

    .line 231
    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_the_wall:I

    return p0

    :pswitch_1
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    .line 226
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker:I

    return p0

    .line 224
    :cond_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker_galaxy_home_mini:I

    return p0

    .line 222
    :cond_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_ai_speaker:I

    return p0

    .line 218
    :pswitch_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_steam_closet:I

    return p0

    .line 216
    :pswitch_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_car:I

    return p0

    :pswitch_4
    if-eq p2, v1, :cond_3

    .line 213
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tag:I

    return p0

    .line 211
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_connect_tag:I

    return p0

    .line 207
    :pswitch_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_blueray_player:I

    return p0

    .line 205
    :pswitch_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_router:I

    return p0

    .line 203
    :pswitch_7
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 201
    :pswitch_8
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 199
    :pswitch_9
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_kimchi_refrigerator:I

    return p0

    .line 197
    :pswitch_a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_hood:I

    return p0

    .line 195
    :pswitch_b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_microwaveoven:I

    return p0

    .line 193
    :pswitch_c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dishwasher:I

    return p0

    .line 191
    :pswitch_d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_cooktop:I

    return p0

    .line 189
    :pswitch_e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return p0

    .line 187
    :pswitch_f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return p0

    .line 185
    :pswitch_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_connect:I

    return p0

    .line 183
    :pswitch_11
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_eboard:I

    return p0

    .line 181
    :pswitch_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    :pswitch_13
    if-eq p2, v1, :cond_4

    .line 178
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    .line 176
    :cond_4
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    :pswitch_14
    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_7

    if-eq p2, p0, :cond_6

    const/4 p0, 0x4

    if-eq p2, p0, :cond_5

    .line 171
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    .line 169
    :cond_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return p0

    .line 167
    :cond_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return p0

    .line 165
    :cond_7
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return p0

    .line 163
    :cond_8
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    .line 159
    :pswitch_15
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return p0

    .line 157
    :pswitch_16
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_smart_home:I

    return p0

    .line 155
    :pswitch_17
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_cleaner:I

    return p0

    .line 153
    :pswitch_18
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_range:I

    return p0

    .line 151
    :pswitch_19
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_oven:I

    return p0

    .line 149
    :pswitch_1a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_air_purifier:I

    return p0

    .line 147
    :pswitch_1b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_system_airconditioner:I

    return p0

    .line 145
    :pswitch_1c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_airconditioner:I

    return p0

    .line 143
    :pswitch_1d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_floor_airconditioner:I

    return p0

    .line 141
    :pswitch_1e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dryer:I

    return p0

    .line 139
    :pswitch_1f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_washer:I

    return p0

    .line 137
    :pswitch_20
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_refrigerator:I

    return p0

    .line 135
    :pswitch_21
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return p0

    :pswitch_22
    if-eq p2, v1, :cond_c

    if-eq p2, v0, :cond_b

    const/4 p0, 0x5

    if-eq p2, p0, :cond_a

    const/4 p0, 0x6

    if-eq p2, p0, :cond_9

    .line 132
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 130
    :cond_9
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return p0

    .line 128
    :cond_a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 126
    :cond_b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_av360r7:I

    return p0

    .line 124
    :cond_c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return p0

    :pswitch_23
    if-eq p2, v1, :cond_f

    if-eq p2, v0, :cond_e

    if-eq p2, p0, :cond_d

    .line 119
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    .line 117
    :cond_d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_the_wall:I

    return p0

    .line 115
    :cond_e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sero_tv:I

    return p0

    .line 113
    :cond_f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    :pswitch_24
    if-eq p2, v1, :cond_12

    if-eq p2, v0, :cond_11

    if-eq p2, p0, :cond_10

    .line 108
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return p0

    .line 106
    :cond_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return p0

    .line 104
    :cond_11
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 102
    :cond_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return p0

    :pswitch_25
    if-eq p2, v1, :cond_14

    if-eq p2, v0, :cond_13

    .line 97
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 95
    :cond_13
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 93
    :cond_14
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_pc:I

    return p0

    .line 89
    :pswitch_26
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 87
    :pswitch_27
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 85
    :pswitch_28
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
