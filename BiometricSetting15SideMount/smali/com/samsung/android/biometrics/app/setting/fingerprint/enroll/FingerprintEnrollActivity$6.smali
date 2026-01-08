.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

.field public final synthetic val$evtId:I

.field public final synthetic val$evtMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtId:I

    .line 3
    .line 4
    if-eqz v1, :cond_3b

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_37

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v1, v3, :cond_37

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    if-eq v1, v4, :cond_36

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    if-eq v1, v5, :cond_35

    .line 17
    .line 18
    const v6, 0x7f1000af

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x5

    .line 22
    if-eq v1, v7, :cond_33

    .line 23
    .line 24
    const/16 v8, 0x271d

    .line 25
    .line 26
    if-eq v1, v8, :cond_32

    .line 27
    .line 28
    const/16 v8, 0x12c

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    const/16 v6, 0xcc

    .line 34
    .line 35
    const/16 v9, 0x190

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    packed-switch v1, :pswitch_data_1

    .line 39
    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3c

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setProgressResult(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->finishScan()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 64
    .line 65
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    .line 66
    .line 67
    add-int/2addr v1, v2

    .line 68
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const/16 v1, 0xce

    .line 75
    .line 76
    invoke-virtual {p0, v10, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    .line 82
    .line 83
    .line 84
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 85
    .line 86
    const/16 v1, 0x64

    .line 87
    .line 88
    if-ge v0, v1, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/16 v9, 0x192

    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    .line 102
    .line 103
    iput-object v10, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 104
    .line 105
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 106
    .line 107
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setProgressResult(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3c

    .line 135
    .line 136
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    iget v8, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 150
    .line 151
    if-ne v8, v3, :cond_4

    .line 152
    .line 153
    iget-object v8, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 154
    .line 155
    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 156
    .line 157
    .line 158
    iget-object v8, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 159
    .line 160
    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 161
    .line 162
    .line 163
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 164
    .line 165
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledFingerLeave:Z

    .line 166
    .line 167
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 168
    .line 169
    if-eqz v1, :cond_23

    .line 170
    .line 171
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 172
    .line 173
    invoke-virtual {v1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setProgressResult(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->finishScan()V

    .line 179
    .line 180
    .line 181
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDoNotMove:Z

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDoNotMove:Z

    .line 186
    .line 187
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 188
    .line 189
    const v1, 0x7f1000a9

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const/4 v2, -0x1

    .line 197
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 203
    .line 204
    if-eqz v1, :cond_23

    .line 205
    .line 206
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 207
    .line 208
    if-eqz v1, :cond_6

    .line 209
    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 211
    .line 212
    invoke-virtual {p0, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 218
    .line 219
    .line 220
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 221
    .line 222
    if-eqz v1, :cond_22

    .line 223
    .line 224
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getTalkBackPositionIndex()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 231
    .line 232
    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->moveNext()V

    .line 233
    .line 234
    .line 235
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getTalkBackPositionIndex()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    const/16 v8, 0x8

    .line 242
    .line 243
    if-ne v1, v8, :cond_7

    .line 244
    .line 245
    if-eq v6, v7, :cond_8

    .line 246
    .line 247
    :cond_7
    if-ne v1, v7, :cond_a

    .line 248
    .line 249
    if-ne v6, v3, :cond_a

    .line 250
    .line 251
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 252
    .line 253
    if-eqz v1, :cond_9

    .line 254
    .line 255
    const v1, 0x7f1000f9

    .line 256
    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_9
    const v1, 0x7f1000f8

    .line 261
    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_a
    const/4 v9, 0x7

    .line 266
    if-ne v1, v5, :cond_b

    .line 267
    .line 268
    if-eq v6, v9, :cond_d

    .line 269
    .line 270
    :cond_b
    if-nez v1, :cond_c

    .line 271
    .line 272
    if-eq v6, v4, :cond_d

    .line 273
    .line 274
    :cond_c
    const/4 v10, 0x6

    .line 275
    if-ne v1, v4, :cond_f

    .line 276
    .line 277
    if-ne v6, v10, :cond_f

    .line 278
    .line 279
    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 280
    .line 281
    if-eqz v1, :cond_e

    .line 282
    .line 283
    const v1, 0x7f1000ef

    .line 284
    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_e
    const v1, 0x7f1000ee

    .line 289
    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_f
    if-ne v1, v3, :cond_10

    .line 294
    .line 295
    if-eq v6, v2, :cond_11

    .line 296
    .line 297
    :cond_10
    if-ne v1, v2, :cond_13

    .line 298
    .line 299
    if-nez v6, :cond_13

    .line 300
    .line 301
    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 302
    .line 303
    if-eqz v1, :cond_12

    .line 304
    .line 305
    const v1, 0x7f1000f5

    .line 306
    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :cond_12
    const v1, 0x7f1000f4

    .line 311
    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_13
    if-ne v1, v9, :cond_14

    .line 316
    .line 317
    if-eq v6, v8, :cond_15

    .line 318
    .line 319
    :cond_14
    if-ne v1, v4, :cond_17

    .line 320
    .line 321
    if-ne v6, v5, :cond_17

    .line 322
    .line 323
    :cond_15
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 324
    .line 325
    if-eqz v1, :cond_16

    .line 326
    .line 327
    const v1, 0x7f1000f7

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_16
    const v1, 0x7f1000f6

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_17
    if-ne v1, v7, :cond_19

    .line 336
    .line 337
    if-ne v6, v2, :cond_19

    .line 338
    .line 339
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 340
    .line 341
    if-eqz v1, :cond_18

    .line 342
    .line 343
    const v1, 0x7f1000fb

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_18
    const v1, 0x7f1000fa

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_19
    if-ne v1, v2, :cond_1b

    .line 352
    .line 353
    if-ne v6, v4, :cond_1b

    .line 354
    .line 355
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 356
    .line 357
    if-eqz v1, :cond_1a

    .line 358
    .line 359
    const v1, 0x7f1000f1

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_1a
    const v1, 0x7f1000f0

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_1b
    if-ne v1, v9, :cond_1c

    .line 368
    .line 369
    if-eq v6, v7, :cond_1d

    .line 370
    .line 371
    :cond_1c
    if-ne v1, v10, :cond_1f

    .line 372
    .line 373
    if-ne v6, v5, :cond_1f

    .line 374
    .line 375
    :cond_1d
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 376
    .line 377
    if-eqz v1, :cond_1e

    .line 378
    .line 379
    const v1, 0x7f1000fd

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_1e
    const v1, 0x7f1000fc

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_1f
    if-ne v1, v5, :cond_21

    .line 388
    .line 389
    if-ne v6, v9, :cond_21

    .line 390
    .line 391
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 392
    .line 393
    if-eqz v1, :cond_20

    .line 394
    .line 395
    const v1, 0x7f1000f3

    .line 396
    .line 397
    .line 398
    goto :goto_1

    .line 399
    :cond_20
    const v1, 0x7f1000f2

    .line 400
    .line 401
    .line 402
    goto :goto_1

    .line 403
    :cond_21
    const v1, 0x7f1000ec

    .line 404
    .line 405
    .line 406
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_22
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->moveNext()V

    .line 417
    .line 418
    .line 419
    :cond_23
    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 420
    .line 421
    goto/16 :goto_4

    .line 422
    .line 423
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 424
    .line 425
    if-eqz v0, :cond_3c

    .line 426
    .line 427
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 428
    .line 429
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 430
    .line 431
    if-eqz p0, :cond_3c

    .line 432
    .line 433
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->addTouchValidation(I)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 439
    .line 440
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 441
    .line 442
    if-eqz v1, :cond_24

    .line 443
    .line 444
    iget v4, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 445
    .line 446
    if-ne v4, v2, :cond_24

    .line 447
    .line 448
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 449
    .line 450
    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 451
    .line 452
    .line 453
    iput v3, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 454
    .line 455
    :cond_24
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideHandler:Landroid/os/Handler;

    .line 456
    .line 457
    if-eqz v1, :cond_25

    .line 458
    .line 459
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedFingerFrame:Z

    .line 460
    .line 461
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 462
    .line 463
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    .line 465
    .line 466
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 467
    .line 468
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->startScan()V

    .line 469
    .line 470
    .line 471
    :cond_25
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 472
    .line 473
    if-eqz v1, :cond_26

    .line 474
    .line 475
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 476
    .line 477
    if-nez v3, :cond_26

    .line 478
    .line 479
    const v3, 0x7f1000ff

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :cond_26
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 490
    .line 491
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledFingerLeave:Z

    .line 492
    .line 493
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 494
    .line 495
    if-eqz v3, :cond_27

    .line 496
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 498
    .line 499
    .line 500
    move-result-wide v4

    .line 501
    invoke-virtual {v3, v4, v5, v0, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 502
    .line 503
    .line 504
    :cond_27
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 505
    .line 506
    if-eqz v3, :cond_28

    .line 507
    .line 508
    invoke-virtual {p0, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 509
    .line 510
    .line 511
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 512
    .line 513
    if-eqz v3, :cond_28

    .line 514
    .line 515
    const v3, 0x7f100158

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 523
    .line 524
    .line 525
    :cond_28
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 526
    .line 527
    if-eqz v3, :cond_29

    .line 528
    .line 529
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 530
    .line 531
    .line 532
    iput-object v10, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 533
    .line 534
    :cond_29
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 535
    .line 536
    if-eqz v1, :cond_2a

    .line 537
    .line 538
    invoke-virtual {p0, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 539
    .line 540
    .line 541
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 542
    .line 543
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 544
    .line 545
    if-eqz v0, :cond_2a

    .line 546
    .line 547
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 548
    .line 549
    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 550
    .line 551
    .line 552
    :cond_2a
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 553
    .line 554
    if-eqz p0, :cond_3c

    .line 555
    .line 556
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setFingerStatus(I)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_4

    .line 560
    .line 561
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 562
    .line 563
    sget v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 564
    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 569
    .line 570
    if-eqz v1, :cond_2b

    .line 571
    .line 572
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledFingerLeave:Z

    .line 573
    .line 574
    if-eqz v1, :cond_2b

    .line 575
    .line 576
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 577
    .line 578
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 579
    .line 580
    invoke-virtual {v1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setProgressResult(I)V

    .line 581
    .line 582
    .line 583
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 584
    .line 585
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->finishScan()V

    .line 586
    .line 587
    .line 588
    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 589
    .line 590
    if-eqz v1, :cond_2c

    .line 591
    .line 592
    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setFingerStatus(I)V

    .line 593
    .line 594
    .line 595
    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    .line 596
    .line 597
    if-eqz v1, :cond_2d

    .line 598
    .line 599
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    .line 600
    .line 601
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    .line 603
    .line 604
    iput-object v10, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    .line 605
    .line 606
    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 607
    .line 608
    if-eqz v1, :cond_2e

    .line 609
    .line 610
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 611
    .line 612
    .line 613
    iput-object v10, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 614
    .line 615
    :cond_2e
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 616
    .line 617
    if-eqz v1, :cond_3c

    .line 618
    .line 619
    new-instance v1, Landroid/os/Handler;

    .line 620
    .line 621
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 622
    .line 623
    .line 624
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    .line 625
    .line 626
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 627
    .line 628
    invoke-direct {v2, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    .line 632
    .line 633
    const-wide/16 v3, 0x14a

    .line 634
    .line 635
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    .line 637
    .line 638
    goto/16 :goto_4

    .line 639
    .line 640
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 641
    .line 642
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 643
    .line 644
    iget-boolean v3, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 645
    .line 646
    if-eqz v3, :cond_2f

    .line 647
    .line 648
    invoke-virtual {v1, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 649
    .line 650
    .line 651
    :cond_2f
    iput-boolean v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTspBlock:Z

    .line 652
    .line 653
    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_4

    .line 657
    .line 658
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 659
    .line 660
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 661
    .line 662
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    .line 663
    .line 664
    add-int/2addr v3, v2

    .line 665
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    .line 666
    .line 667
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 668
    .line 669
    if-eqz v2, :cond_30

    .line 670
    .line 671
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object p0

    .line 675
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_4

    .line 679
    .line 680
    :cond_30
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_4

    .line 684
    .line 685
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 686
    .line 687
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    .line 688
    .line 689
    add-int/2addr v0, v2

    .line 690
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    .line 691
    .line 692
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 693
    .line 694
    if-eqz v0, :cond_31

    .line 695
    .line 696
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 697
    .line 698
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->tuneMovingArea(Z)V

    .line 699
    .line 700
    .line 701
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 702
    .line 703
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->moveNext()V

    .line 704
    .line 705
    .line 706
    const v0, 0x7f1000b0

    .line 707
    .line 708
    .line 709
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_4

    .line 717
    .line 718
    :cond_31
    const v0, 0x7f1000a8

    .line 719
    .line 720
    .line 721
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_4

    .line 729
    .line 730
    :cond_32
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 731
    .line 732
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsAdditionalRegistration:Z

    .line 733
    .line 734
    if-nez v0, :cond_3c

    .line 735
    .line 736
    const/16 v0, 0x130

    .line 737
    .line 738
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_4

    .line 742
    .line 743
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 744
    .line 745
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 746
    .line 747
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    .line 748
    .line 749
    add-int/2addr v3, v2

    .line 750
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    .line 751
    .line 752
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 753
    .line 754
    if-eqz v2, :cond_34

    .line 755
    .line 756
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object p0

    .line 760
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 761
    .line 762
    .line 763
    goto :goto_4

    .line 764
    :cond_34
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto :goto_4

    .line 768
    :cond_35
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 769
    .line 770
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 771
    .line 772
    sget v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 773
    .line 774
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 775
    .line 776
    .line 777
    goto :goto_4

    .line 778
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 779
    .line 780
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    .line 781
    .line 782
    add-int/2addr v3, v2

    .line 783
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    .line 784
    .line 785
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 786
    .line 787
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 788
    .line 789
    .line 790
    goto :goto_4

    .line 791
    :cond_37
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 792
    .line 793
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->val$evtMsg:Ljava/lang/String;

    .line 794
    .line 795
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    .line 796
    .line 797
    add-int/2addr v4, v2

    .line 798
    iput v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    .line 799
    .line 800
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 801
    .line 802
    if-eqz v2, :cond_3a

    .line 803
    .line 804
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->tuneTouchGuideFrame()V

    .line 805
    .line 806
    .line 807
    iget-boolean p0, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 808
    .line 809
    if-eqz p0, :cond_38

    .line 810
    .line 811
    iget v2, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideStrId:I

    .line 812
    .line 813
    if-lez v2, :cond_38

    .line 814
    .line 815
    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object p0

    .line 819
    invoke-virtual {v3, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    goto :goto_4

    .line 823
    :cond_38
    if-eqz p0, :cond_39

    .line 824
    .line 825
    const p0, 0x7f1000b2

    .line 826
    .line 827
    .line 828
    goto :goto_3

    .line 829
    :cond_39
    const p0, 0x7f1000b1

    .line 830
    .line 831
    .line 832
    :goto_3
    invoke-virtual {v3, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object p0

    .line 836
    invoke-virtual {v3, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 837
    .line 838
    .line 839
    goto :goto_4

    .line 840
    :cond_3a
    invoke-virtual {v3, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    .line 841
    .line 842
    .line 843
    goto :goto_4

    .line 844
    :cond_3b
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 845
    .line 846
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTspBlock:Z

    .line 847
    .line 848
    if-eqz v1, :cond_3c

    .line 849
    .line 850
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTspBlock:Z

    .line 851
    .line 852
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    .line 853
    .line 854
    .line 855
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 856
    .line 857
    if-eqz v0, :cond_3c

    .line 858
    .line 859
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 860
    .line 861
    const-wide/16 v1, 0x64

    .line 862
    .line 863
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    .line 865
    .line 866
    :cond_3c
    :goto_4
    return-void

    .line 867
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :pswitch_data_1
    .packed-switch 0x2711
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
