.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;
.super Landroid/app/Activity;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;
    }
.end annotation


# static fields
.field public static final TIME_ENROLL_DELAY:I


# instance fields
.field public mAddButtonArea:Landroid/widget/LinearLayout;

.field public final mAuthCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;

.field public mAuthErrorHandler:Landroid/os/Handler;

.field public mAuthErrorImage:Landroid/widget/ImageView;

.field public mAuthErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

.field public mAuthErrorText:Landroid/widget/TextView;

.field public mBackEnabled:Z

.field public final mBackHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;

.field public mChallenge:J

.field public mCompleteCheckDuration:I

.field public mCurrentPercent:I

.field public mDisplayType:I

.field public mDoNotMove:Z

.field public mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

.field public mEnrollHandler:Landroid/os/Handler;

.field public mEnrollStartRemainTime:J

.field public mEnrollStartTimer:Landroid/os/CountDownTimer;

.field public mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

.field public mEnrolledCount:I

.field public final mEnrollmentCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;

.field public mEnrollmentCancel:Landroid/os/CancellationSignal;

.field public mExitToast:Landroid/widget/Toast;

.field public mFilmErrorCount:I

.field public mFingerPosition:Landroid/graphics/Rect;

.field public mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field public mGkPwHandle:J

.field public mGuideStep:I

.field public mGuideTitle:Landroid/widget/TextView;

.field public mHideErrorHandler:Landroid/os/Handler;

.field public mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

.field public mImageViewKnoxBi:Landroid/widget/ImageView;

.field public mIsAdditionalRegistration:Z

.field public mIsBackSecond:Z

.field public mIsBlockedPowerKey:Z

.field public mIsButtonClicked:Z

.field public mIsCalledFingerLeave:Z

.field public mIsCalledLiftMsg:Z

.field public mIsCaptureStarted:Z

.field public mIsChallengeRequested:Z

.field public mIsDisplaySensor:Z

.field public mIsEnrollRequested:Z

.field public mIsFingerGestureSet:Z

.field public mIsFinishRegistration:Z

.field public mIsFirstGuideShow:Z

.field public mIsFirstGuideShowClose:Z

.field public mIsFoldingGuideShow:Z

.field public mIsForcedPortrait:Z

.field public mIsFromKnoxFingerprintPlus:Z

.field public mIsFromSetupWizard:Z

.field public mIsPauseRegistration:Z

.field public mIsReCreated:Z

.field public mIsRearSensor:Z

.field public mIsRegisterCompleted:Z

.field public mIsRotateGuideShow:Z

.field public mIsShowErrorMsg:Z

.field public mIsShowSensorErrorDialog:Z

.field public mIsShownLiftMsg:Z

.field public mIsSideSensor:Z

.field public mIsSkipGuideScreen:Z

.field public mIsSupportDualDisplay:Z

.field public mIsSupportFoldEnroll:Z

.field public mIsSwipeEnrollGuideShow:Z

.field public mIsSwipeEnrollTouchGuideShow:Z

.field public mIsTalkbackEnabled:Z

.field public mIsTouchedFingerFrame:Z

.field public mIsTouchedOutside:Z

.field public mIsTouchedSensorRectView:Z

.field public mIsTspBlock:Z

.field public mIsUSA:Z

.field public mIsVibrationSupport:Z

.field public mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

.field public mLogging_Dirty:I

.field public mLogging_DoNotMove:I

.field public mLogging_LiftOff:I

.field public mLogging_Ok:I

.field public mLogging_Partial:I

.field public mLogging_PressHarder:I

.field public mLogging_TooShort:I

.field public mLogging_UpAndDown:I

.field public mMaskViewToken:Landroid/os/IBinder;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mMsgHandler:Landroid/os/Handler;

.field public mMsgRunnable:Ljava/lang/Runnable;

.field public mNextButton:Landroid/widget/Button;

.field public mNextButtonArea:Landroid/widget/RelativeLayout;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRegisterScreen:Landroid/widget/RelativeLayout;

.field public mSecondGuideScreen:Landroid/widget/RelativeLayout;

.field public mSensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

.field public mSensorPositionView:Landroid/view/View;

.field public mSensorRectView:Landroid/view/View;

.field public mSensorStatus:I

.field public mShowErrorHandler:Landroid/os/Handler;

.field public mShowErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;

.field public mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

.field public mSurface:Landroid/view/Surface;

.field public mTextureView:Landroid/view/TextureView;

