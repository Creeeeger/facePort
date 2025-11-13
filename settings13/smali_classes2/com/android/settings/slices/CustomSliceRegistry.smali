.class public Lcom/android/settings/slices/CustomSliceRegistry;
.super Ljava/lang/Object;
.source "CustomSliceRegistry.java"


# static fields
.field public static final ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

.field public static final BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

.field public static final BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

.field public static final BLUETOOTH_URI:Landroid/net/Uri;

.field public static final CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

.field public static final CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

.field public static final DARK_THEME_SLICE_URI:Landroid/net/Uri;

.field public static final ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

.field public static final FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

.field public static final FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

.field public static final LOCATION_SLICE_URI:Landroid/net/Uri;

.field public static final LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

.field public static MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

.field public static final MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

.field public static final NFC_FAVER3_SLICE_URI:Landroid/net/Uri;

.field public static final NFC_SLICE_URI:Landroid/net/Uri;

.field public static final PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

.field public static REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

.field public static final TURN_ON_WIFI_SLICE_URI:Landroid/net/Uri;

.field public static final VOLUME_ALARM_URI:Landroid/net/Uri;

.field public static final VOLUME_CALL_URI:Landroid/net/Uri;

.field public static final VOLUME_MEDIA_URI:Landroid/net/Uri;

.field public static final VOLUME_RINGER_URI:Landroid/net/Uri;

.field public static final VOLUME_SLICES_URI:Landroid/net/Uri;

.field public static final WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

.field public static final WIFI_CALLING_URI:Landroid/net/Uri;

.field public static final WIFI_SLICE_URI:Landroid/net/Uri;

.field public static final ZEN_MODE_SLICE_URI:Landroid/net/Uri;

