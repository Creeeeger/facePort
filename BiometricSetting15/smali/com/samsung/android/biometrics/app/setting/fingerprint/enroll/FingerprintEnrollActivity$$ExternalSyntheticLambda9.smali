.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    const v0, 0x7f100107

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    .line 11
    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-ne p2, v2, :cond_0

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const p2, 0x7f100158

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x12c

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return p1

    .line 49
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 50
    .line 51
    sget-object v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 52
    .line 53
    if-eq v3, v4, :cond_1

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v4, 0xa

    .line 62
    .line 63
    if-ne v3, v4, :cond_2

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 70
    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    new-instance v3, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 81
    .line 82
    invoke-direct {v4, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    .line 86
    .line 87
    const-wide/16 v5, 0x14a

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eq v3, v2, :cond_3

    .line 97
    .line 98
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 99
    .line 100
    if-eqz v3, :cond_a

    .line 101
    .line 102
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 103
    .line 104
    if-eqz v3, :cond_a

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_a

    .line 111
    .line 112
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerPosition:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-static {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getInDisplayFingerPositionStringId(Landroid/graphics/Rect;FF)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerPosition:Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-nez v4, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    new-array v0, v2, [I

    .line 140
    .line 141
    fill-array-data v0, :array_0

    .line 142
    .line 143
    .line 144
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 145
    .line 146
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    add-int/2addr v2, v6

    .line 149
    const/4 v6, 0x2

    .line 150
    div-int/2addr v2, v6

    .line 151
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    add-int/2addr v7, v4

    .line 156
    div-int/2addr v7, v6

    .line 157
    int-to-float v2, v2

    .line 158
    cmpg-float v4, v5, v2

    .line 159
    .line 160
    if-gez v4, :cond_5

    .line 161
    .line 162
    move v2, p1

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    cmpl-float v2, v5, v2

    .line 165
    .line 166
    if-lez v2, :cond_6

    .line 167
    .line 168
    move v2, v6

    .line 169
    goto :goto_0

    .line 170
    :cond_6
    move v2, v1

    .line 171
    :goto_0
    int-to-float v4, v7

    .line 172
    cmpg-float v5, p2, v4

    .line 173
    .line 174
    if-gez v5, :cond_7

    .line 175
    .line 176
    move v6, p1

    .line 177
    goto :goto_1

    .line 178
    :cond_7
    cmpl-float p2, p2, v4

    .line 179
    .line 180
    if-lez p2, :cond_8

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    move v6, v1

    .line 184
    :goto_1
    mul-int/lit8 v6, v6, 0x3

    .line 185
    .line 186
    add-int/2addr v6, v2

    .line 187
    aget v0, v0, v6

    .line 188
    .line 189
    :goto_2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideStrId:I

    .line 190
    .line 191
    if-lez v3, :cond_9

    .line 192
    .line 193
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    .line 204
    .line 205
    :cond_a
    :goto_3
    return p1

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_0
    .array-data 4
        0x7f100103
        0x7f100101
        0x7f100102
        0x7f100106
        0x7f100107
        0x7f100105
        0x7f100109
        0x7f100107
        0x7f100108
    .end array-data
.end method
