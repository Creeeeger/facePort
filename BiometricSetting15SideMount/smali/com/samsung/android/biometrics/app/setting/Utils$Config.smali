.class public abstract Lcom/samsung/android/biometrics/app/setting/Utils$Config;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final FACE_FEATURE_POSE_ENROLL:Z

.field public static final FEATURE_CONFIG_CONTROL_AUTO_BRIGHTNESS:Ljava/lang/String;

.field public static FEATURE_FACE_HAL:Z

.field public static final FEATURE_JDM_HAL:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_AOD_TRANSITION_ANIMATION:Z

.field public static final FEATURE_SUPPORT_BP_IN_COVER_SCREEN:Z

.field public static final FEATURE_SUPPORT_DESKTOP_MODE:Z

.field public static final FEATURE_SUPPORT_DISABLED_MENU_K05:Z

.field public static final FEATURE_SUPPORT_DISPLAY_SEAMLESS_MODE:Z

.field public static final FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

.field public static final FEATURE_SUPPORT_DUAL_DISPLAY:Z

.field public static final FEATURE_SUPPORT_SPEN:Z

.field public static final FEATURE_SUPPORT_TASKBAR:Z

.field public static final FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_LOCAL_HBM:Z

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_REAR:Z

.field public static final FP_FEATURE_SENSOR_IS_SIDE:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static final SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEVICE_MANUFACTURING_TYPE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "jdm"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-lez v1, :cond_0

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v3

    .line 48
    :goto_0
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    .line 49
    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "aodversion"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sput-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 79
    .line 80
    const-string v5, "ultrasonic"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    sput-boolean v5, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 87
    .line 88
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 89
    .line 90
    const-string v5, "powerkey"

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_2

    .line 97
    .line 98
    const-string v5, "side"

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v5, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    :goto_1
    move v5, v2

    .line 110
    :goto_2
    sput-boolean v5, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_SIDE:Z

    .line 111
    .line 112
    const-string v5, "rear"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    sput-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_REAR:Z

    .line 119
    .line 120
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const-string v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-lt v4, v2, :cond_3

    .line 131
    .line 132
    move v4, v2

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    move v4, v3

    .line 135
    :goto_3
    sput-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 136
    .line 137
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_TSP_BLOCK:Z

    .line 138
    .line 139
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 140
    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_LOCAL_HBM"

    .line 146
    .line 147
    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v1, v2, :cond_4

    .line 152
    .line 153
    move v1, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move v1, v3

    .line 156
    :goto_4
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 157
    .line 158
    xor-int/2addr v0, v2

    .line 159
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FACE_FEATURE_POSE_ENROLL:Z

    .line 160
    .line 161
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISABLED_MENU_K05:Z

    .line 172
    .line 173
    const-string v0, "15"

    .line 174
    .line 175
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 188
    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_TASKBAR:Z

    .line 200
    .line 201
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_CONFIG_CONTROL_AUTO_BRIGHTNESS:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_HFR_MODE"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const/4 v1, 0x2

    .line 224
    if-ne v0, v1, :cond_5

    .line 225
    .line 226
    move v0, v2

    .line 227
    goto :goto_5

    .line 228
    :cond_5
    move v0, v3

    .line 229
    :goto_5
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISPLAY_SEAMLESS_MODE:Z

    .line 230
    .line 231
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_BP_IN_COVER_SCREEN:Z

    .line 242
    .line 243
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD_TRANSITION_ANIMATION:Z

    .line 244
    .line 245
    const-string v0, "vendor.display.enable_brightness_drm_prop"

    .line 246
    .line 247
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_6
    move v2, v3

    .line 255
    :goto_6
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    .line 256
    .line 257
    return-void
.end method