.field public mToken:[B

.field public mTouchGuideHandler:Landroid/os/Handler;

.field public mTouchGuideRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

.field public mTouchGuideStrId:I

.field public final mTouchGuideViewListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public mTxtViewProgress:Landroid/widget/TextView;

.field public mUnfoldGuideScreen:Landroid/widget/LinearLayout;

.field public mUserId:I


# direct methods
.method public static -$$Nest$msetViewVisibility(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public static -$$Nest$mshowAuthenticateResult(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 7

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    .line 28
    .line 29
    :cond_1
    const v1, 0x7f0a01cd

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f0a01c4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/16 v3, 0x271c

    .line 44
    .line 45
    const/16 v4, 0xc8

    .line 46
    .line 47
    if-eqz v1, :cond_8

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v5, 0xd4

    .line 53
    .line 54
    if-ne p1, v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->playTryOutGuide()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-ne p1, v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->playTryOutGuide()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 100
    .line 101
    .line 102
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    invoke-virtual {v1, v5, v6, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 112
    .line 113
    .line 114
    :cond_9
    const/4 v1, 0x4

    .line 115
    if-eq p1, v0, :cond_a

    .line 116
    .line 117
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_b

    .line 124
    .line 125
    const/16 v5, 0xcb

    .line 126
    .line 127
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v5, :cond_b

    .line 136
    .line 137
    if-eqz p2, :cond_b

    .line 138
    .line 139
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 150
    .line 151
    .line 152
    const p2, 0x7f1000bf

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    :cond_b
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const v5, 0x7f0a01ca

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v5, :cond_d

    .line 172
    .line 173
    if-eqz p2, :cond_d

    .line 174
    .line 175
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    const-string p2, "sec"

    .line 182
    .line 183
    if-ne p1, v0, :cond_c

    .line 184
    .line 185
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    const/16 v0, 0x258

    .line 190
    .line 191
    invoke-static {p2, v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_c
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    const/16 v0, 0x190

    .line 204
    .line 205
    invoke-static {p2, v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    const/16 p2, 0xd2

    .line 213
    .line 214
    invoke-virtual {p0, v5, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 215
    .line 216
    .line 217
    :cond_d
    const p2, 0x7f0a01c7

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Landroid/widget/ScrollView;

    .line 225
    .line 226
    if-eqz p2, :cond_e

    .line 227
    .line 228
    const/16 v0, 0x21

    .line 229
    .line 230
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 231
    .line 232
    .line 233
    :cond_e
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 234
    .line 235
    if-eqz p2, :cond_10

    .line 236
    .line 237
    if-eq p1, v3, :cond_10

    .line 238
    .line 239
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    if-nez p1, :cond_f

    .line 243
    .line 244
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 245
    .line 246
    const v0, 0x7f08007e

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_f
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 254
    .line 255
    const v0, 0x7f08007d

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    .line 260
    .line 261
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 262
    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    .line 264
    .line 265
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 266
    .line 267
    .line 268
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 269
    .line 270
    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 271
    .line 272
    .line 273
    :cond_10
    if-eqz p1, :cond_12

    .line 274
    .line 275
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    .line 276
    .line 277
    if-eqz p1, :cond_11

    .line 278
    .line 279
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 280
    .line 281
    if-eqz p2, :cond_11

    .line 282
    .line 283
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    .line 285
    .line 286
    :cond_11
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 287
    .line 288
    const/4 p2, 0x1

    .line 289
    invoke-direct {p1, p2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 293
    .line 294
    new-instance p1, Landroid/os/Handler;

    .line 295
    .line 296
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    .line 300
    .line 301
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 302
    .line 303
    const-wide/16 v0, 0x7d0

    .line 304
    .line 305
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    .line 307
    .line 308
    :cond_12
    :goto_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_REAR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "CountryISO"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "JP"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x7d0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x3e8

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    sput v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 38
    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    iput-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGkPwHandle:J

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 52
    .line 53
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFoldingGuideShow:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 64
    .line 65
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    .line 66
    .line 67
    const/16 v1, 0x3e8

    .line 68
    .line 69
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCompleteCheckDuration:I

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsAdditionalRegistration:Z

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    .line 92
    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    .line 96
    .line 97
    const-wide/16 v0, 0xc8

    .line 98
    .line 99
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartRemainTime:J

    .line 100
    .line 101
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;

    .line 107
    .line 108
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;

    .line 114
    .line 115
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideViewListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public final adjustTextureViewRatio(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-double v2, p1

    .line 17
    int-to-double p1, p2

    .line 18
    div-double/2addr v2, p1

    .line 19
    int-to-double p1, v1

    .line 20
    mul-double/2addr p1, v2

    .line 21
    double-to-int p1, p1

    .line 22
    sub-int p2, v0, p1

    .line 23
    .line 24
    div-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    int-to-float v0, v0

    .line 38
    div-float/2addr p1, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 42
    .line 43
    .line 44
    int-to-float p1, p2

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final changeGuideVideo(I)V
    .locals 4

    .line 1
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/16 v2, 0x12c

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    .line 14
    .line 15
    :cond_0
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const-string p1, "Exception"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    const-string p1, "Runtime Exception"

    .line 53
    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishRegistration()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    .line 2
    .line 3
    const-string v1, "BSS_FingerprintEnrollActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "finishRegistration() already run."

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "finishRegistration()"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 23
    .line 24
    new-instance v1, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "hw_auth_token"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v2, "enrollResult"

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->semOverridePendingTransition(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final getGuideClipURI(II)Landroid/net/Uri;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    move-object p1, v2

    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "sec_fingerprint_fold"

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string p1, "sec_fingerprint_unfold"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :pswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 24
    .line 25
    const-string p2, "sec_fingerprint_recognition_tap_fold"

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    :cond_1
    move-object p1, p2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-string p1, "sec_fingerprint_recognition_tap"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "sec_fingerprint_recognition_tap_tablet"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :pswitch_2
    if-ne p2, v0, :cond_4

    .line 48
    .line 49
    const-string p1, "sec_fingerprint_h_01"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const-string p1, "sec_fingerprint_h_02"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_3
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 56
    .line 57
    const-string v3, "sec_fingerprint_v_01"

    .line 58
    .line 59
    const-string v4, "sec_fingerprint_v_02"

    .line 60
    .line 61
    if-eqz p1, :cond_8

    .line 62
    .line 63
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 64
    .line 65
    if-ne p1, v1, :cond_6

    .line 66
    .line 67
    if-ne p2, v0, :cond_5

    .line 68
    .line 69
    const-string p1, "sec_fingerprint_v_fold_01"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const-string p1, "sec_fingerprint_v_fold_02"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    if-ne p2, v0, :cond_7

    .line 76
    .line 77
    :goto_0
    move-object p1, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_7
    move-object p1, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_8
    if-ne p2, v0, :cond_7

    .line 82
    .line 83
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 84
    .line 85
    if-nez p1, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_9

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "android.resource://"

    .line 97
    .line 98
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, "/raw/"

    .line 109
    .line 110
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_9
    return-object v2

    .line 125
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hideGuideScreen(I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 4
    .line 5
    const-wide/16 v2, 0x1f4

    .line 6
    .line 7
    const/16 v4, 0xc9

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/16 v7, 0xc8

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_1
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 21
    .line 22
    if-ne p1, v1, :cond_6

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 25
    .line 26
    if-eqz p1, :cond_6

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->show()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 41
    .line 42
    if-eqz p1, :cond_6

    .line 43
    .line 44
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :pswitch_2
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFoldingGuideShow:Z

    .line 52
    .line 53
    const/16 p1, 0xd3

    .line 54
    .line 55
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 69
    .line 70
    if-ne p1, v1, :cond_6

    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->show()V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 89
    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 93
    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 110
    .line 111
    .line 112
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :cond_3
    const/16 p1, 0x190

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 131
    .line 132
    .line 133
    new-instance p1, Landroid/os/Handler;

    .line 134
    .line 135
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 139
    .line 140
    const/4 v1, 0x6

    .line 141
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const-wide/16 v4, 0x12c

    .line 145
    .line 146
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    new-instance p1, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$9;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$9;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 164
    .line 165
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 174
    .line 175
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 176
    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Landroid/view/ViewGroup;

    .line 184
    .line 185
    if-eqz p1, :cond_4

    .line 186
    .line 187
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 193
    .line 194
    :cond_5
    new-instance p1, Landroid/os/Handler;

    .line 195
    .line 196
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 200
    .line 201
    const/4 v1, 0x5

    .line 202
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 209
    .line 210
    if-eqz p1, :cond_7

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 213
    .line 214
    .line 215
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 216
    .line 217
    if-eqz p1, :cond_8

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 223
    .line 224
    invoke-virtual {p1, v6}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 225
    .line 226
    .line 227
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 228
    .line 229
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 230
    .line 231
    if-eqz p1, :cond_9

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 234
    .line 235
    .line 236
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 237
    .line 238
    :cond_9
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final initLayoutHeight()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 14
    .line 15
    const v2, 0x7f0a0172

    .line 16
    .line 17
    .line 18
    const v3, 0x7f070175

    .line 19
    .line 20
    .line 21
    const v4, 0x7f0a0169

    .line 22
    .line 23
    .line 24
    const v5, 0x7f0a00cf

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    mul-float/2addr v3, v0

    .line 48
    float-to-int v0, v3

    .line 49
    const v3, 0x7f0a0171

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .line 64
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 65
    .line 66
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    .line 83
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 84
    .line 85
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 88
    .line 89
    .line 90
    :cond_1
    const v0, 0x7f0a016d

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const v6, 0x7f070142

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 115
    .line 116
    const v0, 0x7f0a016b

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const v6, 0x7f070143

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    .line 142
    const v0, 0x7f0a00cc

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const v6, 0x7f070145

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 167
    .line 168
    const v0, 0x7f0a016a

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    .line 195
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    const/4 v6, 0x2

    .line 200
    if-eqz v5, :cond_2

    .line 201
    .line 202
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_2
    const v5, 0x7f0a0115

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    .line 211
    .line 212
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mImageViewKnoxBi:Landroid/widget/ImageView;

    .line 213
    .line 214
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const v7, 0x7f07014d

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    float-to-int v6, v6

    .line 232
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    const v7, 0x7f07014b

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    float-to-int v6, v6

    .line 257
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    :cond_3
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 263
    .line 264
    int-to-float v0, v0

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const v3, 0x7f070162

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    mul-float/2addr v1, v0

    .line 277
    float-to-double v0, v1

    .line 278
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    if-eqz v3, :cond_4

    .line 283
    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    double-to-int v5, v0

    .line 289
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    .line 291
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 292
    .line 293
    .line 294
    :cond_4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    if-eqz p0, :cond_7

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    double-to-int v0, v0

    .line 305
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_5
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 312
    .line 313
    int-to-float v0, v0

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    const/high16 v3, 0x3f800000    # 1.0f

    .line 323
    .line 324
    sub-float/2addr v3, v1

    .line 325
    mul-float/2addr v3, v0

    .line 326
    const/high16 v0, 0x40000000    # 2.0f

    .line 327
    .line 328
    div-float/2addr v3, v0

    .line 329
    float-to-int v0, v3

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    const v3, 0x7f07015b

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    float-to-int v1, v1

    .line 342
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_6

    .line 347
    .line 348
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_6

    .line 353
    .line 354
    const v3, 0x7f070167

    .line 355
    .line 356
    .line 357
    const v7, 0x7f070172

    .line 358
    .line 359
    .line 360
    goto :goto_1

    .line 361
    :cond_6
    const v3, 0x7f070166

    .line 362
    .line 363
    .line 364
    const v7, 0x7f070171

    .line 365
    .line 366
    .line 367
    :goto_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v5, v0, v1, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWeight(II)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWeight(II)V

    .line 378
    .line 379
    .line 380
    const v2, 0x7f0a00cd

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWeight(II)V

    .line 384
    .line 385
    .line 386
    const v2, 0x7f0a016e

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v2, v0, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    .line 395
    .line 396
    const v2, 0x7f0a0190

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    invoke-virtual {p0, v0, v1, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 404
    .line 405
    .line 406
    :cond_7
    :goto_2
    return-void
.end method

.method public final isSystemKeyEventRequested(I)Z
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p1, p0}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "isSystemKeyEventRequested - "

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "BSS_FingerprintEnrollActivity"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 15
    .line 16
    const-string v2, "Fingerprint enroll screen is terminated by Back key !!"

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "hw_auth_token"

    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 43
    .line 44
    const-string v3, "enrollResult"

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsAdditionalRegistration:Z

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    const/16 v1, 0x202d

    .line 61
    .line 62
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 63
    .line 64
    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(II)V

    .line 65
    .line 66
    .line 67
    const/4 v1, -0x1

    .line 68
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    .line 80
    .line 81
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;

    .line 88
    .line 89
    const-wide/16 v2, 0x7d0

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 95
    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 99
    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 13
    .line 14
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x12c

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startEnrollStep()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/16 p1, 0x130

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_3
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const/16 p1, 0x12d

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 p1, 0x202c

    .line 55
    .line 56
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(II)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 66
    .line 67
    const/16 p1, 0xc9

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :sswitch_4
    const/16 p1, 0x202a

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/16 v0, 0x202b

    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-wide/16 v3, -0x270f

    .line 91
    .line 92
    invoke-static {v3, v4, p1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 102
    .line 103
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    .line 104
    .line 105
    new-instance p1, Landroid/content/Intent;

    .line 106
    .line 107
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v0, "hw_auth_token"

    .line 111
    .line 112
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    const-string v0, "enrollResult"

    .line 118
    .line 119
    const/4 v1, -0x1

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    const-string v0, "IsReCreated"

    .line 124
    .line 125
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 126
    .line 127
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->semOverridePendingTransition(II)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x7f0a0045 -> :sswitch_4
        0x7f0a0046 -> :sswitch_4
        0x7f0a00a5 -> :sswitch_3
        0x7f0a00a7 -> :sswitch_2
        0x7f0a00a8 -> :sswitch_3
        0x7f0a013e -> :sswitch_3
        0x7f0a0147 -> :sswitch_1
        0x7f0a0166 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x12d

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    .line 1
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    const-string v1, "onConfigurationChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a0121

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const v3, 0x7f070176

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->initLayoutHeight()V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    .line 53
    .line 54
    if-eqz v0, :cond_10

    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 57
    .line 58
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 63
    .line 64
    if-ne v0, v3, :cond_2

    .line 65
    .line 66
    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 67
    .line 68
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->initLayoutHeight()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 74
    .line 75
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 76
    .line 77
    if-eq v0, v4, :cond_3

    .line 78
    .line 79
    move v4, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v4, v1

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 84
    .line 85
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 86
    .line 87
    if-nez v4, :cond_5

    .line 88
    .line 89
    const/4 v4, 0x5

    .line 90
    if-ne v0, v4, :cond_5

    .line 91
    .line 92
    move v4, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    move v4, v1

    .line 95
    :goto_0
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 96
    .line 97
    :goto_1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 98
    .line 99
    const/16 v5, 0x12f

    .line 100
    .line 101
    const/4 v6, 0x3

    .line 102
    const/4 v7, 0x2

    .line 103
    if-eqz v4, :cond_9

    .line 104
    .line 105
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 106
    .line 107
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 108
    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 115
    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 119
    .line 120
    if-ne v3, v0, :cond_7

    .line 121
    .line 122
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 126
    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 130
    .line 131
    if-ne v3, v0, :cond_8

    .line 132
    .line 133
    iput v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 134
    .line 135
    :cond_8
    :goto_2
    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_9
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 140
    .line 141
    const/16 v8, 0x12c

    .line 142
    .line 143
    if-nez v4, :cond_b

    .line 144
    .line 145
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 146
    .line 147
    if-eqz v4, :cond_b

    .line 148
    .line 149
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 150
    .line 151
    if-ne v4, v0, :cond_b

    .line 152
    .line 153
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 154
    .line 155
    if-ne v0, v2, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 158
    .line 159
    .line 160
    :cond_a
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 161
    .line 162
    :cond_b
    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    .line 163
    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 166
    .line 167
    if-nez v0, :cond_f

    .line 168
    .line 169
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 170
    .line 171
    if-eq v0, v2, :cond_e

    .line 172
    .line 173
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 174
    .line 175
    if-nez v4, :cond_c

    .line 176
    .line 177
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 178
    .line 179
    if-ne v4, v3, :cond_c

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_c
    if-ne v0, v7, :cond_d

    .line 183
    .line 184
    const/16 v0, 0x12d

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_d
    if-ne v0, v6, :cond_10

    .line 191
    .line 192
    const/16 v0, 0x130

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_e
    :goto_3
    invoke-virtual {p0, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    .line 203
    .line 204
    if-eqz v0, :cond_10

    .line 205
    .line 206
    const/16 v0, 0x12e

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 209
    .line 210
    .line 211
    :cond_10
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 212
    .line 213
    if-eqz v0, :cond_12

    .line 214
    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 216
    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 220
    .line 221
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    .line 228
    .line 229
    .line 230
    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 231
    .line 232
    if-eqz v0, :cond_13

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 235
    .line 236
    .line 237
    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    const-string v1, "onCreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/high16 v2, 0x80000

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/Window;->addSystemFlags(I)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v1, 0x7f10010e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, " "

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, -0x1

    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    :try_start_0
    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-boolean v4, v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    .line 53
    .line 54
    iput v2, v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    .line 55
    .line 56
    const-string v6, "759-399-5199102"

    .line 57
    .line 58
    iput-object v6, v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->getUiVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iput-object v6, v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    .line 69
    .line 70
    iput-boolean v3, v5, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    .line 71
    .line 72
    invoke-static {v1, v5}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    const-string v1, "BSS_SALoggingHelper"

    .line 77
    .line 78
    const-string v5, "Exception occurred while SA logging setConfiguration"

    .line 79
    .line 80
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    const-string p1, "intent should have extra value"

    .line 94
    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    const-string v5, "fromSetupWizard"

    .line 103
    .line 104
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v6, "mIsFromSetupwizard : "

    .line 113
    .line 114
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const-string v5, "android.intent.extra.USER_ID"

    .line 130
    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 140
    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v6, "mUserId : "

    .line 144
    .line 145
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    const-string v5, "skipGuideScreen"

    .line 161
    .line 162
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 167
    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v6, "mIsSkipGuideScreen : "

    .line 171
    .line 172
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    const-string v5, "hw_auth_token"

    .line 188
    .line 189
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 194
    .line 195
    const-string v6, "challenge"

    .line 196
    .line 197
    const-wide/16 v7, 0x0

    .line 198
    .line 199
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v9

    .line 203
    iput-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mChallenge:J

    .line 204
    .line 205
    const-string v6, "gk_pw_handle"

    .line 206
    .line 207
    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_2

    .line 212
    .line 213
    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v9

    .line 217
    iput-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGkPwHandle:J

    .line 218
    .line 219
    :cond_2
    const-string v9, "IsReCreated"

    .line 220
    .line 221
    if-eqz p1, :cond_3

    .line 222
    .line 223
    invoke-virtual {p1, v9, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    iput-boolean v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 228
    .line 229
    const-string v9, "MaskViewToken"

    .line 230
    .line 231
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    iput-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    .line 236
    .line 237
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 238
    .line 239
    .line 240
    move-result-wide v9

    .line 241
    iput-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGkPwHandle:J

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_3
    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 249
    .line 250
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 251
    .line 252
    if-eqz p1, :cond_4

    .line 253
    .line 254
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsAdditionalRegistration:Z

    .line 255
    .line 256
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    sget-boolean v6, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 261
    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_5

    .line 267
    .line 268
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-virtual {p1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-eqz p1, :cond_5

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_5

    .line 287
    .line 288
    new-instance p1, Landroid/content/Intent;

    .line 289
    .line 290
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v6, "enrollResult"

    .line 294
    .line 295
    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 299
    .line 300
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 307
    .line 308
    .line 309
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-ne p1, v3, :cond_6

    .line 314
    .line 315
    move p1, v3

    .line 316
    goto :goto_3

    .line 317
    :cond_6
    move p1, v4

    .line 318
    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    .line 319
    .line 320
    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 321
    .line 322
    if-eqz v5, :cond_7

    .line 323
    .line 324
    if-nez p1, :cond_7

    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    const v5, 0x7f0b000f

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 338
    .line 339
    .line 340
    :cond_7
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 341
    .line 342
    if-eqz p1, :cond_8

    .line 343
    .line 344
    const v5, 0x7f0d0030

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_8
    const v5, 0x7f0d003b

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 355
    .line 356
    .line 357
    :goto_4
    const-string v5, "isFromKnoxFingerprintPlus"

    .line 358
    .line 359
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    .line 364
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v5, "onCreate : isFromKnoxFingerprintPlus = "

    .line 368
    .line 369
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    .line 373
    .line 374
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    const-class v1, Landroid/os/Vibrator;

    .line 385
    .line 386
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Landroid/os/Vibrator;

    .line 391
    .line 392
    const/4 v5, 0x2

    .line 393
    if-eqz v1, :cond_a

    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-lt v1, v5, :cond_a

    .line 400
    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v6, "VIB_FEEDBACK_MAGNITUDE"

    .line 410
    .line 411
    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-gtz v1, :cond_9

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_9
    move v1, v3

    .line 419
    goto :goto_6

    .line 420
    :cond_a
    :goto_5
    move v1, v4

    .line 421
    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    .line 422
    .line 423
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 428
    .line 429
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    const-string v6, "CountryISO"

    .line 434
    .line 435
    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const-string v6, "US"

    .line 440
    .line 441
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsUSA:Z

    .line 446
    .line 447
    const-class v1, Landroid/os/PowerManager;

    .line 448
    .line 449
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    check-cast v1, Landroid/os/PowerManager;

    .line 454
    .line 455
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 456
    .line 457
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 458
    .line 459
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 464
    .line 465
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 466
    .line 467
    const/4 v6, 0x0

    .line 468
    if-eqz v1, :cond_11

    .line 469
    .line 470
    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGkPwHandle:J

    .line 471
    .line 472
    cmp-long v1, v9, v7

    .line 473
    .line 474
    if-nez v1, :cond_b

    .line 475
    .line 476
    goto/16 :goto_8

    .line 477
    .line 478
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 479
    .line 480
    if-eqz v1, :cond_c

    .line 481
    .line 482
    array-length v7, v1

    .line 483
    if-ne v7, v3, :cond_d

    .line 484
    .line 485
    aget-byte v1, v1, v4

    .line 486
    .line 487
    if-ne v1, v2, :cond_d

    .line 488
    .line 489
    :cond_c
    const-string v1, "Token is not available. Request generateChallenge"

    .line 490
    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsChallengeRequested:Z

    .line 495
    .line 496
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 497
    .line 498
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 499
    .line 500
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda4;

    .line 501
    .line 502
    invoke-direct {v7, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v2, v7}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 506
    .line 507
    .line 508
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 509
    .line 510
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 515
    .line 516
    iget v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 517
    .line 518
    invoke-virtual {v2, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 527
    .line 528
    if-lt v2, v1, :cond_e

    .line 529
    .line 530
    const-string v1, "onCreate: Max Enrolled Fingerprints"

    .line 531
    .line 532
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 536
    .line 537
    .line 538
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 539
    .line 540
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 545
    .line 546
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    .line 551
    .line 552
    if-eqz v1, :cond_10

    .line 553
    .line 554
    const v7, 0x186c8

    .line 555
    .line 556
    .line 557
    if-eq v2, v7, :cond_f

    .line 558
    .line 559
    const v7, 0x186c9

    .line 560
    .line 561
    .line 562
    if-eq v2, v7, :cond_f

    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_f
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 566
    .line 567
    if-eqz v1, :cond_12

    .line 568
    .line 569
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 570
    .line 571
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    .line 576
    .line 577
    goto :goto_9

    .line 578
    :cond_10
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v7, "[onCreate] isHardwareDetected = "

    .line 581
    .line 582
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v1, ", requestGetSensorStatus = "

    .line 589
    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    .line 594
    .line 595
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    .line 606
    .line 607
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    goto :goto_9

    .line 611
    :cond_11
    :goto_8
    const-string v1, "FingerprintManager is null or GkPwHandle is 0L."

    .line 612
    .line 613
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 617
    .line 618
    .line 619
    :cond_12
    :goto_9
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_REAR:Z

    .line 620
    .line 621
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 622
    .line 623
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_SIDE:Z

    .line 624
    .line 625
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 626
    .line 627
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 628
    .line 629
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 630
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string v2, "onCreate : mIsRearSensor="

    .line 634
    .line 635
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 639
    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v2, ",mIsSideSensor="

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 649
    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string v2, ",mIsDisplaySensor="

    .line 654
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 659
    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string v2, ",mIsSensorInLandscape=false"

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 676
    .line 677
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    .line 678
    .line 679
    if-eqz v1, :cond_13

    .line 680
    .line 681
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 682
    .line 683
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;-><init>(Landroid/content/Context;)V

    .line 684
    .line 685
    .line 686
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->height:I

    .line 687
    .line 688
    if-lez v1, :cond_13

    .line 689
    .line 690
    move v1, v3

    .line 691
    goto :goto_a

    .line 692
    :cond_13
    move v1, v4

    .line 693
    :goto_a
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 694
    .line 695
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 704
    .line 705
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 706
    .line 707
    const v1, 0x7f0a0171

    .line 708
    .line 709
    .line 710
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 715
    .line 716
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 717
    .line 718
    const v1, 0x7f0a00cf

    .line 719
    .line 720
    .line 721
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 726
    .line 727
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 728
    .line 729
    if-nez p1, :cond_14

    .line 730
    .line 731
    const v1, 0x7f0a0190

    .line 732
    .line 733
    .line 734
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 739
    .line 740
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    .line 741
    .line 742
    const v1, 0x7f0a01f4

    .line 743
    .line 744
    .line 745
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    check-cast v1, Landroid/widget/LinearLayout;

    .line 750
    .line 751
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/LinearLayout;

    .line 752
    .line 753
    :cond_14
    const v1, 0x7f0a00cd

    .line 754
    .line 755
    .line 756
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 761
    .line 762
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    .line 763
    .line 764
    const v1, 0x7f0a015e

    .line 765
    .line 766
    .line 767
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    check-cast v1, Landroid/widget/TextView;

    .line 772
    .line 773
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 774
    .line 775
    const v2, 0x7f10014e

    .line 776
    .line 777
    .line 778
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    new-array v6, v3, [Ljava/lang/CharSequence;

    .line 783
    .line 784
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    const-string v8, "%d"

    .line 793
    .line 794
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v7

    .line 798
    aput-object v7, v6, v4

    .line 799
    .line 800
    invoke-static {v2, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    .line 806
    .line 807
    const v1, 0x7f0a016c

    .line 808
    .line 809
    .line 810
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    check-cast v1, Landroid/widget/TextView;

    .line 815
    .line 816
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 817
    .line 818
    const v2, 0x7f070160

    .line 819
    .line 820
    .line 821
    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 822
    .line 823
    .line 824
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 825
    .line 826
    const/4 v2, 0x4

    .line 827
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    .line 829
    .line 830
    const v1, 0x7f0a0115

    .line 831
    .line 832
    .line 833
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    check-cast v1, Landroid/widget/ImageView;

    .line 838
    .line 839
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mImageViewKnoxBi:Landroid/widget/ImageView;

    .line 840
    .line 841
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    .line 842
    .line 843
    .line 844
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 845
    .line 846
    if-eqz v1, :cond_15

    .line 847
    .line 848
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 849
    .line 850
    if-eqz v1, :cond_15

    .line 851
    .line 852
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 853
    .line 854
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 855
    .line 856
    :cond_15
    const v1, 0x7f0a0046

    .line 857
    .line 858
    .line 859
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    check-cast v1, Landroid/widget/Button;

    .line 864
    .line 865
    if-eqz v1, :cond_16

    .line 866
    .line 867
    const v2, 0x7f1000e9

    .line 868
    .line 869
    .line 870
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v1, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 881
    .line 882
    .line 883
    :cond_16
    const v1, 0x7f0a00a8

    .line 884
    .line 885
    .line 886
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    check-cast v1, Landroid/widget/Button;

    .line 891
    .line 892
    if-eqz v1, :cond_17

    .line 893
    .line 894
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 898
    .line 899
    .line 900
    :cond_17
    const v1, 0x7f0a00a5

    .line 901
    .line 902
    .line 903
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    check-cast v1, Landroid/widget/Button;

    .line 908
    .line 909
    if-eqz v1, :cond_18

    .line 910
    .line 911
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 915
    .line 916
    .line 917
    :cond_18
    if-nez p1, :cond_19

    .line 918
    .line 919
    goto :goto_b

    .line 920
    :cond_19
    const v1, 0x7f0a0166

    .line 921
    .line 922
    .line 923
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    check-cast v1, Landroid/widget/Button;

    .line 928
    .line 929
    if-eqz v1, :cond_1a

    .line 930
    .line 931
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 935
    .line 936
    .line 937
    :cond_1a
    :goto_b
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 938
    .line 939
    if-eqz v1, :cond_1d

    .line 940
    .line 941
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    .line 942
    .line 943
    const v1, 0x7f0a013d

    .line 944
    .line 945
    .line 946
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 951
    .line 952
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 953
    .line 954
    const v1, 0x7f0a0047

    .line 955
    .line 956
    .line 957
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    check-cast v1, Landroid/widget/LinearLayout;

    .line 962
    .line 963
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAddButtonArea:Landroid/widget/LinearLayout;

    .line 964
    .line 965
    const v1, 0x7f0a013e

    .line 966
    .line 967
    .line 968
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    check-cast v1, Landroid/widget/Button;

    .line 973
    .line 974
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    .line 975
    .line 976
    if-eqz v1, :cond_1b

    .line 977
    .line 978
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    .line 980
    .line 981
    :cond_1b
    if-eqz p1, :cond_1c

    .line 982
    .line 983
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 984
    .line 985
    if-eqz v1, :cond_1c

    .line 986
    .line 987
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda6;

    .line 988
    .line 989
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 993
    .line 994
    .line 995
    :cond_1c
    const v1, 0x7f0a0045

    .line 996
    .line 997
    .line 998
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 999
    .line 1000
    .line 1001
    move-result-object v1

    .line 1002
    check-cast v1, Landroid/widget/Button;

    .line 1003
    .line 1004
    if-eqz v1, :cond_1d

    .line 1005
    .line 1006
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    .line 1008
    .line 1009
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->initLayoutHeight()V

    .line 1010
    .line 1011
    .line 1012
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 1013
    .line 1014
    if-eqz v1, :cond_1e

    .line 1015
    .line 1016
    goto :goto_e

    .line 1017
    :cond_1e
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 1018
    .line 1019
    if-eqz v1, :cond_1f

    .line 1020
    .line 1021
    const/16 v1, 0x1a

    .line 1022
    .line 1023
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 1024
    .line 1025
    .line 1026
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    .line 1027
    .line 1028
    goto :goto_e

    .line 1029
    :cond_1f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    .line 1034
    .line 1035
    const-string v6, ""

    .line 1036
    .line 1037
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v1

    .line 1045
    if-eqz v1, :cond_20

    .line 1046
    .line 1047
    goto :goto_c

    .line 1048
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const-string v2, "navigation_bar_gesture_while_hidden"

    .line 1053
    .line 1054
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-eqz v1, :cond_21

    .line 1059
    .line 1060
    goto :goto_d

    .line 1061
    :cond_21
    :goto_c
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    .line 1062
    .line 1063
    :goto_d
    const/4 v1, 0x3

    .line 1064
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 1065
    .line 1066
    .line 1067
    const/16 v1, 0xbb

    .line 1068
    .line 1069
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 1070
    .line 1071
    .line 1072
    const/16 v1, 0x3e9

    .line 1073
    .line 1074
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 1075
    .line 1076
    .line 1077
    :goto_e
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 1078
    .line 1079
    if-nez v1, :cond_22

    .line 1080
    .line 1081
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 1082
    .line 1083
    if-eqz v1, :cond_22

    .line 1084
    .line 1085
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 1098
    .line 1099
    .line 1100
    move-result v2

    .line 1101
    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    invoke-interface {v1, v5}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 1117
    .line 1118
    .line 1119
    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    const-string v2, "fingerprint_gesture_quick"

    .line 1124
    .line 1125
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1126
    .line 1127
    .line 1128
    move-result v1

    .line 1129
    if-eqz v1, :cond_23

    .line 1130
    .line 1131
    goto :goto_f

    .line 1132
    :cond_23
    move v3, v4

    .line 1133
    :goto_f
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    .line 1134
    .line 1135
    if-eqz v3, :cond_24

    .line 1136
    .line 1137
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1142
    .line 1143
    .line 1144
    :cond_24
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 1145
    .line 1146
    if-nez v1, :cond_25

    .line 1147
    .line 1148
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 1149
    .line 1150
    const/4 v2, 0x5

    .line 1151
    if-ne v1, v2, :cond_25

    .line 1152
    .line 1153
    const/16 p1, 0x12f

    .line 1154
    .line 1155
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 1156
    .line 1157
    .line 1158
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 1159
    .line 1160
    goto :goto_11

    .line 1161
    :cond_25
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 1162
    .line 1163
    if-nez v1, :cond_28

    .line 1164
    .line 1165
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 1166
    .line 1167
    if-nez v1, :cond_28

    .line 1168
    .line 1169
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISABLED_MENU_K05:Z

    .line 1170
    .line 1171
    if-eqz v1, :cond_26

    .line 1172
    .line 1173
    goto :goto_10

    .line 1174
    :cond_26
    const/16 v1, 0x12c

    .line 1175
    .line 1176
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    .line 1177
    .line 1178
    .line 1179
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 1180
    .line 1181
    if-eqz v1, :cond_29

    .line 1182
    .line 1183
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1184
    .line 1185
    if-eqz v1, :cond_29

    .line 1186
    .line 1187
    const-string v1, "Request calibration"

    .line 1188
    .line 1189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .line 1191
    .line 1192
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1193
    .line 1194
    if-eqz v0, :cond_29

    .line 1195
    .line 1196
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 1197
    .line 1198
    if-eqz v1, :cond_29

    .line 1199
    .line 1200
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 1201
    .line 1202
    if-eqz v1, :cond_27

    .line 1203
    .line 1204
    if-nez p1, :cond_27

    .line 1205
    .line 1206
    goto :goto_11

    .line 1207
    :cond_27
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semForceCBGE()I

    .line 1208
    .line 1209
    .line 1210
    const-wide/16 v0, 0x7d0

    .line 1211
    .line 1212
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartRemainTime:J

    .line 1213
    .line 1214
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$13;

    .line 1215
    .line 1216
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$13;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p1

    .line 1223
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartTimer:Landroid/os/CountDownTimer;

    .line 1224
    .line 1225
    new-instance p1, Landroid/view/View;

    .line 1226
    .line 1227
    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1228
    .line 1229
    .line 1230
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 1231
    .line 1232
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1233
    .line 1234
    .line 1235
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 1236
    .line 1237
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda0;

    .line 1238
    .line 1239
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1243
    .line 1244
    .line 1245
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 1246
    .line 1247
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    .line 1248
    .line 1249
    .line 1250
    goto :goto_11

    .line 1251
    :cond_28
    :goto_10
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 1252
    .line 1253
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startEnrollStep()V

    .line 1257
    .line 1258
    .line 1259
    :cond_29
    :goto_11
    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onMultiWindowModeChanged: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BSS_FingerprintEnrollActivity"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v0, 0x7f1000a7

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 1
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    const-string v1, "onPause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x1a

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 30
    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const/16 v1, 0xbb

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    const/16 v1, 0x3e9

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    .line 68
    .line 69
    .line 70
    const-string v1, "cancelEnrollment"

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 84
    .line 85
    .line 86
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 87
    .line 88
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 98
    .line 99
    .line 100
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 101
    .line 102
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 112
    .line 113
    .line 114
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 115
    .line 116
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 117
    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->hide()V

    .line 121
    .line 122
    .line 123
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 124
    .line 125
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 126
    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->hide()V

    .line 130
    .line 131
    .line 132
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 133
    .line 134
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollHandler:Landroid/os/Handler;

    .line 135
    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartTimer:Landroid/os/CountDownTimer;

    .line 142
    .line 143
    if-eqz v1, :cond_b

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 146
    .line 147
    .line 148
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartTimer:Landroid/os/CountDownTimer;

    .line 149
    .line 150
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 151
    .line 152
    if-eqz v1, :cond_c

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 160
    .line 161
    .line 162
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 163
    .line 164
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 165
    .line 166
    if-eqz v1, :cond_d

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 169
    .line 170
    .line 171
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 172
    .line 173
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 174
    .line 175
    if-eqz v1, :cond_e

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 178
    .line 179
    .line 180
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 181
    .line 182
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 183
    .line 184
    if-eqz v1, :cond_f

    .line 185
    .line 186
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 187
    .line 188
    if-eqz v3, :cond_f

    .line 189
    .line 190
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    .line 193
    .line 194
    .line 195
    :cond_f
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    .line 196
    .line 197
    if-eqz v1, :cond_10

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v3, "fingerprint_gesture_quick"

    .line 204
    .line 205
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    .line 207
    .line 208
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_14

    .line 213
    .line 214
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 215
    .line 216
    if-nez v1, :cond_14

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_14

    .line 223
    .line 224
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 225
    .line 226
    if-eqz v1, :cond_11

    .line 227
    .line 228
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 229
    .line 230
    iget-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mChallenge:J

    .line 231
    .line 232
    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 233
    .line 234
    .line 235
    :cond_11
    new-instance v1, Landroid/content/Intent;

    .line 236
    .line 237
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v3, "biometrics_settings_destroy"

    .line 241
    .line 242
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    const-string v3, "enrollResult"

    .line 246
    .line 247
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 251
    .line 252
    if-eqz v3, :cond_12

    .line 253
    .line 254
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    .line 255
    .line 256
    if-nez v3, :cond_12

    .line 257
    .line 258
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 259
    .line 260
    if-eqz v3, :cond_12

    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_12

    .line 267
    .line 268
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    .line 273
    .line 274
    if-eqz v0, :cond_13

    .line 275
    .line 276
    const/4 v2, -0x1

    .line 277
    :cond_13
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 278
    .line 279
    .line 280
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 281
    .line 282
    .line 283
    :cond_14
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 5
    .line 6
    const-string v1, "onResume"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "id"

    .line 32
    .line 33
    const-string v3, "android"

    .line 34
    .line 35
    const-string v4, "reduce_window"

    .line 36
    .line 37
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const v0, 0x7f100119

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$2;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v0, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 81
    .line 82
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    const/16 v3, 0xb

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 98
    .line 99
    .line 100
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 103
    .line 104
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 5
    .line 6
    const-string v1, "onSaveInstanceState"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v0, "IsReCreated"

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v0, "MaskViewToken"

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "gk_pw_handle"

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGkPwHandle:J

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 1
    const-string p2, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    new-instance p3, Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 9
    .line 10
    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFoldingGuideShow:Z

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x12f

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    move v1, v0

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 25
    .line 26
    if-nez p1, :cond_5

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const/16 p1, 0x12d

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_2
    :goto_1
    move v1, p3

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const/16 p1, 0x12e

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 p1, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    :goto_2
    const/16 p1, 0x12c

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_3
    if-eqz p1, :cond_8

    .line 70
    .line 71
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 72
    .line 73
    if-nez v2, :cond_6

    .line 74
    .line 75
    new-instance v2, Landroid/media/MediaPlayer;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 86
    .line 87
    const/16 v3, 0x9c4

    .line 88
    .line 89
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    .line 94
    const v3, 0x88bc

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 102
    .line 103
    .line 104
    move p3, v0

    .line 105
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 120
    .line 121
    .line 122
    if-eqz p3, :cond_7

    .line 123
    .line 124
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 138
    .line 139
    .line 140
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 141
    .line 142
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$18;

    .line 143
    .line 144
    invoke-direct {p3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$18;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 151
    .line 152
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$19;

    .line 153
    .line 154
    invoke-direct {p3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$19;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :catch_0
    const-string p1, "IOException"

    .line 162
    .line 163
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :catch_1
    const-string p1, "IllegalStateException"

    .line 171
    .line 172
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :catch_2
    const-string p1, "SecurityException"

    .line 180
    .line 181
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catch_3
    const-string p1, "IllegalArgumentException"

    .line 189
    .line 190
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_6
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->adjustTextureViewRatio(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, "BSS_FingerprintEnrollActivity"

    .line 16
    .line 17
    const-string p2, "Remove_Error_Runnable"

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "onWindowFocusChanged : "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final playTryOutGuide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p0, "BSS_FingerprintEnrollActivity"

    .line 21
    .line 22
    const-string v0, "Exception during play TryOut Guide"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final removeErrorMessageHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final requestSystemKeyEvent(IZ)V
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p1, p0, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "requestSystemKeyEvent - "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "BSS_FingerprintEnrollActivity"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final runTextToSpeech(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p2, p1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setFingerGuideTitle(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "BSS_FingerprintEnrollActivity"

    .line 6
    .line 7
    const-string p1, "mGuideTitle is NULL"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 14
    .line 15
    const/16 v2, 0x191

    .line 16
    .line 17
    const v3, 0x7f1000db

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x193

    .line 21
    .line 22
    const v5, 0x7f1000e1

    .line 23
    .line 24
    .line 25
    const-string v6, "\n"

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    if-ne p1, v4, :cond_2

    .line 31
    .line 32
    const p1, 0x7f0a016a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge p1, v0, :cond_6

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    if-ne p1, v2, :cond_4

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    const p1, 0x7f1000ed

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const p1, 0x7f1000ae

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, v7, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 110
    .line 111
    if-eqz p0, :cond_5

    .line 112
    .line 113
    const p0, 0x7f1000ec

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    const p0, 0x7f1000ad

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_2
    return-void

    .line 124
    :cond_7
    const/16 v1, 0x190

    .line 125
    .line 126
    if-eq p1, v1, :cond_b

    .line 127
    .line 128
    if-eq p1, v2, :cond_a

    .line 129
    .line 130
    if-eq p1, v4, :cond_8

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_8
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, v7, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 151
    .line 152
    if-ge v0, p1, :cond_f

    .line 153
    .line 154
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    .line 155
    .line 156
    if-nez p1, :cond_f

    .line 157
    .line 158
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 159
    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const v1, 0x7f10010c

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, v7, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_a
    const p1, 0x7f1000df

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p0, v7, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 232
    .line 233
    if-eqz p1, :cond_d

    .line 234
    .line 235
    const p1, 0x7f100156

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    .line 240
    .line 241
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    .line 242
    .line 243
    if-eqz p1, :cond_c

    .line 244
    .line 245
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const v1, 0x7f100153

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 271
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const v1, 0x7f1000e7

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_d
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    .line 296
    .line 297
    if-nez p0, :cond_e

    .line 298
    .line 299
    const p0, 0x7f100152

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_e
    const p0, 0x7f100150

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 310
    .line 311
    .line 312
    :cond_f
    :goto_3
    return-void
.end method

.method public final setSensorPosition(Landroid/view/View;Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerPosition:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-eq v1, v4, :cond_5

    .line 42
    .line 43
    if-eq v1, v2, :cond_7

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    if-eq v1, v4, :cond_2

    .line 47
    .line 48
    move v1, v3

    .line 49
    move v4, v1

    .line 50
    move v5, v4

    .line 51
    :goto_0
    move v6, v5

    .line 52
    move v7, v6

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    div-int/lit8 v5, v1, 0x3

    .line 66
    .line 67
    div-int/lit8 v6, v4, 0xa

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v5, v3

    .line 71
    move v6, v5

    .line 72
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const v8, 0x10502c9

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    :goto_2
    move v7, v3

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    div-int/lit8 v5, v1, 0x3

    .line 109
    .line 110
    div-int/lit8 v6, v4, 0xa

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move v5, v3

    .line 114
    move v6, v5

    .line 115
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    if-eqz v7, :cond_4

    .line 128
    .line 129
    invoke-virtual {v7}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    if-eqz v7, :cond_4

    .line 134
    .line 135
    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz p2, :cond_8

    .line 149
    .line 150
    div-int/lit8 v5, v1, 0xa

    .line 151
    .line 152
    div-int/lit8 v6, v4, 0x3

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    move v5, v3

    .line 156
    goto :goto_0

    .line 157
    :goto_4
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v8, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 163
    .line 164
    add-int/2addr v1, v5

    .line 165
    sub-int/2addr v1, v7

    .line 166
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 167
    .line 168
    .line 169
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 170
    .line 171
    sub-int/2addr v1, v5

    .line 172
    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 173
    .line 174
    if-eqz p2, :cond_9

    .line 175
    .line 176
    iget p2, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 177
    .line 178
    mul-int/lit8 v1, v6, 0x2

    .line 179
    .line 180
    sub-int/2addr p2, v1

    .line 181
    iput p2, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 182
    .line 183
    iget p2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 184
    .line 185
    mul-int/2addr v5, v2

    .line 186
    sub-int/2addr p2, v5

    .line 187
    iput p2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 188
    .line 189
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    const-string v1, "android"

    .line 194
    .line 195
    const-string v2, "status_bar_height"

    .line 196
    .line 197
    const-string v4, "dimen"

    .line 198
    .line 199
    invoke-virtual {p2, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-lez p2, :cond_a

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :cond_a
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 214
    .line 215
    sub-int/2addr p2, v3

    .line 216
    add-int/2addr p2, v6

    .line 217
    iput p2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 218
    .line 219
    invoke-virtual {p0, p1, v8}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    :cond_b
    :goto_5
    return-void
.end method

.method public final setViewWeight(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final showErrorMessage(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "imageQuality["

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "BSS_FingerprintEnrollActivity"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-eq p1, v3, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x3eb

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    :cond_1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    .line 47
    .line 48
    add-int/2addr v0, v3

    .line 49
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    .line 50
    .line 51
    const/16 v4, 0xa

    .line 52
    .line 53
    if-ne v0, v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v4, "fingerprint_protective_film_guideline_displayed"

    .line 60
    .line 61
    invoke-static {v0, v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v5, 0x2

    .line 66
    if-ge v0, v5, :cond_2

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    const/16 p2, 0x258

    .line 70
    .line 71
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    add-int/2addr v0, v3

    .line 79
    invoke-static {p0, v4, v3, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    .line 84
    .line 85
    .line 86
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 91
    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 106
    .line 107
    const/16 v4, 0xcb

    .line 108
    .line 109
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 110
    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    .line 120
    .line 121
    :cond_5
    if-nez v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    new-instance v0, Landroid/os/Handler;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    .line 142
    .line 143
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;

    .line 144
    .line 145
    invoke-direct {v2, p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;

    .line 149
    .line 150
    const-wide/16 v3, 0xc8

    .line 151
    .line 152
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 156
    .line 157
    if-nez p2, :cond_7

    .line 158
    .line 159
    new-instance p2, Landroid/os/Handler;

    .line 160
    .line 161
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 165
    .line 166
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 167
    .line 168
    const/4 v0, 0x2

    .line 169
    invoke-direct {p2, v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 173
    .line 174
    :cond_7
    if-eqz p1, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 179
    .line 180
    const-wide/16 v2, 0x1388

    .line 181
    .line 182
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string p2, "Run_Runnable_ErrorMSG : "

    .line 189
    .line 190
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :cond_8
    return-void
.end method

.method public final showGuideScreen(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    .line 31
    .line 32
    :cond_1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 33
    .line 34
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 35
    .line 36
    const/16 v3, 0xc9

    .line 37
    .line 38
    const/16 v4, 0xcf

    .line 39
    .line 40
    const/16 v5, 0xd3

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :pswitch_0
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollTouchGuideShow:Z

    .line 49
    .line 50
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 55
    .line 56
    if-ne p1, v1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->removeView()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    const p1, 0x7f0a01d1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a01d2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    if-eqz p1, :cond_5

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const v1, 0x7f1000b6

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, " "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const v1, 0x7f1000b7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    const p1, 0x7f0a01d0

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroid/view/TextureView;

    .line 180
    .line 181
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 182
    .line 183
    const p1, 0x7f100059

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_6

    .line 194
    .line 195
    :pswitch_1
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFoldingGuideShow:Z

    .line 196
    .line 197
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 198
    .line 199
    if-ne p1, v1, :cond_7

    .line 200
    .line 201
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_6

    .line 219
    .line 220
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->removeView()V

    .line 223
    .line 224
    .line 225
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    .line 226
    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 230
    .line 231
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 232
    .line 233
    .line 234
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 239
    .line 240
    const/4 v0, 0x5

    .line 241
    if-ne p1, v0, :cond_8

    .line 242
    .line 243
    const p1, 0x7f10014f

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_8
    const p1, 0x7f100151

    .line 248
    .line 249
    .line 250
    :goto_0
    const v0, 0x7f0a00d2

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    .line 263
    .line 264
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f0a01f3

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/view/TextureView;

    .line 277
    .line 278
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_6

    .line 288
    .line 289
    :pswitch_2
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    .line 290
    .line 291
    const p1, 0x7f0a01c9

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Landroid/widget/TextView;

    .line 299
    .line 300
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 301
    .line 302
    const p1, 0x7f0a01c6

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Landroid/widget/ImageView;

    .line 310
    .line 311
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    .line 312
    .line 313
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 314
    .line 315
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 316
    .line 317
    .line 318
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 319
    .line 320
    if-eqz p1, :cond_b

    .line 321
    .line 322
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 323
    .line 324
    const/4 v0, 0x4

    .line 325
    if-eqz p1, :cond_a

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAddButtonArea:Landroid/widget/LinearLayout;

    .line 331
    .line 332
    if-eqz p1, :cond_b

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :cond_b
    const p1, 0x7f0a01cb

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Landroid/view/TextureView;

    .line 345
    .line 346
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 347
    .line 348
    const p1, 0x7f0a01ca

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Landroid/widget/TextView;

    .line 356
    .line 357
    if-eqz p1, :cond_c

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 371
    .line 372
    if-eqz p1, :cond_1d

    .line 373
    .line 374
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 375
    .line 376
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-eqz p1, :cond_f

    .line 381
    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 387
    .line 388
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 389
    .line 390
    if-eqz p1, :cond_e

    .line 391
    .line 392
    const-string v1, "persona"

    .line 393
    .line 394
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 399
    .line 400
    if-eqz v1, :cond_e

    .line 401
    .line 402
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-eqz v3, :cond_d

    .line 407
    .line 408
    const v0, 0x7f10015e

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    goto :goto_1

    .line 416
    :cond_d
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    goto :goto_1

    .line 421
    :cond_e
    const-string p1, "Knox"

    .line 422
    .line 423
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 424
    .line 425
    const v1, 0x7f1000e5

    .line 426
    .line 427
    .line 428
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_6

    .line 453
    .line 454
    :pswitch_3
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    .line 455
    .line 456
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 457
    .line 458
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 459
    .line 460
    .line 461
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    .line 462
    .line 463
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(Landroid/view/View;I)V

    .line 464
    .line 465
    .line 466
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 467
    .line 468
    if-eqz p1, :cond_10

    .line 469
    .line 470
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 474
    .line 475
    if-eqz p1, :cond_11

    .line 476
    .line 477
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    .line 478
    .line 479
    if-eqz p1, :cond_11

    .line 480
    .line 481
    const v0, 0x7f1000a1

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 485
    .line 486
    .line 487
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    .line 488
    .line 489
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    goto :goto_2

    .line 493
    :cond_10
    new-instance p1, Landroid/os/Handler;

    .line 494
    .line 495
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 496
    .line 497
    .line 498
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    .line 499
    .line 500
    const/4 v1, 0x3

    .line 501
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(ILjava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    const-wide/16 v3, 0x1f4

    .line 505
    .line 506
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    .line 508
    .line 509
    :cond_11
    :goto_2
    const p1, 0x7f0a0170

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast p1, Landroid/view/TextureView;

    .line 517
    .line 518
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 519
    .line 520
    const p1, 0x7f0a0193

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Landroid/widget/TextView;

    .line 528
    .line 529
    if-eqz p1, :cond_12

    .line 530
    .line 531
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :cond_12
    const p1, 0x7f0a0192

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    check-cast p1, Landroid/widget/TextView;

    .line 550
    .line 551
    if-eqz p1, :cond_13

    .line 552
    .line 553
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :cond_13
    const p1, 0x7f100058

    .line 565
    .line 566
    .line 567
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_6

    .line 575
    .line 576
    :pswitch_4
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    .line 577
    .line 578
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    .line 579
    .line 580
    const p1, 0x7f0a00d0

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    check-cast p1, Landroid/widget/TextView;

    .line 588
    .line 589
    const-string v0, "\n"

    .line 590
    .line 591
    if-eqz p1, :cond_17

    .line 592
    .line 593
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 594
    .line 595
    if-eqz v1, :cond_14

    .line 596
    .line 597
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 598
    .line 599
    if-eqz v1, :cond_17

    .line 600
    .line 601
    const v1, 0x7f100110

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 605
    .line 606
    .line 607
    goto :goto_4

    .line 608
    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 609
    .line 610
    if-nez v1, :cond_15

    .line 611
    .line 612
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    .line 613
    .line 614
    if-nez v1, :cond_15

    .line 615
    .line 616
    const v1, 0x7f100152

    .line 617
    .line 618
    .line 619
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_3

    .line 623
    :cond_15
    const v1, 0x7f100118

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 627
    .line 628
    .line 629
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    .line 630
    .line 631
    if-eqz v1, :cond_16

    .line 632
    .line 633
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 634
    .line 635
    if-eqz v1, :cond_16

    .line 636
    .line 637
    const-string v1, " \n\n"

    .line 638
    .line 639
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    const v1, 0x7f10010d

    .line 643
    .line 644
    .line 645
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    :cond_16
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 653
    .line 654
    if-eqz v1, :cond_17

    .line 655
    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    const v3, 0x7f100104

    .line 672
    .line 673
    .line 674
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    .line 687
    .line 688
    :cond_17
    :goto_4
    const p1, 0x7f0a0173

    .line 689
    .line 690
    .line 691
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 692
    .line 693
    .line 694
    move-result-object p1

    .line 695
    check-cast p1, Landroid/widget/TextView;

    .line 696
    .line 697
    if-eqz p1, :cond_1a

    .line 698
    .line 699
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 700
    .line 701
    if-eqz v1, :cond_19

    .line 702
    .line 703
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 704
    .line 705
    if-eqz v1, :cond_18

    .line 706
    .line 707
    const v1, 0x7f1000b5

    .line 708
    .line 709
    .line 710
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 711
    .line 712
    .line 713
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const v0, 0x7f10010f

    .line 729
    .line 730
    .line 731
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    .line 744
    .line 745
    goto :goto_5

    .line 746
    :cond_19
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 747
    .line 748
    if-eqz v0, :cond_1a

    .line 749
    .line 750
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    .line 751
    .line 752
    if-eqz v0, :cond_1a

    .line 753
    .line 754
    const v0, 0x7f1000de

    .line 755
    .line 756
    .line 757
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    :cond_1a
    :goto_5
    const p1, 0x7f0a00e4

    .line 765
    .line 766
    .line 767
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    check-cast p1, Landroid/widget/TextView;

    .line 772
    .line 773
    const v0, 0x7f07008a

    .line 774
    .line 775
    .line 776
    invoke-static {p1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 777
    .line 778
    .line 779
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 780
    .line 781
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    .line 783
    .line 784
    const p1, 0x7f0a016f

    .line 785
    .line 786
    .line 787
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    check-cast p1, Landroid/view/TextureView;

    .line 792
    .line 793
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 794
    .line 795
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 796
    .line 797
    .line 798
    move-result-object p1

    .line 799
    const-string v0, "fingerprint_guide_shown"

    .line 800
    .line 801
    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 802
    .line 803
    .line 804
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 805
    .line 806
    if-eqz p1, :cond_1b

    .line 807
    .line 808
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 809
    .line 810
    if-nez p1, :cond_1b

    .line 811
    .line 812
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 813
    .line 814
    if-nez p1, :cond_1b

    .line 815
    .line 816
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    const-string v0, "fingerprint_blf_off_guide_shown"

    .line 821
    .line 822
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 823
    .line 824
    .line 825
    move-result p1

    .line 826
    if-nez p1, :cond_1b

    .line 827
    .line 828
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 829
    .line 830
    .line 831
    move-result-object p1

    .line 832
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    const-string v1, "blue_light_filter"

    .line 837
    .line 838
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 839
    .line 840
    .line 841
    move-result p1

    .line 842
    if-eqz p1, :cond_1b

    .line 843
    .line 844
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    const v1, 0x7f1000ce

    .line 849
    .line 850
    .line 851
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 852
    .line 853
    .line 854
    move-result-object p1

    .line 855
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 863
    .line 864
    .line 865
    :cond_1b
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 866
    .line 867
    if-nez p1, :cond_1c

    .line 868
    .line 869
    goto :goto_6

    .line 870
    :cond_1c
    const p1, 0x7f0a0169

    .line 871
    .line 872
    .line 873
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 874
    .line 875
    .line 876
    move-result-object p1

    .line 877
    if-eqz p1, :cond_1d

    .line 878
    .line 879
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$22;

    .line 880
    .line 881
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$22;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 885
    .line 886
    .line 887
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda3;

    .line 888
    .line 889
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/view/View;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    .line 894
    .line 895
    :cond_1d
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 896
    .line 897
    if-eqz p1, :cond_1e

    .line 898
    .line 899
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 903
    .line 904
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 905
    .line 906
    .line 907
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 908
    .line 909
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 910
    .line 911
    .line 912
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 913
    .line 914
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 915
    .line 916
    .line 917
    move-result p1

    .line 918
    if-eqz p1, :cond_1e

    .line 919
    .line 920
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 921
    .line 922
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 927
    .line 928
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    .line 929
    .line 930
    .line 931
    move-result v0

    .line 932
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    .line 933
    .line 934
    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    .line 935
    .line 936
    .line 937
    move-result v1

    .line 938
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 939
    .line 940
    .line 941
    :cond_1e
    return-void

    .line 942
    nop

    .line 943
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showKnoxBi(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mImageViewKnoxBi:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public final showSensorErrorDialog(ILjava/lang/CharSequence;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->hide()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->hide()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 22
    .line 23
    :cond_2
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    .line 25
    .line 26
    new-instance v2, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "biometrics_settings_destroy"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const v6, 0x7f10014a

    .line 39
    .line 40
    .line 41
    if-eq p1, v5, :cond_f

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    if-eq p1, v5, :cond_e

    .line 45
    .line 46
    const/16 v5, 0x12

    .line 47
    .line 48
    const v7, 0x7f10014c

    .line 49
    .line 50
    .line 51
    if-eq p1, v5, :cond_a

    .line 52
    .line 53
    const/16 v5, 0x258

    .line 54
    .line 55
    if-eq p1, v5, :cond_9

    .line 56
    .line 57
    const/16 v5, 0x3e9

    .line 58
    .line 59
    if-eq p1, v5, :cond_a

    .line 60
    .line 61
    const/16 v5, 0x3eb

    .line 62
    .line 63
    const v8, 0x7f1000cc

    .line 64
    .line 65
    .line 66
    if-eq p1, v5, :cond_8

    .line 67
    .line 68
    const/16 v5, 0x3ef

    .line 69
    .line 70
    if-eq p1, v5, :cond_7

    .line 71
    .line 72
    const/16 v5, 0x138c

    .line 73
    .line 74
    if-eq p1, v5, :cond_6

    .line 75
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x5

    .line 80
    if-ne p1, v5, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v6, "always_finish_activities"

    .line 87
    .line 88
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const v0, 0x7f100122

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const v3, 0x7f1000c0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_3
    if-eqz p2, :cond_4

    .line 119
    .line 120
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const v5, 0x7f1000c6

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :pswitch_0
    iget-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    .line 150
    .line 151
    if-nez p2, :cond_5

    .line 152
    .line 153
    iget p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    .line 154
    .line 155
    if-lez p2, :cond_5

    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const v0, 0x7f100149

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    const v5, 0x7f100148

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const v0, 0x7f10014d

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    const v0, 0x7f10014b

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    const v5, 0x7f1000c3

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    const v0, 0x7f1000cd

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    const v0, 0x7f100053

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const v5, 0x7f1000c8

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v3, "\n"

    .line 307
    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    const v6, 0x7f1000c4

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    const v3, 0x7f1000c1

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    .line 355
    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_a
    iget-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    .line 359
    .line 360
    if-eqz p2, :cond_b

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    const v0, 0x7f1000c5

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    goto :goto_2

    .line 374
    :cond_b
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 375
    .line 376
    if-eqz p2, :cond_c

    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    :cond_c
    iget-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    .line 387
    .line 388
    if-eqz p2, :cond_d

    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    const v5, 0x7f100159

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    goto :goto_1

    .line 402
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    const v5, 0x7f1000c9

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    .line 415
    .line 416
    goto :goto_2

    .line 417
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    const v0, 0x7f1000cb

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    const v0, 0x7f1000c2

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    goto :goto_2

    .line 440
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    const v5, 0x7f1000ca

    .line 453
    .line 454
    .line 455
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p2

    .line 459
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isColorThemeEnabled(Landroid/content/Context;)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_10

    .line 467
    .line 468
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-nez v0, :cond_10

    .line 473
    .line 474
    move v0, v4

    .line 475
    goto :goto_3

    .line 476
    :cond_10
    const v0, 0x10302d1

    .line 477
    .line 478
    .line 479
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 480
    .line 481
    invoke-direct {v3, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda1;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 495
    .line 496
    .line 497
    const v1, 0x104000a

    .line 498
    .line 499
    .line 500
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda2;

    .line 505
    .line 506
    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/content/Intent;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 521
    .line 522
    .line 523
    const/4 p2, -0x1

    .line 524
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object p0

    .line 532
    const p2, 0x7f06007a

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 536
    .line 537
    .line 538
    move-result p0

    .line 539
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_data_0
    .packed-switch 0x186cd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startEnrollStep()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 33
    .line 34
    .line 35
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f100104

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 52
    .line 53
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    const/16 v0, 0x190

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    .line 88
    .line 89
    .line 90
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 100
    .line 101
    new-instance v0, Landroid/os/Handler;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollHandler:Landroid/os/Handler;

    .line 111
    .line 112
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollStartRemainTime:J

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportFoldEnroll:Z

    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 141
    .line 142
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    .line 143
    .line 144
    :cond_4
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 150
    .line 151
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->height:I

    .line 152
    .line 153
    if-lez v0, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 164
    .line 165
    const/4 v1, 0x5

    .line 166
    if-ne v0, v1, :cond_5

    .line 167
    .line 168
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 169
    .line 170
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->foldTopMargin:I

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 174
    .line 175
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->topMargin:I

    .line 176
    .line 177
    :goto_1
    if-lez v0, :cond_7

    .line 178
    .line 179
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->removeView()V

    .line 184
    .line 185
    .line 186
    :cond_6
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 189
    .line 190
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;)V

    .line 191
    .line 192
    .line 193
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSideSensorFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->show()V

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startEnrollment()V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->requestAccessibilityFocus()Z

    .line 204
    .line 205
    .line 206
    :goto_2
    return-void
.end method

.method public final startEnrollment()V
    .locals 10

    .line 1
    const-string v0, "BSS_FingerprintEnrollActivity"

    .line 2
    .line 3
    const-string v1, "startEnrollment"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 9
    .line 10
    if-nez v1, :cond_9

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 13
    .line 14
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsChallengeRequested:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsEnrollRequested:Z

    .line 32
    .line 33
    const-string p0, "Token is null. Enroll will be called when the challenge is received."

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v1, "startEnrollment : mToken or mFingerprintManager is null"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_2
    array-length v5, v1

    .line 49
    if-ne v5, v4, :cond_3

    .line 50
    .line 51
    aget-byte v1, v1, v3

    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    if-ne v1, v3, :cond_3

    .line 55
    .line 56
    const-string v1, "Challenge is incorrect"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x3eb

    .line 62
    .line 63
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 70
    .line 71
    new-instance v0, Landroid/os/CancellationSignal;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    .line 96
    .line 97
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 98
    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    new-instance v0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    .line 102
    .line 103
    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x2

    .line 107
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    .line 113
    .line 114
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 115
    .line 116
    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    .line 117
    .line 118
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;

    .line 119
    .line 120
    const/4 v8, 0x2

    .line 121
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual/range {v3 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V

    .line 126
    .line 127
    .line 128
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->show()V

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTalkbackEnabled:Z

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    new-instance v0, Landroid/os/Handler;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideHandler:Landroid/os/Handler;

    .line 158
    .line 159
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 160
    .line 161
    const/4 v1, 0x2

    .line 162
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideRunnable:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda5;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTouchGuideViewListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    .line 170
    .line 171
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchViewListener:Landroid/view/View$OnTouchListener;

    .line 178
    .line 179
    iput-object p0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mRectFingerIcon:Landroid/graphics/Rect;

    .line 180
    .line 181
    :cond_8
    :goto_1
    const/16 p0, 0x203f

    .line 182
    .line 183
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    const-wide/16 v0, -0x270f

    .line 188
    .line 189
    invoke-static {v0, v1, p0, v2, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v2, "Skip startEnrollment!! mIsPauseRegistration = "

    .line 196
    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, " | mEnrollState = "

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    .line 211
    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final startViewAnimation(Landroid/view/View;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const v4, 0x3ea8f5c3    # 0.33f

    .line 8
    .line 9
    .line 10
    const-wide/16 v5, 0x1f4

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/high16 v9, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const v10, 0x3e4ccccd    # 0.2f

    .line 19
    .line 20
    .line 21
    const-wide/16 v11, 0x14a

    .line 22
    .line 23
    const-wide/16 v13, 0x0

    .line 24
    .line 25
    const/4 v15, 0x4

    .line 26
    const/4 v3, 0x0

    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    :pswitch_0
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 33
    .line 34
    invoke-direct {v0, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 54
    .line 55
    invoke-direct {v0, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    const v2, 0x7f010026

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 91
    .line 92
    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 96
    .line 97
    invoke-direct {v3, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 110
    .line 111
    .line 112
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    .line 113
    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    const-wide/16 v3, 0x2ee

    .line 117
    .line 118
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 119
    .line 120
    .line 121
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_5
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 127
    .line 128
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 132
    .line 133
    const/16 v23, 0x1

    .line 134
    .line 135
    const v24, 0x3dcccccd    # 0.1f

    .line 136
    .line 137
    .line 138
    const/16 v17, 0x1

    .line 139
    .line 140
    const/16 v18, 0x0

    .line 141
    .line 142
    const/16 v19, 0x1

    .line 143
    .line 144
    const/16 v20, 0x0

    .line 145
    .line 146
    const/16 v21, 0x1

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    move-object/from16 v16, v2

    .line 151
    .line 152
    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 159
    .line 160
    invoke-direct {v3, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 167
    .line 168
    .line 169
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 170
    .line 171
    invoke-direct {v5, v4, v8, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 198
    .line 199
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 203
    .line 204
    const/16 v24, 0x1

    .line 205
    .line 206
    const/16 v25, 0x0

    .line 207
    .line 208
    const/16 v18, 0x1

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    const/16 v20, 0x1

    .line 213
    .line 214
    const/16 v21, 0x0

    .line 215
    .line 216
    const/16 v22, 0x1

    .line 217
    .line 218
    const v23, 0x3dcccccd    # 0.1f

    .line 219
    .line 220
    .line 221
    move-object/from16 v17, v2

    .line 222
    .line 223
    invoke-direct/range {v17 .. v25}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 227
    .line 228
    .line 229
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 230
    .line 231
    invoke-direct {v3, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 238
    .line 239
    .line 240
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 241
    .line 242
    const v6, 0x3f2b851f    # 0.67f

    .line 243
    .line 244
    .line 245
    invoke-direct {v5, v4, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 269
    .line 270
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 274
    .line 275
    invoke-direct {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 299
    .line 300
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 301
    .line 302
    .line 303
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 304
    .line 305
    const/16 v24, 0x1

    .line 306
    .line 307
    const/16 v25, 0x0

    .line 308
    .line 309
    const/16 v18, 0x1

    .line 310
    .line 311
    const/16 v19, 0x0

    .line 312
    .line 313
    const/16 v20, 0x1

    .line 314
    .line 315
    const/16 v21, 0x0

    .line 316
    .line 317
    const/16 v22, 0x1

    .line 318
    .line 319
    const v23, 0x3cf5c28f    # 0.03f

    .line 320
    .line 321
    .line 322
    move-object/from16 v17, v2

    .line 323
    .line 324
    invoke-direct/range {v17 .. v25}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 325
    .line 326
    .line 327
    const-wide/16 v5, 0x190

    .line 328
    .line 329
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 330
    .line 331
    .line 332
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 333
    .line 334
    invoke-direct {v3, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 341
    .line 342
    .line 343
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 344
    .line 345
    const v6, 0x3f2b851f    # 0.67f

    .line 346
    .line 347
    .line 348
    invoke-direct {v5, v4, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :pswitch_9
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 369
    .line 370
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 371
    .line 372
    .line 373
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 374
    .line 375
    const/16 v24, 0x1

    .line 376
    .line 377
    const/high16 v25, 0x3f000000    # 0.5f

    .line 378
    .line 379
    const/high16 v18, 0x3f800000    # 1.0f

    .line 380
    .line 381
    const v19, 0x3f733333    # 0.95f

    .line 382
    .line 383
    .line 384
    const/high16 v20, 0x3f800000    # 1.0f

    .line 385
    .line 386
    const v21, 0x3f733333    # 0.95f

    .line 387
    .line 388
    .line 389
    const/16 v22, 0x1

    .line 390
    .line 391
    const/high16 v23, 0x3f000000    # 0.5f

    .line 392
    .line 393
    move-object/from16 v17, v2

    .line 394
    .line 395
    invoke-direct/range {v17 .. v25}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 396
    .line 397
    .line 398
    new-instance v3, Landroid/view/animation/PathInterpolator;

    .line 399
    .line 400
    invoke-direct {v3, v4, v8, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    .line 405
    .line 406
    const-wide/16 v5, 0x96

    .line 407
    .line 408
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 412
    .line 413
    .line 414
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    .line 415
    .line 416
    invoke-direct {v3, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 423
    .line 424
    .line 425
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 426
    .line 427
    const v6, 0x3f2b851f    # 0.67f

    .line 428
    .line 429
    .line 430
    invoke-direct {v5, v4, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :pswitch_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 454
    .line 455
    invoke-direct {v0, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 456
    .line 457
    .line 458
    const-wide/16 v2, 0xc8

    .line 459
    .line 460
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 478
    .line 479
    invoke-direct {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 489
    .line 490
    .line 491
    goto :goto_0

    .line 492
    :cond_1
    const/16 v1, 0xca

    .line 493
    .line 494
    const v3, 0x3e19999a    # 0.15f

    .line 495
    .line 496
    .line 497
    if-eq v2, v1, :cond_3

    .line 498
    .line 499
    const/16 v1, 0xce

    .line 500
    .line 501
    if-eq v2, v1, :cond_2

    .line 502
    .line 503
    goto :goto_0

    .line 504
    :cond_2
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 505
    .line 506
    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 507
    .line 508
    .line 509
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 510
    .line 511
    const v10, 0x3f2b851f    # 0.67f

    .line 512
    .line 513
    .line 514
    invoke-direct {v2, v4, v8, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 518
    .line 519
    .line 520
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 521
    .line 522
    invoke-direct {v2, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 535
    .line 536
    .line 537
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 538
    .line 539
    if-nez v2, :cond_4

    .line 540
    .line 541
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 544
    .line 545
    .line 546
    goto :goto_0

    .line 547
    :cond_3
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 548
    .line 549
    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 550
    .line 551
    .line 552
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 553
    .line 554
    const v10, 0x3f2b851f    # 0.67f

    .line 555
    .line 556
    .line 557
    invoke-direct {v2, v4, v8, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 561
    .line 562
    .line 563
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 564
    .line 565
    invoke-direct {v2, v9, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 578
    .line 579
    .line 580
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_ENROLL_FRAME_MOVING_UX:Z

    .line 581
    .line 582
    if-nez v2, :cond_4

    .line 583
    .line 584
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    .line 588
    .line 589
    :cond_4
    :goto_0
    return-void

    .line 590
    nop

    .line 591
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final tuneTouchGuideFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollGuideFrame:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    rem-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->tuneMovingArea(Z)V

    .line 15
    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method
