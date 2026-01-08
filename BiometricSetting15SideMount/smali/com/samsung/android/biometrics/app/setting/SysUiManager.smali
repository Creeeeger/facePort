.class public Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/SemBiometricConstants;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public mClientFactory:Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

.field public final mContext:Landroid/content/Context;

.field public mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public final mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mForegroundToken:Landroid/os/IBinder;

.field public final mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

.field public final mH:Landroid/os/Handler;

.field public final mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

.field public final mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

.field public final mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mForegroundToken:Landroid/os/IBinder;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 14
    .line 15
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    .line 16
    .line 17
    invoke-direct {p3, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    .line 21
    .line 22
    new-instance p3, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p3, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 38
    .line 39
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 40
    .line 41
    iget-object p3, p5, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 42
    .line 43
    invoke-direct {p2, p1, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mClientFactory:Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->createClientFactory()Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mClientFactory:Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mClientFactory:Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mType:I

    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    const-string v4, "BSS_SysUiClientFactoryImpl"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez v3, :cond_8

    .line 30
    .line 31
    and-int/lit16 v3, v2, 0x1000

    .line 32
    .line 33
    if-nez v3, :cond_8

    .line 34
    .line 35
    and-int/lit16 v3, v2, 0x2000

    .line 36
    .line 37
    if-nez v3, :cond_8

    .line 38
    .line 39
    and-int/lit16 v3, v2, 0x4000

    .line 40
    .line 41
    if-nez v3, :cond_8

    .line 42
    .line 43
    const v3, 0x8000

    .line 44
    .line 45
    .line 46
    and-int/2addr v3, v2

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpsSensorInfo:Ljava/util/function/Supplier;

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 58
    .line 59
    iget-boolean v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 60
    .line 61
    if-eqz v3, :cond_6

    .line 62
    .line 63
    and-int/lit8 v3, v2, 0x1

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    and-int/lit8 v3, v2, 0x2

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    and-int/lit8 v3, v2, 0x4

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    and-int/lit8 v3, v2, 0x40

    .line 76
    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    :cond_2
    const/16 v2, 0x40

    .line 80
    .line 81
    iget v11, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mType:I

    .line 82
    .line 83
    if-ne v11, v2, :cond_3

    .line 84
    .line 85
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;

    .line 86
    .line 87
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 90
    .line 91
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetAddedSensorWindow:Ljava/util/function/Supplier;

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    move-object/from16 v20, v5

    .line 98
    .line 99
    check-cast v20, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 100
    .line 101
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpsSensorInfo:Ljava/util/function/Supplier;

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 108
    .line 109
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mSensorIconVisibilityHandler:Ljava/util/function/Consumer;

    .line 110
    .line 111
    iget v14, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 112
    .line 113
    iget v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 114
    .line 115
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mDsm:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 118
    .line 119
    move-object v12, v2

    .line 120
    move-object v13, v3

    .line 121
    move-object/from16 v16, p2

    .line 122
    .line 123
    move-object/from16 v17, v4

    .line 124
    .line 125
    move-object/from16 v18, v1

    .line 126
    .line 127
    move-object/from16 v19, v0

    .line 128
    .line 129
    move-object/from16 v21, v5

    .line 130
    .line 131
    move-object/from16 v22, v6

    .line 132
    .line 133
    invoke-direct/range {v12 .. v22}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;

    .line 137
    .line 138
    invoke-direct {v1, v3, v2, v5, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollClient;->mEnrollWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsEnrollSensorWindow;

    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_3
    const/4 v2, 0x4

    .line 146
    if-ne v11, v2, :cond_4

    .line 147
    .line 148
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 149
    .line 150
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 153
    .line 154
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetAddedSensorWindow:Ljava/util/function/Supplier;

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    move-object/from16 v20, v4

    .line 161
    .line 162
    check-cast v20, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 163
    .line 164
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpsSensorInfo:Ljava/util/function/Supplier;

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    move-object/from16 v21, v4

    .line 171
    .line 172
    check-cast v21, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 173
    .line 174
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mSensorIconVisibilityHandler:Ljava/util/function/Consumer;

    .line 175
    .line 176
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpServiceProvider:Ljava/util/function/Supplier;

    .line 177
    .line 178
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    move-object/from16 v23, v5

    .line 183
    .line 184
    check-cast v23, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 185
    .line 186
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetPowerServiceProvider:Ljava/util/function/Supplier;

    .line 187
    .line 188
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    move-object/from16 v24, v5

    .line 193
    .line 194
    check-cast v24, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 195
    .line 196
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mDsm:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 199
    .line 200
    iget v14, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 201
    .line 202
    iget v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 203
    .line 204
    move-object v12, v2

    .line 205
    move-object/from16 v16, p2

    .line 206
    .line 207
    move-object/from16 v17, v3

    .line 208
    .line 209
    move-object/from16 v18, v5

    .line 210
    .line 211
    move-object/from16 v19, v0

    .line 212
    .line 213
    move-object/from16 v22, v4

    .line 214
    .line 215
    invoke-direct/range {v12 .. v24}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_4

    .line 219
    .line 220
    :cond_4
    const/4 v2, 0x2

    .line 221
    if-ne v11, v2, :cond_5

    .line 222
    .line 223
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;

    .line 224
    .line 225
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 228
    .line 229
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetAddedSensorWindow:Ljava/util/function/Supplier;

    .line 230
    .line 231
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    move-object/from16 v20, v4

    .line 236
    .line 237
    check-cast v20, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 238
    .line 239
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpsSensorInfo:Ljava/util/function/Supplier;

    .line 240
    .line 241
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    move-object/from16 v21, v4

    .line 246
    .line 247
    check-cast v21, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 248
    .line 249
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mSensorIconVisibilityHandler:Ljava/util/function/Consumer;

    .line 250
    .line 251
    iget-boolean v5, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mRequireTouchBlock:Z

    .line 252
    .line 253
    iget-object v6, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mDsm:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 256
    .line 257
    iget v14, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 258
    .line 259
    iget v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 260
    .line 261
    move-object v12, v2

    .line 262
    move-object/from16 v16, p2

    .line 263
    .line 264
    move-object/from16 v17, v3

    .line 265
    .line 266
    move-object/from16 v18, v6

    .line 267
    .line 268
    move-object/from16 v19, v0

    .line 269
    .line 270
    move-object/from16 v22, v4

    .line 271
    .line 272
    move/from16 v23, v5

    .line 273
    .line 274
    invoke-direct/range {v12 .. v23}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Ljava/util/function/Consumer;Z)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_5
    new-instance v9, Landroid/hardware/biometrics/PromptInfo;

    .line 280
    .line 281
    invoke-direct {v9}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    const v4, 0x7f100164

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v9, v3}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 297
    .line 298
    const v4, 0x7f100163

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v9, v3}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v9, v5}, Landroid/hardware/biometrics/PromptInfo;->setIsForLegacyFingerprintManager(I)V

    .line 309
    .line 310
    .line 311
    new-instance v10, Landroid/os/Bundle;

    .line 312
    .line 313
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v3, "KEY_AVAILABILITY_BIOMETRIC"

    .line 317
    .line 318
    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    new-instance v19, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 322
    .line 323
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 324
    .line 325
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 326
    .line 327
    iget-wide v13, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mOpId:J

    .line 328
    .line 329
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 330
    .line 331
    move-object/from16 v7, v19

    .line 332
    .line 333
    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/os/Bundle;IIJLjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 337
    .line 338
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 339
    .line 340
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 341
    .line 342
    .line 343
    move-result-object v16

    .line 344
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 345
    .line 346
    iget v14, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 347
    .line 348
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 349
    .line 350
    move-object v12, v2

    .line 351
    move-object/from16 v15, p2

    .line 352
    .line 353
    move-object/from16 v17, v0

    .line 354
    .line 355
    move-object/from16 v18, v1

    .line 356
    .line 357
    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :cond_6
    const/high16 v3, 0x10000

    .line 363
    .line 364
    and-int/2addr v3, v2

    .line 365
    if-eqz v3, :cond_7

    .line 366
    .line 367
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 368
    .line 369
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    iget-object v13, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 376
    .line 377
    iget-object v14, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 378
    .line 379
    iget v9, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 380
    .line 381
    iget v10, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 382
    .line 383
    move-object v7, v2

    .line 384
    move-object/from16 v11, p2

    .line 385
    .line 386
    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;-><init>(Landroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_4

    .line 390
    .line 391
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v5, "createClient: Unknown type "

    .line 394
    .line 395
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl$1;

    .line 409
    .line 410
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 411
    .line 412
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    iget-object v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 417
    .line 418
    iget v9, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 419
    .line 420
    iget-object v13, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 421
    .line 422
    move-object v7, v2

    .line 423
    move-object/from16 v10, p2

    .line 424
    .line 425
    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_4

    .line 429
    .line 430
    :cond_8
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 431
    .line 432
    if-nez v2, :cond_9

    .line 433
    .line 434
    new-instance v2, Landroid/hardware/biometrics/PromptInfo;

    .line 435
    .line 436
    invoke-direct {v2}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 437
    .line 438
    .line 439
    :cond_9
    move-object v9, v2

    .line 440
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 441
    .line 442
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 443
    .line 444
    iget-object v10, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 445
    .line 446
    iget-wide v13, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mOpId:J

    .line 447
    .line 448
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 449
    .line 450
    iget v11, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mType:I

    .line 451
    .line 452
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 453
    .line 454
    move-object v7, v2

    .line 455
    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/os/Bundle;IIJLjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isCheckToEnrollMode()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-eqz v3, :cond_a

    .line 463
    .line 464
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;

    .line 465
    .line 466
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 467
    .line 468
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 473
    .line 474
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 475
    .line 476
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 477
    .line 478
    move-object v10, v3

    .line 479
    move-object/from16 v13, p2

    .line 480
    .line 481
    move-object/from16 v16, v0

    .line 482
    .line 483
    move-object/from16 v17, v2

    .line 484
    .line 485
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 486
    .line 487
    .line 488
    :goto_1
    move-object v2, v3

    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-eqz v3, :cond_c

    .line 496
    .line 497
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 498
    .line 499
    if-eqz v3, :cond_b

    .line 500
    .line 501
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;

    .line 502
    .line 503
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 510
    .line 511
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 512
    .line 513
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 514
    .line 515
    move-object v10, v3

    .line 516
    move-object/from16 v13, p2

    .line 517
    .line 518
    move-object/from16 v16, v0

    .line 519
    .line 520
    move-object/from16 v17, v2

    .line 521
    .line 522
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 523
    .line 524
    .line 525
    goto :goto_1

    .line 526
    :cond_b
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsSecureFolder:Z

    .line 527
    .line 528
    if-eqz v3, :cond_c

    .line 529
    .line 530
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;

    .line 531
    .line 532
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 533
    .line 534
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 539
    .line 540
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 541
    .line 542
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 543
    .line 544
    move-object v10, v3

    .line 545
    move-object/from16 v13, p2

    .line 546
    .line 547
    move-object/from16 v16, v0

    .line 548
    .line 549
    move-object/from16 v17, v2

    .line 550
    .line 551
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 552
    .line 553
    .line 554
    goto :goto_1

    .line 555
    :cond_c
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_BP_IN_COVER_SCREEN:Z

    .line 556
    .line 557
    if-eqz v3, :cond_f

    .line 558
    .line 559
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-virtual {v3}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    if-eqz v3, :cond_f

    .line 568
    .line 569
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 570
    .line 571
    const-class v7, Landroid/hardware/display/DisplayManager;

    .line 572
    .line 573
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v7

    .line 577
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 578
    .line 579
    if-eqz v7, :cond_e

    .line 580
    .line 581
    const-string v8, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 582
    .line 583
    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    array-length v8, v7

    .line 588
    :goto_2
    if-ge v5, v8, :cond_e

    .line 589
    .line 590
    aget-object v9, v7, v5

    .line 591
    .line 592
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 593
    .line 594
    .line 595
    move-result v10

    .line 596
    const/4 v11, 0x1

    .line 597
    if-ne v10, v11, :cond_d

    .line 598
    .line 599
    goto :goto_3

    .line 600
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 601
    .line 602
    goto :goto_2

    .line 603
    :cond_e
    const-string v5, "getCoverDisplay: No built in display"

    .line 604
    .line 605
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 609
    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 611
    .line 612
    .line 613
    move-result-object v9

    .line 614
    :goto_3
    invoke-virtual {v3, v9}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 615
    .line 616
    .line 617
    move-result-object v11

    .line 618
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCoverClient;

    .line 619
    .line 620
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 621
    .line 622
    .line 623
    move-result-object v14

    .line 624
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 625
    .line 626
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 627
    .line 628
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 629
    .line 630
    move-object v10, v0

    .line 631
    move-object/from16 v13, p2

    .line 632
    .line 633
    move-object/from16 v16, v1

    .line 634
    .line 635
    move-object/from16 v17, v2

    .line 636
    .line 637
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 638
    .line 639
    .line 640
    const-string v1, "BSS_BiometricPromptCoverClient"

    .line 641
    .line 642
    const-string v2, "BiometricPromptCoverClient: "

    .line 643
    .line 644
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    move-object v2, v0

    .line 648
    goto :goto_4

    .line 649
    :cond_f
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 650
    .line 651
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 652
    .line 653
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 654
    .line 655
    .line 656
    move-result-object v14

    .line 657
    iget-object v15, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 658
    .line 659
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 660
    .line 661
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 662
    .line 663
    move-object v10, v3

    .line 664
    move-object/from16 v13, p2

    .line 665
    .line 666
    move-object/from16 v16, v0

    .line 667
    .line 668
    move-object/from16 v17, v2

    .line 669
    .line 670
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;-><init>(Landroid/content/Context;ILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Looper;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_1

    .line 674
    .line 675
    :goto_4
    return-object v2
.end method

.method public createClientFactory()Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;
    .locals 10

    .line 1
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;I)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {v5, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;I)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {v6, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;I)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    move-object v0, v9

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda4;)V

    .line 31
    .line 32
    .line 33
    return-object v9
