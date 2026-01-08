.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

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
    const-string v1, "onEnrollmentError : errMsgId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , errString = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "BSS_FingerprintEnrollActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 29
    .line 30
    sget v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onEnrollmentHelp : helpMsgId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , helpString = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "BSS_FingerprintEnrollActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p2, ""

    .line 49
    .line 50
    :goto_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 7
    .line 8
    iget-boolean v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 9
    .line 10
    if-nez v4, :cond_c

    .line 11
    .line 12
    iget-boolean v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    rsub-int/lit8 v3, p1, 0x64

    .line 19
    .line 20
    sget v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->$r8$clinit:I

    .line 21
    .line 22
    const/16 v4, 0x50

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-lt v3, v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v4, 0x32

    .line 29
    .line 30
    int-to-double v6, v4

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    const/16 v4, 0x82

    .line 36
    .line 37
    int-to-double v8, v4

    .line 38
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    rsub-int p1, p1, 0x96

    .line 43
    .line 44
    int-to-double v10, p1

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    sub-double/2addr v10, v6

    .line 50
    sub-double/2addr v8, v6

    .line 51
    div-double/2addr v10, v8

    .line 52
    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    .line 53
    .line 54
    mul-double/2addr v10, v6

    .line 55
    double-to-int p1, v10

    .line 56
    if-lez v3, :cond_2

    .line 57
    .line 58
    div-int/2addr v3, v1

    .line 59
    rsub-int/lit8 v3, v3, 0x9

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v3, v5

    .line 63
    :goto_0
    add-int/2addr v3, p1

    .line 64
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 65
    .line 66
    iget v4, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 67
    .line 68
    if-ne v4, v3, :cond_3

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const/4 v6, 0x0

    .line 72
    const/16 v7, 0x80

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p1, v7, v6}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 80
    .line 81
    .line 82
    move p1, v8

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move p1, v5

    .line 85
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 86
    .line 87
    iput v3, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v4, "onEnrollmentProgress : "

    .line 92
    .line 93
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 97
    .line 98
    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "BSS_FingerprintEnrollActivity"

    .line 108
    .line 109
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 113
    .line 114
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 115
    .line 116
    const v9, 0x7f10014e

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    new-array v9, v8, [Ljava/lang/CharSequence;

    .line 124
    .line 125
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 126
    .line 127
    iget v10, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 128
    .line 129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const-string v11, "%d"

    .line 138
    .line 139
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    aput-object v10, v9, v5

    .line 144
    .line 145
    invoke-static {v3, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 157
    .line 158
    .line 159
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 160
    .line 161
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 162
    .line 163
    if-eqz v4, :cond_5

    .line 164
    .line 165
    iget v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 166
    .line 167
    int-to-float v3, v3

    .line 168
    invoke-virtual {v4, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(F)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 172
    .line 173
    iget-boolean v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 174
    .line 175
    if-nez v4, :cond_7

    .line 176
    .line 177
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 178
    .line 179
    if-eqz v4, :cond_6

    .line 180
    .line 181
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 182
    .line 183
    if-ge v4, v2, :cond_7

    .line 184
    .line 185
    :cond_6
    iget v4, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 186
    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    const v7, 0x7f1000a0

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v7, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 211
    .line 212
    iget v3, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 213
    .line 214
    if-ne v3, v2, :cond_c

    .line 215
    .line 216
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 217
    .line 218
    iput-object v2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 219
    .line 220
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 221
    .line 222
    if-eqz v2, :cond_9

    .line 223
    .line 224
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->completeScan()V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 230
    .line 231
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 232
    .line 233
    if-eqz v2, :cond_8

    .line 234
    .line 235
    iput-object v6, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchViewListener:Landroid/view/View$OnTouchListener;

    .line 236
    .line 237
    iput-object v6, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mRectFingerIcon:Landroid/graphics/Rect;

    .line 238
    .line 239
    :cond_8
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideHandler:Landroid/os/Handler;

    .line 240
    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 244
    .line 245
    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 251
    .line 252
    if-eqz p1, :cond_a

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->hide()V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 258
    .line 259
    iput-object v6, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 260
    .line 261
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 262
    .line 263
    iput-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 264
    .line 265
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 266
    .line 267
    iput-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    .line 268
    .line 269
    const/4 p1, -0x1

    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Landroid/os/Handler;

    .line 274
    .line 275
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 276
    .line 277
    .line 278
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 279
    .line 280
    invoke-direct {v2, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    const-wide/16 v3, 0x12c

    .line 284
    .line 285
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    .line 287
    .line 288
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    .line 289
    .line 290
    int-to-long v2, p1

    .line 291
    invoke-static {v8, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 292
    .line 293
    .line 294
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    .line 295
    .line 296
    int-to-long v2, p1

    .line 297
    const/4 p1, 0x2

    .line 298
    invoke-static {p1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 299
    .line 300
    .line 301
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    .line 302
    .line 303
    int-to-long v2, v2

    .line 304
    const/4 v4, 0x3

    .line 305
    invoke-static {v4, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 306
    .line 307
    .line 308
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    .line 309
    .line 310
    int-to-long v2, v2

    .line 311
    invoke-static {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 312
    .line 313
    .line 314
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    .line 315
    .line 316
    int-to-long v2, v0

    .line 317
    const/4 v0, 0x5

    .line 318
    invoke-static {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 319
    .line 320
    .line 321
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_LiftOff:I

    .line 322
    .line 323
    int-to-long v2, v0

    .line 324
    const/4 v0, 0x6

    .line 325
    invoke-static {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 326
    .line 327
    .line 328
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    .line 329
    .line 330
    int-to-long v2, v0

    .line 331
    const/4 v0, 0x7

    .line 332
    invoke-static {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 333
    .line 334
    .line 335
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_DoNotMove:I

    .line 336
    .line 337
    int-to-long v2, v0

    .line 338
    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IJ)V

    .line 339
    .line 340
    .line 341
    const/16 v0, 0x202a

    .line 342
    .line 343
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-wide/16 v1, -0x270f

    .line 348
    .line 349
    invoke-static {v1, v2, v0, v6, v6}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 353
    .line 354
    const/16 v0, 0x2046

    .line 355
    .line 356
    if-eqz p0, :cond_b

    .line 357
    .line 358
    invoke-static {v0, v8}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(II)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_b
    invoke-static {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(II)V

    .line 363
    .line 364
    .line 365
    :cond_c
    :goto_3
    return-void
.end method
