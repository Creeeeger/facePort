.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final csNameUri:Ljava/lang/String;

.field public final opCode:I

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->opCode:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 11
    .line 12
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "UCMAsyncTask csNameUri : "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " opCode : "

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "BSS_UCMAuthCredentialPasswordView"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->opCode:I

    .line 44
    .line 45
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    const/16 v2, 0x84

    .line 5
    .line 6
    move-object/from16 v3, p1

    .line 7
    .line 8
    check-cast v3, [Ljava/lang/String;

    .line 9
    .line 10
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 11
    .line 12
    const-string v5, "BSS_UCMAuthCredentialPasswordView"

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const-string v6, "UCMAsyncTask doInBackground : "

    .line 17
    .line 18
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v6, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v6, :cond_25

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    goto/16 :goto_f

    .line 32
    .line 33
    :cond_1
    iget v6, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->opCode:I

    .line 34
    .line 35
    const-string v8, "com.samsung.ucs.ucsservice"

    .line 36
    .line 37
    const-string v9, "status not null"

    .line 38
    .line 39
    const/16 v11, 0x83

    .line 40
    .line 41
    const-string v13, "failed to get UCM service"

    .line 42
    .line 43
    const-string v14, "com.samsung.android.biometrics.app.setting.prompt.knox.UCMUtils"

    .line 44
    .line 45
    const/4 v15, 0x2

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v12, 0x1

    .line 48
    if-eqz v6, :cond_15

    .line 49
    .line 50
    if-eq v6, v12, :cond_e

    .line 51
    .line 52
    if-eq v6, v15, :cond_2

    .line 53
    .line 54
    goto/16 :goto_b

    .line 55
    .line 56
    :cond_2
    if-eqz v3, :cond_1f

    .line 57
    .line 58
    aget-object v6, v3, v7

    .line 59
    .line 60
    if-eqz v6, :cond_1f

    .line 61
    .line 62
    aget-object v3, v3, v12

    .line 63
    .line 64
    if-eqz v3, :cond_1f

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    const-string v4, "verifyPuk"

    .line 69
    .line 70
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 74
    .line 75
    sget-boolean v5, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    const-string v9, "verifyPUK enterd"

    .line 80
    .line 81
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_4
    new-array v9, v0, [I

    .line 85
    .line 86
    fill-array-data v9, :array_0

    .line 87
    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-lez v16, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v0, 0x0

    .line 105
    :goto_0
    move-object v10, v0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    :goto_1
    if-eqz v5, :cond_6

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v15, "tempPUK : "

    .line 117
    .line 118
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    if-lez v15, :cond_7

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_7
    const/4 v0, 0x0

    .line 151
    :goto_2
    if-eqz v5, :cond_8

    .line 152
    .line 153
    new-instance v15, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v12, "tempPIN : "

    .line 156
    .line 157
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_8
    if-eqz v10, :cond_c

    .line 171
    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_a

    .line 184
    .line 185
    if-eqz v5, :cond_c

    .line 186
    .line 187
    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_a
    :try_start_2
    invoke-interface {v0, v4, v6, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getKeyguardStatusFromServiceResponse(Landroid/os/Bundle;)[I

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    aget v0, v9, v7

    .line 202
    .line 203
    if-eq v0, v2, :cond_b

    .line 204
    .line 205
    if-ne v0, v11, :cond_c

    .line 206
    .line 207
    :cond_b
    aput v7, v9, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :catch_2
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :cond_c
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    aget v3, v9, v2

    .line 220
    .line 221
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 222
    .line 223
    const/4 v2, 0x2

    .line 224
    aget v2, v9, v2

    .line 225
    .line 226
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 227
    .line 228
    aget v2, v9, v7

    .line 229
    .line 230
    if-nez v2, :cond_d

    .line 231
    .line 232
    const v2, 0x10004

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->setState(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 241
    .line 242
    iput v7, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 243
    .line 244
    goto/16 :goto_b

    .line 245
    .line 246
    :cond_d
    const v2, 0x10001

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->setState(I)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 255
    .line 256
    const/16 v2, 0x21

    .line 257
    .line 258
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 259
    .line 260
    goto/16 :goto_b

    .line 261
    .line 262
    :cond_e
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 263
    .line 264
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 265
    .line 266
    iget v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 267
    .line 268
    if-eqz v4, :cond_f

    .line 269
    .line 270
    const-string v4, "getUCMStatus"

    .line 271
    .line 272
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_f
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getUCMUri(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    new-array v4, v0, [I

    .line 280
    .line 281
    fill-array-data v4, :array_1

    .line 282
    .line 283
    .line 284
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sget-boolean v6, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 293
    .line 294
    if-nez v0, :cond_10

    .line 295
    .line 296
    if-eqz v6, :cond_12

    .line 297
    .line 298
    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_10
    :try_start_3
    invoke-interface {v0, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eqz v0, :cond_12

    .line 307
    .line 308
    if-eqz v6, :cond_11

    .line 309
    .line 310
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :catch_3
    move-exception v0

    .line 315
    goto :goto_5

    .line 316
    :cond_11
    :goto_4
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getKeyguardStatusFromServiceResponse(Landroid/os/Bundle;)[I

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v4, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getDataFromServiceResponse([ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .line 326
    .line 327
    :cond_12
    :goto_6
    aget v0, v4, v7

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    aget v6, v4, v3

    .line 331
    .line 332
    const/4 v3, 0x2

    .line 333
    aget v3, v4, v3

    .line 334
    .line 335
    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 336
    .line 337
    const/4 v10, 0x3

    .line 338
    aget v10, v4, v10

    .line 339
    .line 340
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 344
    .line 345
    const/4 v10, 0x4

    .line 346
    aget v10, v4, v10

    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 352
    .line 353
    const/4 v10, 0x5

    .line 354
    aget v10, v4, v10

    .line 355
    .line 356
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    iget-object v9, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 360
    .line 361
    const/4 v10, 0x6

    .line 362
    aget v4, v4, v10

    .line 363
    .line 364
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 368
    .line 369
    iget-object v4, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    sget-boolean v9, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 375
    .line 376
    if-eqz v9, :cond_13

    .line 377
    .line 378
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->printState(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    const-string v12, "state : "

    .line 383
    .line 384
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    :cond_13
    if-eqz v9, :cond_14

    .line 392
    .line 393
    new-instance v9, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v10, "remainCnt : "

    .line 396
    .line 397
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    :cond_14
    iput v6, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 411
    .line 412
    iput v7, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 413
    .line 414
    packed-switch v0, :pswitch_data_0

    .line 415
    .line 416
    .line 417
    const v5, 0x10005

    .line 418
    .line 419
    .line 420
    iput v5, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :pswitch_0
    const v5, 0x10001

    .line 424
    .line 425
    .line 426
    iput v5, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 427
    .line 428
    goto :goto_7

    .line 429
    :pswitch_1
    const/high16 v5, 0x10000

    .line 430
    .line 431
    iput v5, v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 432
    .line 433
    :goto_7
    if-eq v0, v11, :cond_1f

    .line 434
    .line 435
    if-eq v0, v2, :cond_1f

    .line 436
    .line 437
    const/16 v2, 0x85

    .line 438
    .line 439
    if-eq v0, v2, :cond_1f

    .line 440
    .line 441
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 442
    .line 443
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 444
    .line 445
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 446
    .line 447
    goto/16 :goto_b

    .line 448
    .line 449
    :cond_15
    if-eqz v3, :cond_1f

    .line 450
    .line 451
    aget-object v3, v3, v7

    .line 452
    .line 453
    if-eqz v3, :cond_1f

    .line 454
    .line 455
    if-eqz v4, :cond_16

    .line 456
    .line 457
    const-string v4, "verifyPin"

    .line 458
    .line 459
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    :cond_16
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 463
    .line 464
    iget-object v6, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 465
    .line 466
    iget-object v6, v6, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 467
    .line 468
    iget v6, v6, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 469
    .line 470
    sget-boolean v10, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 471
    .line 472
    new-array v10, v0, [I

    .line 473
    .line 474
    fill-array-data v10, :array_2

    .line 475
    .line 476
    .line 477
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    sget-boolean v12, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 486
    .line 487
    if-nez v0, :cond_17

    .line 488
    .line 489
    if-eqz v12, :cond_1b

    .line 490
    .line 491
    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_17
    const/4 v15, 0x0

    .line 496
    :try_start_4
    invoke-interface {v0, v6, v4, v3, v15}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_1b

    .line 501
    .line 502
    if-eqz v12, :cond_18

    .line 503
    .line 504
    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    goto :goto_8

    .line 508
    :catch_4
    move-exception v0

    .line 509
    goto :goto_9

    .line 510
    :cond_18
    :goto_8
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getKeyguardStatusFromServiceResponse(Landroid/os/Bundle;)[I

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    aget v0, v10, v7

    .line 515
    .line 516
    if-eq v0, v11, :cond_1a

    .line 517
    .line 518
    if-eq v0, v2, :cond_19

    .line 519
    .line 520
    if-eqz v12, :cond_1b

    .line 521
    .line 522
    const-string v0, "Mostly has gone to PUK case"

    .line 523
    .line 524
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_19
    if-eqz v12, :cond_1b

    .line 529
    .line 530
    const-string v0, "PIN verfication failed"

    .line 531
    .line 532
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    goto :goto_a

    .line 536
    :cond_1a
    if-eqz v12, :cond_1b

    .line 537
    .line 538
    const-string v0, "PIN verfication succeed"

    .line 539
    .line 540
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 541
    .line 542
    .line 543
    goto :goto_a

    .line 544
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    .line 546
    .line 547
    :cond_1b
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 548
    .line 549
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 550
    .line 551
    const/4 v2, 0x1

    .line 552
    aget v3, v10, v2

    .line 553
    .line 554
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 555
    .line 556
    const/4 v2, 0x2

    .line 557
    aget v2, v10, v2

    .line 558
    .line 559
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 560
    .line 561
    aget v0, v10, v7

    .line 562
    .line 563
    packed-switch v0, :pswitch_data_1

    .line 564
    .line 565
    .line 566
    goto :goto_b

    .line 567
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 568
    .line 569
    if-eqz v0, :cond_1c

    .line 570
    .line 571
    const-string v0, "verifyPin : STATE_BLOCKED"

    .line 572
    .line 573
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    :cond_1c
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 577
    .line 578
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 579
    .line 580
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 581
    .line 582
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-eqz v0, :cond_1d

    .line 587
    .line 588
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 589
    .line 590
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 591
    .line 592
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 593
    .line 594
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 595
    .line 596
    const/16 v3, 0x2000

    .line 597
    .line 598
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 599
    .line 600
    .line 601
    :cond_1d
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 602
    .line 603
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 604
    .line 605
    const v2, 0x10001

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->setState(I)V

    .line 609
    .line 610
    .line 611
    goto :goto_b

    .line 612
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 613
    .line 614
    if-eqz v0, :cond_1f

    .line 615
    .line 616
    const-string v0, "verifyPin : STATE_LOCKED"

    .line 617
    .line 618
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    goto :goto_b

    .line 622
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 623
    .line 624
    if-eqz v0, :cond_1e

    .line 625
    .line 626
    const-string v0, "verifyPin : STATE_UNLOCKED"

    .line 627
    .line 628
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    :cond_1e
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 632
    .line 633
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 634
    .line 635
    const v2, 0x10004

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->setState(I)V

    .line 639
    .line 640
    .line 641
    :cond_1f
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 642
    .line 643
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 644
    .line 645
    iget-boolean v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z

    .line 646
    .line 647
    if-nez v2, :cond_20

    .line 648
    .line 649
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 650
    .line 651
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    const v2, 0x10001

    .line 656
    .line 657
    .line 658
    if-eq v0, v2, :cond_25

    .line 659
    .line 660
    :cond_20
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 661
    .line 662
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 663
    .line 664
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    const v2, 0x10004

    .line 669
    .line 670
    .line 671
    if-ne v0, v2, :cond_25

    .line 672
    .line 673
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 674
    .line 675
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 676
    .line 677
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 678
    .line 679
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 680
    .line 681
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    if-nez v3, :cond_22

    .line 690
    .line 691
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->DBG:Z

    .line 692
    .line 693
    if-eqz v0, :cond_21

    .line 694
    .line 695
    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    :cond_21
    :goto_c
    const/4 v15, 0x0

    .line 699
    goto :goto_d

    .line 700
    :cond_22
    const/4 v4, 0x0

    .line 701
    :try_start_5
    invoke-interface {v3, v2, v0, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    if-nez v0, :cond_23

    .line 706
    .line 707
    goto :goto_c

    .line 708
    :cond_23
    const-string v2, "bytearrayresponse"

    .line 709
    .line 710
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 715
    .line 716
    .line 717
    move-result-object v15
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 718
    goto :goto_d

    .line 719
    :catch_5
    move-exception v0

    .line 720
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 721
    .line 722
    .line 723
    goto :goto_c

    .line 724
    :goto_d
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 725
    .line 726
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 727
    .line 728
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 729
    .line 730
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 731
    .line 732
    invoke-direct {v3, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V

    .line 733
    .line 734
    .line 735
    const/4 v4, 0x1

    .line 736
    invoke-static {v0, v15, v2, v4, v3}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iput-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 741
    .line 742
    if-eqz v15, :cond_25

    .line 743
    .line 744
    invoke-virtual {v15}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 745
    .line 746
    .line 747
    goto :goto_f

    .line 748
    :catchall_0
    move-exception v0

    .line 749
    move-object v1, v0

    .line 750
    if-eqz v15, :cond_24

    .line 751
    .line 752
    :try_start_7
    invoke-virtual {v15}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 753
    .line 754
    .line 755
    goto :goto_e

    .line 756
    :catchall_1
    move-exception v0

    .line 757
    move-object v2, v0

    .line 758
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 759
    .line 760
    .line 761
    :cond_24
    :goto_e
    throw v1

    .line 762
    :cond_25
    :goto_f
    const/4 v1, 0x0

    .line 763
    return-object v1

    .line 764
    nop

    .line 765
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :pswitch_data_1
    .packed-switch 0x83
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_0
    .array-data 4
        0x84
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_1
    .array-data 4
        0x84
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_2
    .array-data 4
        0x84
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public final getRemainingCount(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f100132

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f100133

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "BSS_UCMAuthCredentialPasswordView"

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    const-string v2, "stopProgress"

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    :try_start_1
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const v1, 0x10001

    .line 22
    .line 23
    .line 24
    if-ne p1, v1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 27
    .line 28
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    :try_start_2
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 55
    .line 56
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 57
    .line 58
    const/4 p1, 0x5

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_1
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->updateUI()V

    .line 67
    .line 68
    .line 69
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->opCode:I

    .line 70
    .line 71
    const/16 v1, 0x63

    .line 72
    .line 73
    if-eq p1, v1, :cond_5

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 76
    .line 77
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_2
    move-exception p0

    .line 96
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "Exception "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_4
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->opCode:I

    .line 2
    .line 3
    const/16 v1, 0x63

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->-$$Nest$mstartProgress(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateUI()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BSS_UCMAuthCredentialPasswordView"

    .line 6
    .line 7
    const-string v1, "updateUI"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 15
    .line 16
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 17
    .line 18
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->mChildSafeMsg:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :cond_1
    const v4, 0x7f10005e

    .line 24
    .line 25
    .line 26
    const v5, 0x7f100170

    .line 27
    .line 28
    .line 29
    const v6, 0x10001

    .line 30
    .line 31
    .line 32
    const-string v7, "\n"

    .line 33
    .line 34
    if-eqz v2, :cond_9

    .line 35
    .line 36
    const v8, 0x10006

    .line 37
    .line 38
    .line 39
    if-eq v2, v8, :cond_8

    .line 40
    .line 41
    const/16 v8, 0x20

    .line 42
    .line 43
    if-eq v2, v8, :cond_5

    .line 44
    .line 45
    const/16 v1, 0x21

    .line 46
    .line 47
    if-eq v2, v1, :cond_4

    .line 48
    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->-$$Nest$mgetUCMService(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->-$$Nest$mgetUCMService(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v0, ""

    .line 69
    .line 70
    :goto_0
    if-nez v0, :cond_3

    .line 71
    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :cond_3
    move-object v3, v0

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v2, 0x7f100172

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 124
    .line 125
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->getRemainingCount(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ne v0, v6, :cond_6

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 170
    .line 171
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->getRemainingCount(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :cond_6
    if-eqz v3, :cond_7

    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 214
    .line 215
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 216
    .line 217
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->getRemainingCount(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    goto :goto_3

    .line 229
    :cond_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const v1, 0x7f100176

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    goto :goto_3

    .line 241
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    packed-switch v0, :pswitch_data_0

    .line 252
    .line 253
    .line 254
    const v5, 0x7f100171

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :pswitch_0
    const v5, 0x7f100167

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :pswitch_1
    const v5, 0x7f10016a

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :pswitch_2
    const v5, 0x7f10016d

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :pswitch_3
    const v5, 0x7f10005b

    .line 271
    .line 272
    .line 273
    :goto_1
    :pswitch_4
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const/high16 v2, 0x10000

    .line 278
    .line 279
    if-eq v0, v2, :cond_b

    .line 280
    .line 281
    if-ne v0, v6, :cond_a

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_a
    move-object v3, v1

    .line 285
    goto :goto_3

    .line 286
    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 295
    .line 296
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 311
    .line 312
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 313
    .line 314
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mAtmRemain:I

    .line 315
    .line 316
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->getRemainingCount(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    .line 330
    .line 331
    const/4 v1, 0x0

    .line 332
    if-eqz v0, :cond_d

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->resetState()V

    .line 347
    .line 348
    .line 349
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 350
    .line 351
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 352
    .line 353
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 354
    .line 355
    return-void

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