.end method

.method public destroy()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stopImmediate()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 26
    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 33
    .line 34
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 40
    .line 41
    check-cast v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 47
    .line 48
    check-cast v2, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 64
    .line 65
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 74
    .line 75
    :cond_2
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 76
    .line 77
    const-string v3, "BSS_DisplayStateManager"

    .line 78
    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    const-string v2, "IFingerprintService is NULL"

    .line 82
    .line 83
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintService;->semUnregisterDisplayStateCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "unregisterDisplayStateCallbackForOpt: "

    .line 95
    .line 96
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsOpticalUdfps:Z

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mFileObserve:Landroid/os/FileObserver;

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mFileObserve:Landroid/os/FileObserver;

    .line 125
    .line 126
    :cond_4
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 127
    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 134
    .line 135
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->observe(Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 141
    .line 142
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mListenerList:Ljava/util/List;

    .line 143
    .line 144
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mH:Landroid/os/Handler;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->setProcessForeground(Z)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "handleAuthenticationSucceeded: for non-authentication consumer: "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "BSS_SysUiManager"

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationSucceeded(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public handleBiometricTheme(ILjava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleCalibrationMode(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleCaptureCompleted(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleCaptureStarted(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleCommand(IIILandroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 9
    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_0
    const/16 v3, 0x1f5

    .line 16
    .line 17
    if-eq p2, v3, :cond_d

    .line 18
    .line 19
    const/16 v3, 0x258

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x1

    .line 25
    if-eq p2, v3, :cond_b

    .line 26
    .line 27
    packed-switch p2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    packed-switch p2, :pswitch_data_1

    .line 31
    .line 32
    .line 33
    packed-switch p2, :pswitch_data_2

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :pswitch_0
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 39
    .line 40
    if-eqz p0, :cond_e

    .line 41
    .line 42
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 43
    .line 44
    invoke-interface {v2, v4, p3, v1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationError(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :pswitch_1
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 50
    .line 51
    if-eqz p0, :cond_e

    .line 52
    .line 53
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 54
    .line 55
    invoke-interface {v2, p3, v5, v1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationError(IILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :pswitch_2
    const/16 p2, 0x3ec

    .line 61
    .line 62
    if-eq p3, p2, :cond_3

    .line 63
    .line 64
    const/16 p4, 0x3ed

    .line 65
    .line 66
    if-eq p3, p4, :cond_3

    .line 67
    .line 68
    const/16 p2, 0x2712

    .line 69
    .line 70
    if-eq p3, p2, :cond_2

    .line 71
    .line 72
    const/16 p2, 0x2713

    .line 73
    .line 74
    if-eq p3, p2, :cond_1

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleCaptureCompleted(I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleCaptureStarted(I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_3
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_TSP_BLOCK:Z

    .line 89
    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_4
    if-eqz v0, :cond_e

    .line 95
    .line 96
    if-ne p3, p2, :cond_5

    .line 97
    .line 98
    move v5, v6

    .line 99
    :cond_5
    invoke-virtual {v0, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleTspBlock(Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :pswitch_3
    instance-of p1, v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 105
    .line 106
    if-eqz p1, :cond_e

    .line 107
    .line 108
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p0, p3, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {v2, p3, p0}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationHelp(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_4
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 122
    .line 123
    if-eqz p0, :cond_e

    .line 124
    .line 125
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showFingerIconOnLock()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handlePrepareSession()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :pswitch_6
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 138
    .line 139
    if-eqz p0, :cond_e

    .line 140
    .line 141
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 142
    .line 143
    if-ne p3, v6, :cond_6

    .line 144
    .line 145
    move v5, v6

    .line 146
    :cond_6
    invoke-virtual {v2, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->onBouncerScreen(Z)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :pswitch_7
    const-string p1, "BSS_DisplayStateManager"

    .line 152
    .line 153
    if-ne p3, v6, :cond_8

    .line 154
    .line 155
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 161
    .line 162
    if-eqz p2, :cond_7

    .line 163
    .line 164
    const-string p2, "onScreenOnFromKeyguard"

    .line 165
    .line 166
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_7
    const/4 p1, 0x2

    .line 170
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplayStateFromKeyguard:I

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 183
    .line 184
    if-eqz p2, :cond_9

    .line 185
    .line 186
    const-string p2, "onScreenOffFromKeyguard"

    .line 187
    .line 188
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_9
    iput v6, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplayStateFromKeyguard:I

    .line 192
    .line 193
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 194
    .line 195
    if-ne p1, v6, :cond_a

    .line 196
    .line 197
    invoke-virtual {p0, v6}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_e

    .line 206
    .line 207
    const/16 p1, 0x3e9

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :pswitch_8
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 214
    .line 215
    if-eqz p0, :cond_e

    .line 216
    .line 217
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 218
    .line 219
    const-string p0, "x"

    .line 220
    .line 221
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    const-string p1, "y"

    .line 226
    .line 227
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->moveSensorIcon(II)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :pswitch_9
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;

    .line 236
    .line 237
    if-eqz p0, :cond_e

    .line 238
    .line 239
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;

    .line 240
    .line 241
    iget-object p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 242
    .line 243
    if-eqz p0, :cond_e

    .line 244
    .line 245
    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->hideSensorIcon(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :pswitch_a
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;

    .line 250
    .line 251
    if-eqz p0, :cond_e

    .line 252
    .line 253
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;

    .line 254
    .line 255
    iget-object p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mBaseSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 256
    .line 257
    if-eqz p0, :cond_e

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->showSensorIcon()V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_b
    instance-of p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 264
    .line 265
    if-eqz p0, :cond_e

    .line 266
    .line 267
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 268
    .line 269
    iget-object p0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;->mCalWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;

    .line 270
    .line 271
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 272
    .line 273
    if-eqz p1, :cond_c

    .line 274
    .line 275
    const p2, 0x7f1000cf

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 279
    .line 280
    .line 281
    :cond_c
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    .line 282
    .line 283
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 284
    .line 285
    .line 286
    iget-object p0, v2, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 287
    .line 288
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    invoke-direct {p1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;)V

    .line 291
    .line 292
    .line 293
    const-wide/16 p2, 0x5dc

    .line 294
    .line 295
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_d
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleCalibrationMode(IILandroid/os/Bundle;)V

    .line 300
    .line 301
    .line 302
    :cond_e
    :goto_1
    return-void

    .line 303
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :pswitch_data_1
    .packed-switch 0x75
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BSS_SysUiManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnTaskStackListener(II)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 29
    .line 30
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 31
    .line 32
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleCommand(IIILandroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 50
    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 56
    .line 57
    instance-of v2, p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 62
    .line 63
    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationError(IILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 68
    .line 69
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 70
    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 76
    .line 77
    instance-of v2, p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 82
    .line 83
    const/4 v2, 0x6

    .line 84
    if-ne v0, v2, :cond_0

    .line 85
    .line 86
    move v0, v1

    .line 87
    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationHelp(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Ljava/lang/String;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 96
    .line 97
    instance-of v0, p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 98
    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;

    .line 102
    .line 103
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/AuthenticationConsumer;->onAuthenticationFailed(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationSucceeded(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 118
    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 122
    .line 123
    if-ne v0, p1, :cond_1

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 132
    .line 133
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;

    .line 136
    .line 137
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 140
    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleShow(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 145
    .line 146
    .line 147
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 148
    return p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public handleOnClientStarted()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleOnTaskStackListener(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleOnTaskStackListener(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public handlePrepareSession()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleShow(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleClientError()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stopImmediate()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "new Client from "

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "BSS_SysUiManager"

    .line 49
    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 54
    .line 55
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start(Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 20
    .line 21
    iput-object v3, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 22
    .line 23
    :cond_0
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBioSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 31
    .line 32
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 41
    .line 42
    :cond_1
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 43
    .line 44
    const-string v3, "BSS_DisplayStateManager"

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    const-string v1, "IFingerprintService is NULL"

    .line 49
    .line 50
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :try_start_0
    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->semRegisterDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, "registerDisplayStateCallbackForOpt: "

    .line 62
    .line 63
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 81
    .line 82
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    const-class v4, Landroid/hardware/display/DisplayManager;

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 95
    .line 96
    iput-object v2, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 97
    .line 98
    :cond_3
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_4

    .line 106
    .line 107
    const-string v1, "default display is NULL"

    .line 108
    .line 109
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :goto_1
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 118
    .line 119
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->updateDisplayState()V

    .line 122
    .line 123
    .line 124
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsOpticalUdfps:Z

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mFileObserve:Landroid/os/FileObserver;

    .line 134
    .line 135
    if-nez v1, :cond_6

    .line 136
    .line 137
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;

    .line 138
    .line 139
    new-instance v2, Ljava/io/File;

    .line 140
    .line 141
    const-string v3, "/sys/class/lcd/panel/actual_mask_brightness"

    .line 142
    .line 143
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$2;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mFileObserve:Landroid/os/FileObserver;

    .line 150
    .line 151
    :cond_6
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mFileObserve:Landroid/os/FileObserver;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 159
    .line 160
    check-cast v1, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 169
    .line 170
    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;

    .line 176
    .line 177
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;->observe(Lcom/samsung/android/biometrics/app/setting/SysUiManager$$ExternalSyntheticLambda3;)V

    .line 183
    .line 184
    .line 185
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->IS_DEBUG_LEVEL_MID_OR_HIGH:Z

    .line 186
    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/os/Looper;->setPerfLogEnable()V

    .line 196
    .line 197
    .line 198
    const-wide/16 v1, 0x64

    .line 199
    .line 200
    const-wide/16 v3, 0x12c

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 203
    .line 204
    .line 205
    :cond_9
    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->setProcessForeground(Z)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->updateSensorInfo()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public onDisplayStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->onDisplayStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRotationStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onRotationInfoChanged(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final setProcessForeground(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setProcessForeground: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_SysUiManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mForegroundToken:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "BiometricSystemUiService"

    .line 31
    .line 32
    invoke-interface {v0, p0, v2, p1, v3}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "setProcessForeground: failed "

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
