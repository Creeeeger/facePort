.class public final Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onEnrollmentError: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_FaceEnrollActivity"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->pause()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_5

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    if-eq p1, v0, :cond_4

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    const v0, 0x186a2

    .line 48
    .line 49
    .line 50
    if-eq p1, v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 67
    .line 68
    const/4 p1, -0x4

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 81
    .line 82
    const p2, 0x7f10006f

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 94
    .line 95
    const/4 p1, -0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 97
    .line 98
    .line 99
    :cond_6
    :goto_0
    return-void
.end method

.method public final onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V
    .locals 8

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string p5, "onEnrollmentFrame["

    .line 4
    .line 5
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p5, "][stage: "

    .line 12
    .line 13
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p5, "] : "

    .line 20
    .line 21
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const-string p5, "BSS_FaceEnrollActivity"

    .line 32
    .line 33
    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 37
    .line 38
    iget-boolean p5, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    .line 39
    .line 40
    const p6, 0x7f10007b

    .line 41
    .line 42
    .line 43
    const/4 p7, 0x0

    .line 44
    const/4 v0, 0x1

    .line 45
    if-nez p5, :cond_1

    .line 46
    .line 47
    const/16 p5, 0x7d1

    .line 48
    .line 49
    if-ne p1, p5, :cond_1

    .line 50
    .line 51
    iput-boolean v0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    .line 52
    .line 53
    iget-object p0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    iget-object p0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 67
    .line 68
    .line 69
    const-wide/16 p4, 0xe6

    .line 70
    .line 71
    invoke-virtual {p0, p4, p5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 72
    .line 73
    .line 74
    new-instance p4, Landroid/view/animation/PathInterpolator;

    .line 75
    .line 76
    const p5, 0x3ea8f5c3    # 0.33f

    .line 77
    .line 78
    .line 79
    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    .line 81
    .line 82
    invoke-direct {p4, p5, p1, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    return-void

    .line 112
    :cond_1
    const/16 p5, 0x3f8

    .line 113
    .line 114
    if-ne p1, p5, :cond_2

    .line 115
    .line 116
    iput-boolean v0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    iget-boolean p5, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 120
    .line 121
    const/16 v1, 0x401

    .line 122
    .line 123
    const/16 v2, 0x400

    .line 124
    .line 125
    const/16 v3, 0x41a

    .line 126
    .line 127
    if-eqz p5, :cond_3

    .line 128
    .line 129
    if-eq p1, v2, :cond_3

    .line 130
    .line 131
    if-eq p1, v1, :cond_3

    .line 132
    .line 133
    if-eq p1, v3, :cond_3

    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    iput-boolean v0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 137
    .line 138
    new-instance p5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$1;

    .line 139
    .line 140
    invoke-direct {p5, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    iput-object p5, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mShowPoseGuideTimer:Landroid/os/CountDownTimer;

    .line 148
    .line 149
    sget-boolean p3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FACE_FEATURE_POSE_ENROLL:Z

    .line 150
    .line 151
    const/16 p5, 0xb

    .line 152
    .line 153
    const-string v4, ""

    .line 154
    .line 155
    if-eqz p3, :cond_11

    .line 156
    .line 157
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 158
    .line 159
    iget-boolean v5, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 160
    .line 161
    const/16 v6, 0x41b

    .line 162
    .line 163
    if-eqz v5, :cond_4

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_4
    if-eq p1, v2, :cond_e

    .line 167
    .line 168
    const/16 v5, 0x405

    .line 169
    .line 170
    if-eq p1, v5, :cond_e

    .line 171
    .line 172
    const/16 v5, 0x64

    .line 173
    .line 174
    if-eq p4, v5, :cond_5

    .line 175
    .line 176
    const/16 v5, 0x6e

    .line 177
    .line 178
    if-ne p4, v5, :cond_6

    .line 179
    .line 180
    :cond_5
    if-eq p1, v3, :cond_e

    .line 181
    .line 182
    if-eq p1, v6, :cond_e

    .line 183
    .line 184
    :cond_6
    iget v5, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 185
    .line 186
    const/16 v7, 0x1e

    .line 187
    .line 188
    if-lt v5, v7, :cond_7

    .line 189
    .line 190
    const/16 v7, 0x46

    .line 191
    .line 192
    if-lt v5, v7, :cond_9

    .line 193
    .line 194
    :cond_7
    if-eq p1, p5, :cond_e

    .line 195
    .line 196
    const/4 v5, 0x4

    .line 197
    if-lt p1, v5, :cond_8

    .line 198
    .line 199
    const/16 v5, 0x9

    .line 200
    .line 201
    if-le p1, v5, :cond_e

    .line 202
    .line 203
    :cond_8
    const/16 v5, 0x3ee

    .line 204
    .line 205
    if-lt p1, v5, :cond_9

    .line 206
    .line 207
    const/16 v5, 0x3f6

    .line 208
    .line 209
    if-gt p1, v5, :cond_9

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_9
    :goto_0
    if-eq p1, v1, :cond_b

    .line 213
    .line 214
    const/16 p6, 0x406

    .line 215
    .line 216
    if-eq p1, p6, :cond_b

    .line 217
    .line 218
    const/16 p6, 0x65

    .line 219
    .line 220
    if-eq p4, p6, :cond_a

    .line 221
    .line 222
    const/16 p6, 0x6f

    .line 223
    .line 224
    if-ne p4, p6, :cond_12

    .line 225
    .line 226
    :cond_a
    if-eq p1, v3, :cond_b

    .line 227
    .line 228
    if-ne p1, v6, :cond_12

    .line 229
    .line 230
    :cond_b
    sget-object p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->UP:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 231
    .line 232
    if-eq p1, v1, :cond_d

    .line 233
    .line 234
    if-ne p1, v3, :cond_c

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_c
    move p4, v0

    .line 238
    goto :goto_2

    .line 239
    :cond_d
    :goto_1
    move p4, p7

    .line 240
    :goto_2
    invoke-static {p3, p2, p7, p4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->-$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V

    .line 241
    .line 242
    .line 243
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 244
    .line 245
    const p3, 0x7f10007a

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    invoke-virtual {p2, p4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 256
    .line 257
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p3

    .line 261
    invoke-virtual {p2, p7, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_3
    move-object p2, v4

    .line 265
    goto :goto_7

    .line 266
    :cond_e
    :goto_4
    sget-object p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->CENTER:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 267
    .line 268
    if-eq p1, v2, :cond_10

    .line 269
    .line 270
    if-ne p1, v3, :cond_f

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_f
    move p4, v0

    .line 274
    goto :goto_6

    .line 275
    :cond_10
    :goto_5
    move p4, p7

    .line 276
    :goto_6
    invoke-static {p3, p2, p7, p4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->-$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 280
    .line 281
    invoke-virtual {p2, p6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    invoke-virtual {p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_11
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 290
    .line 291
    iget-object p3, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 292
    .line 293
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    :cond_12
    :goto_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result p3

    .line 300
    if-nez p3, :cond_1c

    .line 301
    .line 302
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 303
    .line 304
    iput-boolean v0, p3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 305
    .line 306
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    const/16 p4, 0x13

    .line 311
    .line 312
    const/16 p6, 0x3f9

    .line 313
    .line 314
    const/16 v1, 0x15

    .line 315
    .line 316
    if-eq p1, v0, :cond_15

    .line 317
    .line 318
    if-ne p1, v1, :cond_13

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_13
    if-eq p1, p6, :cond_14

    .line 322
    .line 323
    if-ne p1, p4, :cond_16

    .line 324
    .line 325
    :cond_14
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 326
    .line 327
    const v2, 0x7f10007d

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p3

    .line 334
    goto :goto_9

    .line 335
    :cond_15
    :goto_8
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 336
    .line 337
    const v2, 0x7f100082

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p3

    .line 344
    :cond_16
    :goto_9
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 345
    .line 346
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 347
    .line 348
    if-eqz v2, :cond_1b

    .line 349
    .line 350
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    if-eq p1, v0, :cond_19

    .line 362
    .line 363
    if-eq p1, p5, :cond_18

    .line 364
    .line 365
    if-eq p1, p4, :cond_17

    .line 366
    .line 367
    if-eq p1, v1, :cond_19

    .line 368
    .line 369
    if-eq p1, p6, :cond_17

    .line 370
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 372
    .line 373
    .line 374
    packed-switch p1, :pswitch_data_1

    .line 375
    .line 376
    .line 377
    packed-switch p1, :pswitch_data_2

    .line 378
    .line 379
    .line 380
    const/4 p4, 0x0

    .line 381
    goto :goto_a

    .line 382
    :pswitch_0
    const p4, 0x7f10008b

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p4

    .line 389
    goto :goto_a

    .line 390
    :pswitch_1
    const p4, 0x7f10008a

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p4

    .line 397
    goto :goto_a

    .line 398
    :pswitch_2
    const p4, 0x7f10008f

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p4

    .line 405
    goto :goto_a

    .line 406
    :pswitch_3
    const p4, 0x7f10008e

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p4

    .line 413
    goto :goto_a

    .line 414
    :pswitch_4
    const p4, 0x7f100089

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p4

    .line 421
    goto :goto_a

    .line 422
    :pswitch_5
    const p4, 0x7f10008c

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p4

    .line 429
    goto :goto_a

    .line 430
    :pswitch_6
    const p4, 0x7f100088

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p4

    .line 437
    goto :goto_a

    .line 438
    :pswitch_7
    const p4, 0x7f10008d

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p4

    .line 445
    goto :goto_a

    .line 446
    :pswitch_8
    const p4, 0x7f100084

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p4

    .line 453
    goto :goto_a

    .line 454
    :cond_17
    const p4, 0x7f100083

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p4

    .line 461
    goto :goto_a

    .line 462
    :cond_18
    :pswitch_9
    invoke-virtual {v2, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p4

    .line 466
    goto :goto_a

    .line 467
    :cond_19
    const p4, 0x7f100081

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p4

    .line 474
    :goto_a
    if-nez p4, :cond_1a

    .line 475
    .line 476
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p4

    .line 480
    :cond_1a
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 481
    .line 482
    invoke-virtual {p2, p7, p4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_1b
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    iget-object p4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 492
    .line 493
    iget p4, p4, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 494
    .line 495
    const/16 p4, 0x7f

    .line 496
    .line 497
    invoke-static {p2, p4}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;I)V

    .line 498
    .line 499
    .line 500
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 501
    .line 502
    invoke-virtual {p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 506
    .line 507
    invoke-virtual {p2, p1, p7}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZ)V

    .line 508
    .line 509
    .line 510
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 511
    .line 512
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 513
    .line 514
    if-eqz p0, :cond_1c

    .line 515
    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setErrorState()V

    .line 517
    .line 518
    .line 519
    :cond_1c
    return-void

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ee
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final onEnrollmentProgress(I)V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    rsub-int/lit8 p1, p1, 0x64

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "onEnrollmentProgress : "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "BSS_FaceEnrollActivity"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 27
    .line 28
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    .line 34
    .line 35
    :cond_1
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 36
    .line 37
    if-lt v2, p1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 50
    .line 51
    iput p1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "Update percent : "

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 61
    .line 62
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 77
    .line 78
    const v0, 0x7f100130

    .line 79
    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 100
    .line 101
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 102
    .line 103
    const/16 v4, 0x1e

    .line 104
    .line 105
    const/16 v5, 0x46

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    iget v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 111
    .line 112
    sget-object v7, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->CENTER:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 113
    .line 114
    if-le v1, v5, :cond_5

    .line 115
    .line 116
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 117
    .line 118
    aget-boolean v1, v1, v6

    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-static {p1, v7, v3, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->-$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    if-le v1, v4, :cond_6

    .line 127
    .line 128
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 129
    .line 130
    aget-boolean v1, v1, v3

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->UP:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 135
    .line 136
    invoke-static {p1, v1, v3, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->-$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    if-lez v1, :cond_7

    .line 141
    .line 142
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 143
    .line 144
    aget-boolean v1, v1, v6

    .line 145
    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    invoke-static {p1, v7, v3, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->-$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 152
    .line 153
    iget v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 154
    .line 155
    iget-object v7, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 156
    .line 157
    if-eqz v7, :cond_8

    .line 158
    .line 159
    invoke-virtual {v7, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setProgress(I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    iget-object v7, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 163
    .line 164
    if-eqz v7, :cond_9

    .line 165
    .line 166
    const v8, 0x7f10006d

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    new-array v9, v3, [Ljava/lang/CharSequence;

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    const-string v11, "%d"

    .line 184
    .line 185
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    aput-object v10, v9, v6

    .line 190
    .line 191
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    iget-boolean v7, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 199
    .line 200
    if-eqz v7, :cond_d

    .line 201
    .line 202
    if-lez v1, :cond_a

    .line 203
    .line 204
    iget-boolean v7, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    .line 205
    .line 206
    if-nez v7, :cond_a

    .line 207
    .line 208
    iput-boolean v3, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget-boolean v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    .line 218
    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 222
    .line 223
    if-eqz v0, :cond_d

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_d

    .line 230
    .line 231
    const v0, 0x7f100131

    .line 232
    .line 233
    .line 234
    if-ne v1, v4, :cond_b

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {p1, v6, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_b
    iget-boolean v4, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 244
    .line 245
    if-eqz v4, :cond_c

    .line 246
    .line 247
    const/16 v4, 0x3c

    .line 248
    .line 249
    if-ne v1, v4, :cond_d

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_c
    if-ne v1, v5, :cond_d

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_d
    :goto_2
    const/4 v0, 0x4

    .line 269
    const/16 v4, 0x64

    .line 270
    .line 271
    const/16 v7, 0x8

    .line 272
    .line 273
    const/high16 v8, 0x3f800000    # 1.0f

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    const/4 v10, -0x1

    .line 277
    if-ne v1, v4, :cond_13

    .line 278
    .line 279
    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 280
    .line 281
    if-eqz v1, :cond_e

    .line 282
    .line 283
    invoke-virtual {p1, v10, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZ)V

    .line 284
    .line 285
    .line 286
    iput-boolean v6, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 287
    .line 288
    :cond_e
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 289
    .line 290
    if-eqz v1, :cond_f

    .line 291
    .line 292
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 293
    .line 294
    if-eqz v1, :cond_f

    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->pause()V

    .line 297
    .line 298
    .line 299
    :cond_f
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 300
    .line 301
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 302
    .line 303
    .line 304
    const/4 v11, 0x5

    .line 305
    invoke-virtual {v1, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    new-instance v11, Landroid/media/SoundPool$Builder;

    .line 318
    .line 319
    invoke-direct {v11}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iput-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 335
    .line 336
    const-string v1, "audio"

    .line 337
    .line 338
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Landroid/media/AudioManager;

    .line 343
    .line 344
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-lez v11, :cond_10

    .line 353
    .line 354
    int-to-float v1, v1

    .line 355
    int-to-float v11, v11

    .line 356
    div-float/2addr v1, v11

    .line 357
    goto :goto_3

    .line 358
    :cond_10
    move v1, v9

    .line 359
    :goto_3
    iget-object v11, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 360
    .line 361
    const v12, 0x7f0f0001

    .line 362
    .line 363
    .line 364
    invoke-virtual {v11, p1, v12, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    iget-object v12, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 369
    .line 370
    new-instance v13, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;

    .line 371
    .line 372
    invoke-direct {v13, v11, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;-><init>(IF)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v12, v13}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 376
    .line 377
    .line 378
    const/16 v1, 0x7e

    .line 379
    .line 380
    invoke-static {p1, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;I)V

    .line 381
    .line 382
    .line 383
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 384
    .line 385
    if-eqz v1, :cond_11

    .line 386
    .line 387
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 388
    .line 389
    invoke-direct {v1, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 390
    .line 391
    .line 392
    const-wide/16 v11, 0xfa

    .line 393
    .line 394
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 398
    .line 399
    .line 400
    iget-object v11, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 401
    .line 402
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 403
    .line 404
    .line 405
    iget-object v11, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    iget-object v11, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 411
    .line 412
    const v12, 0x7f100068

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 416
    .line 417
    .line 418
    iget-object v11, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 419
    .line 420
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    .line 422
    .line 423
    :cond_11
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 424
    .line 425
    if-eqz v1, :cond_12

    .line 426
    .line 427
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    :cond_12
    const v1, 0x7f0a00c8

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    if-eqz p1, :cond_13

    .line 438
    .line 439
    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    .line 440
    .line 441
    .line 442
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 443
    .line 444
    iget v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 445
    .line 446
    if-lt v1, v5, :cond_1d

    .line 447
    .line 448
    iget-boolean v5, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    .line 449
    .line 450
    if-nez v5, :cond_1d

    .line 451
    .line 452
    iget-boolean v5, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 453
    .line 454
    if-eqz v5, :cond_1d

    .line 455
    .line 456
    iput-boolean v3, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    .line 457
    .line 458
    iput-boolean v6, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    .line 459
    .line 460
    const/16 p0, 0xe6

    .line 461
    .line 462
    invoke-static {v9, v8, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 467
    .line 468
    if-eqz v1, :cond_14

    .line 469
    .line 470
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 471
    .line 472
    if-eqz v1, :cond_14

    .line 473
    .line 474
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->pause()V

    .line 475
    .line 476
    .line 477
    :cond_14
    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 478
    .line 479
    if-eqz v1, :cond_15

    .line 480
    .line 481
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    .line 482
    .line 483
    if-eqz v1, :cond_15

    .line 484
    .line 485
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    .line 487
    .line 488
    :cond_15
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    .line 489
    .line 490
    if-eqz v1, :cond_16

    .line 491
    .line 492
    const v4, 0x7f060081

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getColor(I)I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 500
    .line 501
    .line 502
    :cond_16
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 503
    .line 504
    if-eqz v1, :cond_17

    .line 505
    .line 506
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    :cond_17
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 510
    .line 511
    if-eqz v1, :cond_18

    .line 512
    .line 513
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    .line 514
    .line 515
    .line 516
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 517
    .line 518
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setErrorState()V

    .line 519
    .line 520
    .line 521
    :cond_18
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 522
    .line 523
    if-eqz v1, :cond_19

    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 526
    .line 527
    .line 528
    :cond_19
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 529
    .line 530
    if-eqz v1, :cond_1b

    .line 531
    .line 532
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 533
    .line 534
    .line 535
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 536
    .line 537
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 541
    .line 542
    invoke-virtual {v1, v10}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 543
    .line 544
    .line 545
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p1, v10, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZ)V

    .line 551
    .line 552
    .line 553
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    .line 557
    .line 558
    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 559
    .line 560
    if-eqz v1, :cond_1a

    .line 561
    .line 562
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 563
    .line 564
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 568
    .line 569
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;

    .line 570
    .line 571
    invoke-direct {v1, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 575
    .line 576
    .line 577
    :cond_1a
    const v0, 0x7f100085

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget-object v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 585
    .line 586
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 590
    .line 591
    .line 592
    const v0, 0x7f100058

    .line 593
    .line 594
    .line 595
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :cond_1b
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 603
    .line 604
    if-eqz v0, :cond_1e

    .line 605
    .line 606
    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 607
    .line 608
    if-eqz v1, :cond_1c

    .line 609
    .line 610
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    const p0, 0x7f0a00cb

    .line 614
    .line 615
    .line 616
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object p0

    .line 620
    iput-object p0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardButtonLayout:Landroid/view/View;

    .line 621
    .line 622
    if-eqz p0, :cond_1e

    .line 623
    .line 624
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardButtonLayout:Landroid/view/View;

    .line 628
    .line 629
    const v0, 0x7f0a013d

    .line 630
    .line 631
    .line 632
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    check-cast p0, Landroid/widget/Button;

    .line 637
    .line 638
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;

    .line 639
    .line 640
    const/4 v1, 0x0

    .line 641
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    .line 646
    .line 647
    goto :goto_4

    .line 648
    :cond_1c
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    .line 650
    .line 651
    iput-boolean v3, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    .line 652
    .line 653
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 654
    .line 655
    invoke-virtual {v0, p0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 656
    .line 657
    .line 658
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 659
    .line 660
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;

    .line 661
    .line 662
    const/4 v1, 0x1

    .line 663
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    .line 668
    .line 669
    goto :goto_4

    .line 670
    :cond_1d
    if-ne v1, v4, :cond_1e

    .line 671
    .line 672
    new-instance p1, Landroid/os/Handler;

    .line 673
    .line 674
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 675
    .line 676
    .line 677
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;

    .line 678
    .line 679
    const/4 v1, 0x1

    .line 680
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;I)V

    .line 681
    .line 682
    .line 683
    const-wide/16 v1, 0x5dc

    .line 684
    .line 685
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    .line 687
    .line 688
    :cond_1e
    :goto_4
    return-void
.end method

.method public final onImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 2
    .line 3
    const-string v1, "BSS_FaceEnrollActivity"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "It\'s not face HAL"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "onImageProcessed : w="

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", h="

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", ori="

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ", imageFormat="

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p5, ", size="

    .line 65
    .line 66
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    array-length p5, p1

    .line 72
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p5

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string p5, "null"

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p5, ", b="

    .line 83
    .line 84
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    if-eqz p1, :cond_4

    .line 98
    .line 99
    array-length p5, p1

    .line 100
    if-nez p5, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object p5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 104
    .line 105
    iget-object p5, p5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    move-object v0, v7

    .line 110
    move-object v1, p0

    .line 111
    move-object v2, p1

    .line 112
    move-object v3, p6

    .line 113
    move v4, p2

    .line 114
    move v5, p3

    .line 115
    move v6, p4

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;[BLandroid/os/Bundle;III)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_4
    :goto_1
    const-string p0, "data is null or 0"

    .line 124
    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return-void
.end method