.field static final sUriToSlice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/CustomSliceable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 60
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.android.settings.slices"

    .line 62
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "intent"

    .line 63
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v4, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->PREF_NAME:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_ADAPTIVE_SLEEP_URI:Landroid/net/Uri;

    .line 70
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 71
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "battery_tip"

    .line 74
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->BATTERY_FIX_SLICE_URI:Landroid/net/Uri;

    .line 80
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 81
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "android.settings.slices"

    .line 82
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "action"

    .line 83
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "bluetooth"

    .line 84
    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    .line 90
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 91
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "bluetooth_devices"

    .line 94
    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    .line 100
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 101
    invoke-virtual {v8, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 102
    invoke-virtual {v8, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 103
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "contextual_wifi"

    .line 104
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    sput-object v8, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    .line 109
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    .line 110
    invoke-virtual {v9, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 111
    invoke-virtual {v9, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 112
    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "enhanced_4g_lte"

    .line 113
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 114
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    sput-object v9, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    .line 118
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    .line 119
    invoke-virtual {v9, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 120
    invoke-virtual {v9, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 121
    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "face_unlock_greeting_card"

    .line 122
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 123
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    sput-object v9, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    .line 127
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 128
    invoke-virtual {v10, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 129
    invoke-virtual {v10, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 130
    invoke-virtual {v10, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "flashlight"

    .line 131
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 132
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    .line 136
    new-instance v11, Landroid/net/Uri$Builder;

    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    .line 137
    invoke-virtual {v11, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 138
    invoke-virtual {v11, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 139
    invoke-virtual {v11, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, "location"

    .line 140
    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 141
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    .line 145
    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    .line 146
    invoke-virtual {v12, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 147
    invoke-virtual {v12, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 148
    invoke-virtual {v12, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "low_storage"

    .line 149
    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 150
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Lcom/android/settings/slices/CustomSliceRegistry;->LOW_STORAGE_SLICE_URI:Landroid/net/Uri;

    .line 154
    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    .line 155
    invoke-virtual {v13, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 156
    invoke-virtual {v13, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 157
    invoke-virtual {v13, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string/jumbo v14, "nfc_settings"

    .line 158
    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 159
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Lcom/android/settings/slices/CustomSliceRegistry;->NFC_SLICE_URI:Landroid/net/Uri;

    .line 163
    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    .line 164
    invoke-virtual {v13, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 165
    invoke-virtual {v13, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 166
    invoke-virtual {v13, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string/jumbo v14, "nfc_osaifukeitai_settings"

    .line 167
    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 168
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Lcom/android/settings/slices/CustomSliceRegistry;->NFC_FAVER3_SLICE_URI:Landroid/net/Uri;

    .line 173
    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    .line 174
    invoke-virtual {v13, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 175
    invoke-virtual {v13, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 176
    invoke-virtual {v13, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string/jumbo v14, "mobile_data"

    .line 177
    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    .line 178
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    .line 183
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 184
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 185
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 186
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "provider_model"

    .line 187
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 188
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->PROVIDER_MODEL_SLICE_URI:Landroid/net/Uri;

    .line 193
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    .line 194
    invoke-virtual {v15, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    .line 195
    invoke-virtual {v15, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    .line 196
    invoke-virtual {v15, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "alarm_volume"

    .line 197
    invoke-virtual {v15, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 198
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_ALARM_URI:Landroid/net/Uri;

    .line 203
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 204
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 205
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 206
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "call_volume"

    .line 207
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 208
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_CALL_URI:Landroid/net/Uri;

    .line 212
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 213
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 214
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 215
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "media_volume"

    .line 216
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 217
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    .line 222
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 223
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 224
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 225
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "ring_volume"

    .line 226
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 227
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_RINGER_URI:Landroid/net/Uri;

    .line 232
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 233
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 234
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 235
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "volume_slices"

    .line 236
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 237
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_SLICES_URI:Landroid/net/Uri;

    .line 242
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 243
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 244
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 245
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "wifi_calling"

    .line 246
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 247
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    .line 251
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 252
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 253
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 254
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "wifi_calling_preference"

    .line 255
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 256
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    .line 260
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 261
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 262
    invoke-virtual {v14, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 263
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v14, "wifi"

    .line 264
    invoke-virtual {v6, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    .line 270
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 271
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 272
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 273
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "zen_mode_toggle"

    .line 274
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 275
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    .line 280
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 281
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 282
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 283
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v14, "media_output_indicator"

    .line 284
    invoke-virtual {v3, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    .line 290
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 291
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v14, "dark_theme"

    .line 294
    invoke-virtual {v3, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    .line 300
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 301
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 302
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 303
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "remote_media"

    .line 304
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 305
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    .line 310
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    .line 311
    invoke-virtual {v14, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 312
    invoke-virtual {v14, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 313
    invoke-virtual {v14, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "always_on_display"

    .line 314
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 315
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    sput-object v14, Lcom/android/settings/slices/CustomSliceRegistry;->ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

    .line 320
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    .line 321
    invoke-virtual {v15, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "turn_on_wifi"

    .line 324
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->TURN_ON_WIFI_SLICE_URI:Landroid/net/Uri;

    .line 331
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->sUriToSlice:Ljava/util/Map;

    .line 333
    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/ContextualAdaptiveSleepSlice;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-class v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-class v0, Lcom/android/settings/flashlight/FlashlightSlice;

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-class v0, Lcom/android/settings/location/LocationSlice;

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    const-class v2, Lcom/android/settings/media/MediaOutputIndicatorSlice;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-class v0, Lcom/android/settings/network/telephony/MobileDataSlice;

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-class v0, Lcom/android/settings/network/ProviderModelSlice;

    move-object/from16 v2, v16

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-class v0, Lcom/android/settings/wifi/slice/WifiSlice;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    const-class v2, Lcom/android/settings/media/RemoteMediaSlice;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-class v0, Lcom/android/settings/display/AlwaysOnDisplaySlice;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSliceClassByUri(Landroid/net/Uri;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/CustomSliceable;",
            ">;"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->sUriToSlice:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/settings/slices/CustomSliceRegistry;->removeParameterFromUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static isValidAction(Ljava/lang/String;)Z
    .locals 0

    .line 371
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static isValidUri(Landroid/net/Uri;)Z
    .locals 1

    .line 363
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->sUriToSlice:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/settings/slices/CustomSliceRegistry;->removeParameterFromUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeParameterFromUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
