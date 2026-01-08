.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/16 v0, 0xcc

    .line 2
    .line 3
    const/16 v1, 0xd2

    .line 4
    .line 5
    const-string v2, "BSS_FingerprintEnrollActivity"

    .line 6
    .line 7
    const/16 v3, 0x190

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->$r8$classId:I

    .line 12
    .line 13
    packed-switch v6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 21
    .line 22
    sget v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->-$$Nest$msetViewVisibility(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/view/ViewGroup;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    const/16 v1, 0x191

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 62
    .line 63
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 64
    .line 65
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 66
    .line 67
    const/16 v2, 0xd3

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    const v2, 0x7f1000ec

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    const v2, 0x7f1000fe

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 121
    .line 122
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->-$$Nest$msetViewVisibility(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/view/ViewGroup;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 141
    .line 142
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 143
    .line 144
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 160
    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_4

    .line 168
    .line 169
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mFingerLottieEffect:Lcom/airbnb/lottie/LottieAnimationView;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/4 v4, 0x0

    .line 176
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const-wide/16 v6, 0x96

    .line 181
    .line 182
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;

    .line 187
    .line 188
    invoke-direct {v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 192
    .line 193
    .line 194
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mSuccessImageView:Landroid/widget/ImageView;

    .line 195
    .line 196
    if-eqz v3, :cond_5

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 202
    .line 203
    if-nez v0, :cond_6

    .line 204
    .line 205
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 208
    .line 209
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 210
    .line 211
    const/16 v6, 0xcb

    .line 212
    .line 213
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 214
    .line 215
    .line 216
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 219
    .line 220
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 229
    .line 230
    iget-object v6, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 231
    .line 232
    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 233
    .line 234
    invoke-virtual {v6, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    iput v4, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 254
    .line 255
    iput v3, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 256
    .line 257
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v6, "enrolledCount = "

    .line 260
    .line 261
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 267
    .line 268
    iget v6, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 269
    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v6, " | maxCount = "

    .line 274
    .line 275
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 291
    .line 292
    const/16 v4, 0x193

    .line 293
    .line 294
    invoke-virtual {v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 295
    .line 296
    .line 297
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 300
    .line 301
    iget-object v4, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 302
    .line 303
    const/16 v6, 0xcd

    .line 304
    .line 305
    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 306
    .line 307
    .line 308
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 311
    .line 312
    iget v4, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 313
    .line 314
    if-ge v4, v3, :cond_9

    .line 315
    .line 316
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    .line 317
    .line 318
    if-nez v3, :cond_9

    .line 319
    .line 320
    iget-boolean v1, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 321
    .line 322
    if-eqz v1, :cond_8

    .line 323
    .line 324
    iget-object v1, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAddButtonArea:Landroid/widget/LinearLayout;

    .line 325
    .line 326
    if-eqz v0, :cond_b

    .line 327
    .line 328
    iget v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 329
    .line 330
    add-int/lit16 v3, v3, 0x3e8

    .line 331
    .line 332
    iput v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_8
    const v1, 0x7f0a0048

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Landroid/widget/LinearLayout;

    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_9
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 346
    .line 347
    if-nez v3, :cond_b

    .line 348
    .line 349
    if-eqz v0, :cond_a

    .line 350
    .line 351
    iget v1, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 352
    .line 353
    add-int/lit16 v1, v1, 0x3e8

    .line 354
    .line 355
    iput v1, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 356
    .line 357
    :cond_a
    const v1, 0x7f0a00a9

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Landroid/widget/LinearLayout;

    .line 365
    .line 366
    :cond_b
    :goto_2
    if-eqz v1, :cond_d

    .line 367
    .line 368
    if-eqz v0, :cond_c

    .line 369
    .line 370
    new-instance v2, Landroid/os/Handler;

    .line 371
    .line 372
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 373
    .line 374
    .line 375
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$16$$ExternalSyntheticLambda0;

    .line 376
    .line 377
    invoke-direct {v3, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$16$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;Landroid/widget/LinearLayout;)V

    .line 378
    .line 379
    .line 380
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 383
    .line 384
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 385
    .line 386
    int-to-long v6, v1

    .line 387
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_c
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 397
    .line 398
    iget-boolean v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 399
    .line 400
    if-eqz v2, :cond_f

    .line 401
    .line 402
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 403
    .line 404
    if-eqz v2, :cond_f

    .line 405
    .line 406
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    .line 407
    .line 408
    if-eqz v1, :cond_f

    .line 409
    .line 410
    const v2, 0x7f100139

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 414
    .line 415
    .line 416
    if-eqz v0, :cond_e

    .line 417
    .line 418
    new-instance v0, Landroid/os/Handler;

    .line 419
    .line 420
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 429
    .line 430
    .line 431
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 432
    .line 433
    const/4 v2, 0x3

    .line 434
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 440
    .line 441
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 442
    .line 443
    int-to-long v2, p0

    .line 444
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 451
    .line 452
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 453
    .line 454
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    :cond_f
    :goto_4
    return-void

    .line 458
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 461
    .line 462
    const v1, 0x7f0a008c

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 472
    .line 473
    const v1, 0x7f0a008b

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    check-cast p0, Landroid/widget/Button;

    .line 481
    .line 482
    if-eqz v0, :cond_10

    .line 483
    .line 484
    if-eqz p0, :cond_10

    .line 485
    .line 486
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 490
    .line 491
    .line 492
    :cond_10
    return-void

    .line 493
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 496
    .line 497
    iget-boolean v6, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 498
    .line 499
    if-eqz v6, :cond_11

    .line 500
    .line 501
    iput-boolean v5, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 502
    .line 503
    const-wide/16 v4, 0x82

    .line 504
    .line 505
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .line 507
    .line 508
    goto :goto_5

    .line 509
    :catch_0
    const-string v4, "mHideErrorRunnable : Interrupted"

    .line 510
    .line 511
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 517
    .line 518
    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 519
    .line 520
    .line 521
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 524
    .line 525
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 526
    .line 527
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 528
    .line 529
    .line 530
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 531
    .line 532
    if-nez v1, :cond_11

    .line 533
    .line 534
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 537
    .line 538
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 539
    .line 540
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 541
    .line 542
    .line 543
    :cond_11
    return-void

    .line 544
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 547
    .line 548
    const v0, 0x7f1000bd

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    const/16 v1, 0x64

    .line 556
    .line 557
    invoke-static {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->-$$Nest$mshowAuthenticateResult(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 564
    .line 565
    iget-boolean v6, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 566
    .line 567
    if-eqz v6, :cond_13

    .line 568
    .line 569
    iput-boolean v5, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 572
    .line 573
    .line 574
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 577
    .line 578
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 579
    .line 580
    if-nez v3, :cond_12

    .line 581
    .line 582
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 583
    .line 584
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 585
    .line 586
    .line 587
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 588
    .line 589
    if-nez v1, :cond_12

    .line 590
    .line 591
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 594
    .line 595
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 596
    .line 597
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 598
    .line 599
    .line 600
    :cond_12
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 601
    .line 602
    if-nez v0, :cond_13

    .line 603
    .line 604
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;->this$0:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 607
    .line 608
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 609
    .line 610
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_13
    return-void

    .line 622
    nop

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
