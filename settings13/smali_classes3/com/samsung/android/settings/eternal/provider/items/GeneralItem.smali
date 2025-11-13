.class public Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;
.super Ljava/lang/Object;
.source "GeneralItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final EMPTY_VALUE:Ljava/lang/String;

.field private final HOURS_24:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GeneralItem"

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->TAG:Ljava/lang/String;

    const-string v0, "dummy"

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->EMPTY_VALUE:Ljava/lang/String;

    const-string v0, "24"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->HOURS_24:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 9

    const-string p0, "GeneralItem"

    .line 88
    new-instance p3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "/Settings/General/MouseSecondaryKey"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "/Settings/General/AdditionalKey2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "/Settings/General/AdditionalKey1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "/Settings/General/Autofill"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "/Settings/General/AutoTime"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "/Settings/General/RedirectVibration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v6

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "/Settings/General/PrimaryMouseKey"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "/Settings/General/PointerSpeed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "/Settings/General/PointerColor"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "/Settings/General/AutoTimeZone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "/Settings/General/EnhancePointerPrecision"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "/Settings/General/ShowOnScreenKeyboard"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v3, "/Settings/General/PointerSize"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :sswitch_d
    const-string v3, "/Settings/General/WheelScrollingSpeed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :sswitch_e
    const-string v3, "/Settings/General/ChangeLanguageShortcut"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v7

    goto :goto_0

    :sswitch_f
    const-string v3, "/Settings/General/MouseMiddleKey"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_10
    const-string v3, "/Settings/General/LocationTimeZoneDetection"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_11
    const-string v3, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_12
    const-string v3, "/Settings/General/TimeFormat"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_13
    const-string v3, "/Settings/General/SystemLocale"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/16 v1, 0x9

    :cond_0
    :goto_0
    const-string v3, "dummy"

    const-string v8, "appComponent"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_10

    .line 227
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->mouse_pointer_color_array:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    const-string p2, "mouse_pointer_color"

    .line 228
    aget v1, p1, v2

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 229
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 230
    aget p1, p1, v2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    .line 231
    :goto_1
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_1
    const-string p1, "mouse_pointer_size_step"

    .line 221
    invoke-static {v0, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v7, p1, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    .line 224
    :goto_2
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_2
    const-string p1, "enhance_pointer_precision"

    .line 215
    invoke-static {v0, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 216
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v7, p1, :cond_3

    goto :goto_3

    :cond_3
    move v7, v2

    .line 218
    :goto_3
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_3
    const-string p1, "mouse_scrolling_speed"

    .line 209
    invoke-static {v0, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 210
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v7, p1, :cond_4

    goto :goto_4

    :cond_4
    move v7, v2

    .line 212
    :goto_4
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_4
    const-string p1, "pointer_speed"

    .line 203
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    move v7, v2

    .line 206
    :goto_5
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_5
    const-string p1, "mouse_additional_2_option"

    .line 193
    invoke-static {v0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string p2, "mouse_additional_2_app"

    .line 195
    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 197
    invoke-virtual {p3, v8, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_6
    if-ne v4, p1, :cond_7

    goto :goto_6

    :cond_7
    move v7, v2

    .line 200
    :goto_6
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_6
    const-string p1, "mouse_additional_1_option"

    .line 183
    invoke-static {v0, p1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string p2, "mouse_additional_1_app"

    .line 185
    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    invoke-virtual {p3, v8, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_8
    if-ne v6, p1, :cond_9

    goto :goto_7

    :cond_9
    move v7, v2

    .line 190
    :goto_7
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_7
    const-string p1, "mouse_middle_button_option"

    .line 173
    invoke-static {v0, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string p2, "mouse_middle_button_app"

    .line 175
    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 177
    invoke-virtual {p3, v8, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_a
    if-ne v5, p1, :cond_b

    goto :goto_8

    :cond_b
    move v7, v2

    .line 180
    :goto_8
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_8
    const-string p1, "mouse_secondary_button_option"

    .line 163
    invoke-static {v0, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string p2, "mouse_secondary_button_app"

    .line 165
    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 167
    invoke-virtual {p3, v8, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_c
    if-ne v7, p1, :cond_d

    goto :goto_9

    :cond_d
    move v7, v2

    .line 170
    :goto_9
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_9
    const-string p1, "primary_mouse_button_option"

    .line 157
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p1, :cond_e

    goto :goto_a

    :cond_e
    move v7, v2

    .line 160
    :goto_a
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_a
    const-string p1, "system_locales"

    .line 146
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 148
    invoke-virtual {p3, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 149
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    .line 151
    :cond_f
    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 152
    invoke-virtual {p3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_b
    const-string p1, "location_time_zone_detection_enabled"

    .line 140
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    move v7, v2

    .line 143
    :goto_b
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_c
    const-string p1, "vibrate_input_devices"

    .line 134
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p1, :cond_11

    goto :goto_c

    :cond_11
    move v7, v2

    .line 137
    :goto_c
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_d
    const-string p1, "auto_time_zone"

    .line 128
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v7, p1, :cond_12

    goto :goto_d

    :cond_12
    move v7, v2

    .line 131
    :goto_d
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_e
    const-string p1, "auto_time"

    .line 122
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v7, p1, :cond_13

    goto :goto_e

    :cond_13
    move v7, v2

    .line 125
    :goto_e
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_11

    :pswitch_f
    const-string p1, "time_12_24"

    .line 117
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    :pswitch_10
    const-string p1, "autofill_service"

    .line 109
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 111
    invoke-virtual {p3, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    .line 113
    :cond_14
    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    :pswitch_11
    const-string p1, "show_ime_with_hard_keyboard"

    .line 104
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p1, :cond_15

    goto :goto_f

    :cond_15
    move v7, v2

    .line 106
    :goto_f
    invoke-virtual {p3, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    :pswitch_12
    const-string p1, "enable_language_change_combination_key"

    .line 100
    invoke-static {v0, p1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    :pswitch_13
    const-string p1, "show_keyboard_button"

    .line 96
    invoke-static {v0, p1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_11

    .line 234
    :goto_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown key : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_11

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e107c13 -> :sswitch_13
        -0x74f84f58 -> :sswitch_12
        -0x6cbf5626 -> :sswitch_11
        -0x6928e4cd -> :sswitch_10
        -0x65582517 -> :sswitch_f
        -0x486aaaee -> :sswitch_e
        -0x3d0f6777 -> :sswitch_d
        0x22f94da -> :sswitch_c
        0x9fd8bd3 -> :sswitch_b
        0x16f3848b -> :sswitch_a
        0x3104956c -> :sswitch_9
        0x42e415aa -> :sswitch_8
        0x43c5e68e -> :sswitch_7
        0x51584698 -> :sswitch_6
        0x59a7ee12 -> :sswitch_5
        0x63b9cda0 -> :sswitch_4
        0x63c1fc36 -> :sswitch_3
        0x73cb53fd -> :sswitch_2
        0x73cb53fe -> :sswitch_1
        0x79d94d8c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setKeyCustomization(ILjava/lang/String;)V
    .locals 2

    .line 442
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x2f

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    .line 446
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 447
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->setKeyCustomizationInfo(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ","

    const-string v5, "time_12_24"

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 277
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 278
    new-instance v8, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v8, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 279
    sget-object v9, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v9}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 283
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0xb

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/16 v15, 0xc

    const/16 v16, 0x1

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v11, "/Settings/General/MouseSecondaryKey"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v12

    goto/16 :goto_0

    :sswitch_1
    const-string v11, "/Settings/General/AdditionalKey2"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v11, "/Settings/General/AdditionalKey1"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v13

    goto/16 :goto_0

    :sswitch_3
    const-string v11, "/Settings/General/Autofill"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v11, "/Settings/General/AutoTime"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x5

    goto/16 :goto_0

    :sswitch_5
    const-string v11, "/Settings/General/RedirectVibration"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x7

    goto/16 :goto_0

    :sswitch_6
    const-string v11, "/Settings/General/PrimaryMouseKey"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v14

    goto/16 :goto_0

    :sswitch_7
    const-string v11, "/Settings/General/PointerSpeed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v11, "/Settings/General/PointerColor"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string v11, "/Settings/General/AutoTimeZone"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x6

    goto/16 :goto_0

    :sswitch_a
    const-string v11, "/Settings/General/EnhancePointerPrecision"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0x11

    goto :goto_0

    :sswitch_b
    const-string v11, "/Settings/General/ShowOnScreenKeyboard"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :sswitch_c
    const-string v11, "/Settings/General/PointerSize"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0x12

    goto :goto_0

    :sswitch_d
    const-string v11, "/Settings/General/WheelScrollingSpeed"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0x10

    goto :goto_0

    :sswitch_e
    const-string v11, "/Settings/General/ChangeLanguageShortcut"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v9, v16

    goto :goto_0

    :sswitch_f
    const-string v11, "/Settings/General/MouseMiddleKey"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v15

    goto :goto_0

    :sswitch_10
    const-string v11, "/Settings/General/LocationTimeZoneDetection"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v9, 0x8

    goto :goto_0

    :sswitch_11
    const-string v11, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v9, v10

    goto :goto_0

    :sswitch_12
    const-string v11, "/Settings/General/TimeFormat"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :sswitch_13
    const-string v11, "/Settings/General/SystemLocale"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/16 v9, 0x9

    :cond_0
    :goto_0
    const-string v2, "dummy"

    const-string v11, "appComponent"

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    :try_start_1
    const-string v0, "mouse_pointer_color"

    .line 430
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_1
    const-string v0, "mouse_pointer_size_step"

    .line 427
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_2
    const-string v0, "enhance_pointer_precision"

    .line 424
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_3
    const-string v0, "mouse_scrolling_speed"

    .line 421
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_4
    const-string v0, "pointer_speed"

    .line 418
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_5
    const-string v1, "mouse_additional_2_option"

    .line 412
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mouse_additional_2_app"

    .line 414
    invoke-static {v6, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6
    const-string v1, "mouse_additional_1_option"

    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mouse_additional_1_app"

    .line 408
    invoke-static {v6, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7
    const-string v1, "mouse_middle_button_option"

    .line 400
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mouse_middle_button_app"

    .line 402
    invoke-static {v6, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_8
    const-string v1, "mouse_secondary_button_option"

    .line 394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    invoke-virtual {v3, v11}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mouse_secondary_button_app"

    .line 396
    invoke-static {v6, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_9
    const-string v0, "primary_mouse_button_option"

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_a
    const-string v0, "system_locales"

    .line 348
    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 353
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v3, v10

    .line 357
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_5

    move v4, v10

    move v5, v4

    .line 359
    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_3

    .line 360
    aget-object v6, v1, v3

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-gtz v5, :cond_4

    .line 365
    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 378
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 379
    new-array v2, v1, [Ljava/util/Locale;

    move v3, v10

    :goto_4
    if-ge v3, v1, :cond_7

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 383
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 386
    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 387
    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    goto/16 :goto_8

    .line 350
    :cond_8
    :goto_5
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    :pswitch_b
    const-string v0, "location_time_zone_detection_enabled"

    .line 345
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_c
    const-string v0, "vibrate_input_devices"

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_d
    const-string v0, "auto_time_zone"

    .line 339
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_e
    const-string v0, "auto_time"

    .line 336
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 315
    :pswitch_f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 316
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v8, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 317
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    .line 320
    :cond_9
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "24"

    if-eqz v3, :cond_b

    .line 322
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-ne v7, v4, :cond_a

    move/from16 v3, v16

    goto :goto_6

    :cond_a
    move v3, v10

    :goto_6
    xor-int/2addr v2, v3

    if-nez v2, :cond_c

    goto/16 :goto_8

    .line 327
    :cond_b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_8

    .line 331
    :cond_c
    invoke-static {v6, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-ne v7, v4, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v16, v10

    .line 332
    :goto_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 298
    :pswitch_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8

    .line 301
    :cond_e
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "autofill_service"

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 302
    :try_start_3
    invoke-static {v6, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_f
    const-string v0, "/"

    .line 305
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 306
    aget-object v0, v0, v10

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    .line 310
    :cond_10
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 311
    invoke-static {v6, v2, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_11
    const-string v0, "show_ime_with_hard_keyboard"

    .line 295
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_12
    const-string v0, "enable_language_change_combination_key"

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    .line 285
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    const-string v0, "show_keyboard_button"

    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeneralItem"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_12
    :goto_8
    invoke-virtual {v8}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e107c13 -> :sswitch_13
        -0x74f84f58 -> :sswitch_12
        -0x6cbf5626 -> :sswitch_11
        -0x6928e4cd -> :sswitch_10
        -0x65582517 -> :sswitch_f
        -0x486aaaee -> :sswitch_e
        -0x3d0f6777 -> :sswitch_d
        0x22f94da -> :sswitch_c
        0x9fd8bd3 -> :sswitch_b
        0x16f3848b -> :sswitch_a
        0x3104956c -> :sswitch_9
        0x42e415aa -> :sswitch_8
        0x43c5e68e -> :sswitch_7
        0x51584698 -> :sswitch_6
        0x59a7ee12 -> :sswitch_5
        0x63b9cda0 -> :sswitch_4
        0x63c1fc36 -> :sswitch_3
        0x73cb53fd -> :sswitch_2
        0x73cb53fe -> :sswitch_1
        0x79d94d8c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 452
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 456
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
