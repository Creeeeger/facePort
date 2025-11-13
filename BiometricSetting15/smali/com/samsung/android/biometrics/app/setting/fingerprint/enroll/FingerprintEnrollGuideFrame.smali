.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;
.super Landroid/view/View;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final INTPL_MOVE:Landroid/view/animation/PathInterpolator;

.field public static final INTPL_PROGRESS:Landroid/view/animation/PathInterpolator;

.field public static final INTP_CHECK_ICON:Landroid/view/animation/PathInterpolator;

.field public static final MOVING_DISTANCE_CORRECTION:[F

.field public static final POSITION_INDEX:[I


# instance fields
.field public final mBmpFingerIcon:Landroid/graphics/Bitmap;

.field public final mBottomBlackMaskHeight:F

.field public final mBottomBlackMaskWidth:F

.field public final mCurrentLoc:Landroid/graphics/PointF;

.field public mCurrentProgress:F

.field public mCurrentScanScale:F

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mFingerIconSize:I

.field public final mFinishLoc:Landroid/graphics/PointF;

.field public final mFrameHeight:F

.field public final mFrameWidth:F

.field public final mGuideFrameCornerSize:F

.field public final mGuideFrameReadyThickness:F

.field public final mGuideFrameScanThickness:F

.field public mIsTouchOnTheSensor:Z

.field public mIsWindowAttached:Z

.field public final mMeasureCheckIcon:Landroid/graphics/PathMeasure;

.field public final mMovingDistance:[[F

.field public final mMovingHeight:F

.field public mMovingIndex:I

.field public mMovingTune:I

.field public final mMovingWidth:F

.field public final mPathCheckIcon:Landroid/graphics/Path;

.field public final mPathCheckIconPartial:Landroid/graphics/Path;

.field public final mPntBottomBlackMask:Landroid/graphics/Paint;

.field public final mPntCheckIcon:Landroid/graphics/Paint;

.field public final mPntFingerIcon:Landroid/graphics/Paint;

.field public final mPntGuideFrameProgress:Landroid/graphics/Paint;

.field public final mPntGuideFrameReady:Landroid/graphics/Paint;

.field public mRectFingerIcon:Landroid/graphics/Rect;

.field public final mSensorPos:Landroid/graphics/PointF;

.field public final mStartLoc:Landroid/graphics/PointF;

.field public mState:I

.field public mTargetProgress:F

.field public final mTimerCheckIcon:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerMove:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerProgress:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerScanScale:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerScanScaleRev:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTouchFrameHeight:F

.field public final mTouchFrameWidth:F

.field public mTouchValidationSet:I

.field public mTouchViewListener:Landroid/view/View$OnTouchListener;

.field public mViewTouch:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3ef0a3d7    # 0.47f

    .line 4
    .line 5
    .line 6
    const v2, 0x3ed1eb85    # 0.41f

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTPL_PROGRESS:Landroid/view/animation/PathInterpolator;

    .line 16
    .line 17
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    const v1, 0x3e6147ae    # 0.22f

    .line 20
    .line 21
    .line 22
    const v2, 0x3da7ef9e    # 0.082f

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTP_CHECK_ICON:Landroid/view/animation/PathInterpolator;

    .line 29
    .line 30
    const/16 v0, 0xe

    .line 31
    .line 32
    new-array v0, v0, [I

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->POSITION_INDEX:[I

    .line 38
    .line 39
    const/16 v0, 0x9

    .line 40
    .line 41
    new-array v0, v0, [F

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->MOVING_DISTANCE_CORRECTION:[F

    .line 47
    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 49
    .line 50
    const v1, 0x3e99999a    # 0.3f

    .line 51
    .line 52
    .line 53
    const v2, 0x3f333333    # 0.7f

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTPL_MOVE:Landroid/view/animation/PathInterpolator;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x4
        0x7
        0x8
        0x5
        0x2
        0x1
        0x0
        0x3
        0x6
        0x4
        0x7
        0x5
        0x1
        0x3
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :array_1
    .array-data 4
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 8
    .line 9
    new-instance v3, Landroid/graphics/Point;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 15
    .line 16
    new-instance v3, Landroid/graphics/PointF;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mSensorPos:Landroid/graphics/PointF;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 25
    .line 26
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameHeight:F

    .line 27
    .line 28
    new-instance v5, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntFingerIcon:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFingerIconSize:I

    .line 37
    .line 38
    new-instance v6, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v6, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntGuideFrameReady:Landroid/graphics/Paint;

    .line 44
    .line 45
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameCornerSize:F

    .line 46
    .line 47
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameReadyThickness:F

    .line 48
    .line 49
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameScanThickness:F

    .line 50
    .line 51
    new-instance v7, Landroid/view/animation/PathInterpolator;

    .line 52
    .line 53
    const v8, 0x3f666666    # 0.9f

    .line 54
    .line 55
    .line 56
    const v9, 0x3dcccccd    # 0.1f

    .line 57
    .line 58
    .line 59
    const/high16 v10, 0x3f000000    # 0.5f

    .line 60
    .line 61
    invoke-direct {v7, v9, v10, v10, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 65
    .line 66
    invoke-direct {v8, v2}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 67
    .line 68
    .line 69
    iput-object v8, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 70
    .line 71
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 72
    .line 73
    invoke-direct {v9, v5}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    iput-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerProgress:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 77
    .line 78
    const/high16 v10, -0x40800000    # -1.0f

    .line 79
    .line 80
    iput v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 81
    .line 82
    iput v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 83
    .line 84
    new-instance v11, Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-direct {v11, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntGuideFrameProgress:Landroid/graphics/Paint;

    .line 90
    .line 91
    new-instance v12, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 92
    .line 93
    invoke-direct {v12, v5, v10}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(ZF)V

    .line 94
    .line 95
    .line 96
    iput-object v12, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerCheckIcon:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 97
    .line 98
    const-string v10, "M42,11l-20.3383,21l-13.6617,-14.1065"

    .line 99
    .line 100
    invoke-static {v10}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    iput-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIcon:Landroid/graphics/Path;

    .line 105
    .line 106
    new-instance v13, Landroid/graphics/Path;

    .line 107
    .line 108
    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v13, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIconPartial:Landroid/graphics/Path;

    .line 112
    .line 113
    new-instance v13, Landroid/graphics/PathMeasure;

    .line 114
    .line 115
    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v13, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMeasureCheckIcon:Landroid/graphics/PathMeasure;

    .line 119
    .line 120
    new-instance v13, Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v13, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 126
    .line 127
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingWidth:F

    .line 128
    .line 129
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingHeight:F

    .line 130
    .line 131
    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 132
    .line 133
    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 134
    .line 135
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskWidth:F

    .line 136
    .line 137
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskHeight:F

    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 141
    .line 142
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameWidth:F

    .line 143
    .line 144
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameHeight:F

    .line 145
    .line 146
    new-instance v15, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 147
    .line 148
    invoke-direct {v15, v5}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 149
    .line 150
    .line 151
    iput-object v15, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerMove:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 152
    .line 153
    new-instance v14, Landroid/graphics/PointF;

    .line 154
    .line 155
    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mStartLoc:Landroid/graphics/PointF;

    .line 159
    .line 160
    new-instance v14, Landroid/graphics/PointF;

    .line 161
    .line 162
    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentLoc:Landroid/graphics/PointF;

    .line 166
    .line 167
    new-instance v14, Landroid/graphics/PointF;

    .line 168
    .line 169
    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFinishLoc:Landroid/graphics/PointF;

    .line 173
    .line 174
    new-instance v14, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 175
    .line 176
    invoke-direct {v14, v5}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 177
    .line 178
    .line 179
    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScale:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 180
    .line 181
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 182
    .line 183
    invoke-direct {v1, v5, v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(ZF)V

    .line 184
    .line 185
    .line 186
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScaleRev:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 187
    .line 188
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentScanScale:F

    .line 189
    .line 190
    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchValidationSet:I

    .line 191
    .line 192
    iput-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mIsTouchOnTheSensor:Z

    .line 193
    .line 194
    iput-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mIsWindowAttached:Z

    .line 195
    .line 196
    const-string v4, "window"

    .line 197
    .line 198
    move-object/from16 v5, p1

    .line 199
    .line 200
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    check-cast v4, Landroid/view/WindowManager;

    .line 205
    .line 206
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 217
    .line 218
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-direct {v4, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    iget v5, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->height:I

    .line 228
    .line 229
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 230
    .line 231
    move-object/from16 v19, v15

    .line 232
    .line 233
    iget v15, v2, Landroid/graphics/Point;->x:I

    .line 234
    .line 235
    int-to-float v15, v15

    .line 236
    move-object/from16 v20, v10

    .line 237
    .line 238
    const/high16 v10, 0x40000000    # 2.0f

    .line 239
    .line 240
    div-float/2addr v15, v10

    .line 241
    iget v10, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->offset:I

    .line 242
    .line 243
    int-to-float v10, v10

    .line 244
    sub-float/2addr v15, v10

    .line 245
    iput v15, v3, Landroid/graphics/PointF;->x:F

    .line 246
    .line 247
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 248
    .line 249
    int-to-float v2, v2

    .line 250
    int-to-float v10, v5

    .line 251
    const/high16 v15, 0x40000000    # 2.0f

    .line 252
    .line 253
    div-float/2addr v10, v15

    .line 254
    iget v15, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->bottomMargin:I

    .line 255
    .line 256
    int-to-float v15, v15

    .line 257
    add-float/2addr v10, v15

    .line 258
    sub-float/2addr v2, v10

    .line 259
    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 260
    .line 261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    const/high16 v3, 0x41800000    # 16.0f

    .line 270
    .line 271
    const/4 v10, 0x5

    .line 272
    invoke-static {v10, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    float-to-int v3, v3

    .line 277
    int-to-float v3, v3

    .line 278
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 279
    .line 280
    const/high16 v3, 0x41900000    # 18.0f

    .line 281
    .line 282
    invoke-static {v10, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    float-to-int v3, v3

    .line 287
    int-to-float v3, v3

    .line 288
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameHeight:F

    .line 289
    .line 290
    iget v15, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 291
    .line 292
    const v21, 0x3fa66666    # 1.3f

    .line 293
    .line 294
    .line 295
    mul-float v15, v15, v21

    .line 296
    .line 297
    iput v15, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameWidth:F

    .line 298
    .line 299
    mul-float v3, v3, v21

    .line 300
    .line 301
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameHeight:F

    .line 302
    .line 303
    const/high16 v3, 0x42800000    # 64.0f

    .line 304
    .line 305
    const/4 v15, 0x1

    .line 306
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameCornerSize:F

    .line 311
    .line 312
    const/high16 v3, 0x40a00000    # 5.0f

    .line 313
    .line 314
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameReadyThickness:F

    .line 319
    .line 320
    const/high16 v3, 0x40c00000    # 6.0f

    .line 321
    .line 322
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameScanThickness:F

    .line 327
    .line 328
    const/high16 v3, 0x42900000    # 72.0f

    .line 329
    .line 330
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    float-to-int v3, v3

    .line 335
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFingerIconSize:I

    .line 336
    .line 337
    const/high16 v3, 0x43340000    # 180.0f

    .line 338
    .line 339
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskWidth:F

    .line 344
    .line 345
    const/high16 v3, 0x41a00000    # 20.0f

    .line 346
    .line 347
    move-object/from16 v21, v12

    .line 348
    .line 349
    invoke-static {v15, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    iput v12, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskHeight:F

    .line 354
    .line 355
    const/high16 v12, 0x40000000    # 2.0f

    .line 356
    .line 357
    invoke-static {v10, v12, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingHeight:F

    .line 362
    .line 363
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingWidth:F

    .line 364
    .line 365
    iget v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->width:I

    .line 366
    .line 367
    int-to-float v4, v4

    .line 368
    const/high16 v10, 0x40400000    # 3.0f

    .line 369
    .line 370
    mul-float/2addr v4, v10

    .line 371
    const/high16 v12, 0x40800000    # 4.0f

    .line 372
    .line 373
    div-float/2addr v4, v12

    .line 374
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingWidth:F

    .line 379
    .line 380
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingHeight:F

    .line 381
    .line 382
    int-to-float v4, v5

    .line 383
    mul-float/2addr v4, v10

    .line 384
    div-float/2addr v4, v12

    .line 385
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingHeight:F

    .line 390
    .line 391
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 392
    .line 393
    if-eqz v2, :cond_0

    .line 394
    .line 395
    new-instance v2, Landroid/graphics/Paint;

    .line 396
    .line 397
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 398
    .line 399
    .line 400
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntBottomBlackMask:Landroid/graphics/Paint;

    .line 401
    .line 402
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 403
    .line 404
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 405
    .line 406
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 407
    .line 408
    int-to-float v5, v5

    .line 409
    iget v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskHeight:F

    .line 410
    .line 411
    sub-float v24, v5, v10

    .line 412
    .line 413
    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 414
    .line 415
    const/16 v23, 0x0

    .line 416
    .line 417
    const/high16 v28, -0x1000000

    .line 418
    .line 419
    const/16 v25, 0x0

    .line 420
    .line 421
    const/16 v27, 0x0

    .line 422
    .line 423
    move-object/from16 v22, v4

    .line 424
    .line 425
    move/from16 v26, v5

    .line 426
    .line 427
    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 431
    .line 432
    .line 433
    :cond_0
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingWidth:F

    .line 434
    .line 435
    neg-float v4, v2

    .line 436
    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingHeight:F

    .line 437
    .line 438
    neg-float v10, v5

    .line 439
    const/4 v12, 0x2

    .line 440
    new-array v15, v12, [F

    .line 441
    .line 442
    const/16 v16, 0x0

    .line 443
    .line 444
    aput v4, v15, v16

    .line 445
    .line 446
    const/16 v18, 0x1

    .line 447
    .line 448
    aput v10, v15, v18

    .line 449
    .line 450
    new-array v3, v12, [F

    .line 451
    .line 452
    const/16 v17, 0x0

    .line 453
    .line 454
    aput v17, v3, v16

    .line 455
    .line 456
    aput v10, v3, v18

    .line 457
    .line 458
    move-object/from16 v31, v13

    .line 459
    .line 460
    new-array v13, v12, [F

    .line 461
    .line 462
    aput v2, v13, v16

    .line 463
    .line 464
    aput v10, v13, v18

    .line 465
    .line 466
    new-array v10, v12, [F

    .line 467
    .line 468
    aput v4, v10, v16

    .line 469
    .line 470
    aput v17, v10, v18

    .line 471
    .line 472
    move-object/from16 v32, v6

    .line 473
    .line 474
    new-array v6, v12, [F

    .line 475
    .line 476
    fill-array-data v6, :array_0

    .line 477
    .line 478
    .line 479
    move-object/from16 v33, v1

    .line 480
    .line 481
    new-array v1, v12, [F

    .line 482
    .line 483
    aput v2, v1, v16

    .line 484
    .line 485
    aput v17, v1, v18

    .line 486
    .line 487
    move-object/from16 v34, v14

    .line 488
    .line 489
    new-array v14, v12, [F

    .line 490
    .line 491
    aput v4, v14, v16

    .line 492
    .line 493
    aput v5, v14, v18

    .line 494
    .line 495
    new-array v4, v12, [F

    .line 496
    .line 497
    aput v17, v4, v16

    .line 498
    .line 499
    aput v5, v4, v18

    .line 500
    .line 501
    new-array v12, v12, [F

    .line 502
    .line 503
    aput v2, v12, v16

    .line 504
    .line 505
    aput v5, v12, v18

    .line 506
    .line 507
    move-object/from16 v22, v15

    .line 508
    .line 509
    move-object/from16 v23, v3

    .line 510
    .line 511
    move-object/from16 v24, v13

    .line 512
    .line 513
    move-object/from16 v25, v10

    .line 514
    .line 515
    move-object/from16 v26, v6

    .line 516
    .line 517
    move-object/from16 v27, v1

    .line 518
    .line 519
    move-object/from16 v28, v14

    .line 520
    .line 521
    move-object/from16 v29, v4

    .line 522
    .line 523
    move-object/from16 v30, v12

    .line 524
    .line 525
    filled-new-array/range {v22 .. v30}, [[F

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingDistance:[[F

    .line 530
    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 536
    .line 537
    const v2, 0x7f080064

    .line 538
    .line 539
    .line 540
    const/4 v3, 0x0

    .line 541
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    if-nez v1, :cond_1

    .line 546
    .line 547
    move-object v14, v3

    .line 548
    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 558
    .line 559
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 560
    .line 561
    .line 562
    move-result-object v14

    .line 563
    new-instance v2, Landroid/graphics/Canvas;

    .line 564
    .line 565
    invoke-direct {v2, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    const/4 v5, 0x0

    .line 577
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    .line 582
    .line 583
    :goto_0
    if-nez v14, :cond_2

    .line 584
    .line 585
    const-string v1, "BSS_EnrollGuideFrame"

    .line 586
    .line 587
    const-string v2, "Failed to load finger icon"

    .line 588
    .line 589
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    const/4 v2, 0x0

    .line 593
    goto :goto_1

    .line 594
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    .line 595
    .line 596
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 597
    .line 598
    .line 599
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 600
    .line 601
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    const v4, 0x7f06006f

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 613
    .line 614
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 618
    .line 619
    .line 620
    new-instance v2, Landroid/graphics/Canvas;

    .line 621
    .line 622
    invoke-direct {v2, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 623
    .line 624
    .line 625
    const/4 v3, 0x0

    .line 626
    invoke-virtual {v2, v14, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 627
    .line 628
    .line 629
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFingerIconSize:I

    .line 630
    .line 631
    const/4 v2, 0x0

    .line 632
    invoke-static {v14, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBmpFingerIcon:Landroid/graphics/Bitmap;

    .line 637
    .line 638
    :goto_1
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 639
    .line 640
    const-wide/16 v3, 0x1f4

    .line 641
    .line 642
    invoke-direct {v1, v3, v4, v7}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v8, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 646
    .line 647
    .line 648
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 649
    .line 650
    invoke-direct {v1, v3, v4, v7, v2}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v8, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 657
    .line 658
    .line 659
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 660
    .line 661
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 662
    .line 663
    .line 664
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 665
    .line 666
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 667
    .line 668
    .line 669
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 670
    .line 671
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 672
    .line 673
    .line 674
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameScanThickness:F

    .line 675
    .line 676
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 677
    .line 678
    .line 679
    const v3, -0xee57a1

    .line 680
    .line 681
    .line 682
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    .line 684
    .line 685
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 686
    .line 687
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTPL_PROGRESS:Landroid/view/animation/PathInterpolator;

    .line 688
    .line 689
    const-wide/16 v6, 0x5dc

    .line 690
    .line 691
    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v9, v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 695
    .line 696
    .line 697
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 698
    .line 699
    const-wide/16 v6, 0x12c

    .line 700
    .line 701
    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 702
    .line 703
    .line 704
    move-object/from16 v8, v34

    .line 705
    .line 706
    invoke-virtual {v8, v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 707
    .line 708
    .line 709
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 710
    .line 711
    const/4 v8, 0x0

    .line 712
    invoke-direct {v4, v6, v7, v5, v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;I)V

    .line 713
    .line 714
    .line 715
    move-object/from16 v5, v33

    .line 716
    .line 717
    invoke-virtual {v5, v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 718
    .line 719
    .line 720
    move-object/from16 v4, v32

    .line 721
    .line 722
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 723
    .line 724
    .line 725
    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameReadyThickness:F

    .line 726
    .line 727
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 728
    .line 729
    .line 730
    const v5, -0xb7b7b8

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    .line 735
    .line 736
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    .line 737
    .line 738
    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 739
    .line 740
    const/high16 v8, 0x3f800000    # 1.0f

    .line 741
    .line 742
    invoke-direct {v4, v8, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 743
    .line 744
    .line 745
    move-object/from16 v5, v31

    .line 746
    .line 747
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 757
    .line 758
    .line 759
    const/high16 v1, 0x41a00000    # 20.0f

    .line 760
    .line 761
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 762
    .line 763
    .line 764
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 765
    .line 766
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTP_CHECK_ICON:Landroid/view/animation/PathInterpolator;

    .line 767
    .line 768
    const-wide/16 v3, 0x276

    .line 769
    .line 770
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 771
    .line 772
    .line 773
    move-object/from16 v3, v21

    .line 774
    .line 775
    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 776
    .line 777
    .line 778
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 779
    .line 780
    const-wide/16 v4, 0x3e8

    .line 781
    .line 782
    invoke-direct {v1, v4, v5, v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JF)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 786
    .line 787
    .line 788
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 789
    .line 790
    const-wide/16 v4, 0x14a

    .line 791
    .line 792
    const/4 v8, 0x0

    .line 793
    invoke-direct {v1, v4, v5, v2, v8}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v3, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 797
    .line 798
    .line 799
    new-instance v1, Landroid/graphics/Matrix;

    .line 800
    .line 801
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 802
    .line 803
    .line 804
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 805
    .line 806
    const/high16 v3, 0x42340000    # 45.0f

    .line 807
    .line 808
    div-float/2addr v2, v3

    .line 809
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 810
    .line 811
    .line 812
    move-object/from16 v2, v20

    .line 813
    .line 814
    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 815
    .line 816
    .line 817
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 818
    .line 819
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->INTPL_MOVE:Landroid/view/animation/PathInterpolator;

    .line 820
    .line 821
    invoke-direct {v1, v6, v7, v2}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 822
    .line 823
    .line 824
    move-object/from16 v2, v19

    .line 825
    .line 826
    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 827
    .line 828
    .line 829
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame$1;

    .line 830
    .line 831
    invoke-direct {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 835
    .line 836
    .line 837
    const/4 v1, 0x1

    .line 838
    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setState(I)V

    .line 839
    .line 840
    .line 841
    return-void

    .line 842
    nop

    .line 843
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getMoveIndex()I
    .locals 2

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->POSITION_INDEX:[I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget p0, v0, p0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method private getScale()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScale:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const v0, 0x3eb33333    # 0.35f

    .line 15
    .line 16
    .line 17
    :goto_0
    mul-float/2addr p0, v0

    .line 18
    add-float/2addr p0, v2

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScaleRev:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    cmpl-float v0, v0, v1

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScaleRev:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentScanScale:F

    .line 43
    .line 44
    mul-float/2addr v0, p0

    .line 45
    add-float/2addr v0, v2

    .line 46
    return v0

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const v0, 0x3d4ccccd    # 0.05f

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method

.method private getTouchWindowLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameWidth:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameHeight:F

    .line 5
    .line 6
    float-to-int p0, p0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getWindowLayoutParam(IIZ)Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v0, 0x33

    .line 13
    .line 14
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 15
    .line 16
    return-object p0
.end method

.method public static getWindowLayoutParam(IIZ)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move p2, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p2, 0x10

    .line 7
    .line 8
    :goto_0
    const/16 v1, 0x8

    .line 9
    .line 10
    or-int/lit8 v6, p2, 0x8

    .line 11
    .line 12
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    const/16 v5, 0x7d8

    .line 15
    .line 16
    const/4 v7, -0x3

    .line 17
    move-object v2, p2

    .line 18
    move v3, p0

    .line 19
    move v4, p1

    .line 20
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method private setState(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerProgress:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScale:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x3

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 26
    .line 27
    if-ne v1, v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScale:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0x3eb33333    # 0.35f

    .line 36
    .line 37
    .line 38
    mul-float/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentScanScale:F

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerScanScaleRev:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x4

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerCheckIcon:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final addTouchValidation(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-gt p1, v1, :cond_1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchValidationSet:I

    .line 11
    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mIsTouchOnTheSensor:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchValidationSet:I

    .line 17
    .line 18
    sub-int/2addr v1, p1

    .line 19
    shl-int p1, v0, v1

    .line 20
    .line 21
    or-int/2addr p1, v2

    .line 22
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchValidationSet:I

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final completeScan()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final finishScan()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getTalkBackPositionIndex()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getMoveIndex()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final declared-synchronized hide()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BSS_EnrollGuideFrame"

    .line 3
    .line 4
    const-string v1, "hide"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mIsWindowAttached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public final moveNext()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 13
    .line 14
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->POSITION_INDEX:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-lt v2, v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x4

    .line 20
    .line 21
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setFramePosition()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Moved from "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    aget v0, v3, v0

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " to "

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingIndex:I

    .line 44
    .line 45
    aget p0, v3, p0

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "BSS_EnrollGuideFrame"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 13
    .line 14
    const/high16 v2, -0x40800000    # -1.0f

    .line 15
    .line 16
    cmpl-float v2, v1, v2

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    const/high16 v5, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    cmpl-float v2, v1, v4

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 31
    .line 32
    add-float/2addr v2, v1

    .line 33
    div-float/2addr v2, v5

    .line 34
    :goto_0
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 38
    .line 39
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerProgress:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 51
    .line 52
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mSensorPos:Landroid/graphics/PointF;

    .line 56
    .line 57
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    mul-int/lit8 v0, v0, 0x5a

    .line 73
    .line 74
    int-to-float v0, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v0, v4

    .line 77
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 78
    .line 79
    .line 80
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v6, 0x4

    .line 85
    if-ne v0, v6, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIconPartial:Landroid/graphics/Path;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMeasureCheckIcon:Landroid/graphics/PathMeasure;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIcon:Landroid/graphics/Path;

    .line 95
    .line 96
    invoke-virtual {v0, v3, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMeasureCheckIcon:Landroid/graphics/PathMeasure;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerCheckIcon:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    mul-float/2addr v2, v0

    .line 112
    cmpl-float v3, v2, v4

    .line 113
    .line 114
    if-ltz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    .line 118
    .line 119
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 120
    .line 121
    neg-float v3, v3

    .line 122
    div-float/2addr v3, v5

    .line 123
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameHeight:F

    .line 124
    .line 125
    neg-float v4, v4

    .line 126
    div-float/2addr v4, v5

    .line 127
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMeasureCheckIcon:Landroid/graphics/PathMeasure;

    .line 131
    .line 132
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    sub-float v2, v0, v2

    .line 137
    .line 138
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIconPartial:Landroid/graphics/Path;

    .line 139
    .line 140
    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPathCheckIconPartial:Landroid/graphics/Path;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerMove:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mStartLoc:Landroid/graphics/PointF;

    .line 165
    .line 166
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 167
    .line 168
    const/high16 v9, 0x3f800000    # 1.0f

    .line 169
    .line 170
    sub-float v10, v9, v0

    .line 171
    .line 172
    mul-float/2addr v8, v10

    .line 173
    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFinishLoc:Landroid/graphics/PointF;

    .line 174
    .line 175
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 176
    .line 177
    mul-float/2addr v12, v0

    .line 178
    add-float/2addr v12, v8

    .line 179
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 180
    .line 181
    mul-float/2addr v7, v10

    .line 182
    iget v8, v11, Landroid/graphics/PointF;->y:F

    .line 183
    .line 184
    mul-float/2addr v8, v0

    .line 185
    add-float/2addr v8, v7

    .line 186
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentLoc:Landroid/graphics/PointF;

    .line 187
    .line 188
    invoke-virtual {v0, v12, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v12, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBmpFingerIcon:Landroid/graphics/Bitmap;

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    iget v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFingerIconSize:I

    .line 199
    .line 200
    neg-int v7, v7

    .line 201
    int-to-float v7, v7

    .line 202
    div-float/2addr v7, v5

    .line 203
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntFingerIcon:Landroid/graphics/Paint;

    .line 204
    .line 205
    invoke-virtual {p1, v0, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getScale()F

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    new-instance v7, Landroid/graphics/RectF;

    .line 213
    .line 214
    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameWidth:F

    .line 215
    .line 216
    neg-float v10, v8

    .line 217
    div-float/2addr v10, v5

    .line 218
    iget v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFrameHeight:F

    .line 219
    .line 220
    neg-float v12, v11

    .line 221
    div-float/2addr v12, v5

    .line 222
    div-float/2addr v8, v5

    .line 223
    div-float/2addr v11, v5

    .line 224
    invoke-direct {v7, v10, v12, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 225
    .line 226
    .line 227
    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameReadyThickness:F

    .line 228
    .line 229
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    sub-float/2addr v0, v9

    .line 234
    mul-float/2addr v10, v0

    .line 235
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    mul-float/2addr v9, v0

    .line 240
    div-float/2addr v10, v5

    .line 241
    div-float/2addr v8, v5

    .line 242
    add-float/2addr v10, v8

    .line 243
    div-float/2addr v9, v5

    .line 244
    add-float/2addr v9, v8

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    .line 246
    .line 247
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .line 248
    .line 249
    sub-float/2addr v8, v10

    .line 250
    iget v11, v7, Landroid/graphics/RectF;->top:F

    .line 251
    .line 252
    sub-float/2addr v11, v9

    .line 253
    iget v12, v7, Landroid/graphics/RectF;->right:F

    .line 254
    .line 255
    add-float/2addr v12, v10

    .line 256
    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 257
    .line 258
    add-float/2addr v7, v9

    .line 259
    invoke-direct {v0, v8, v11, v12, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    .line 261
    .line 262
    iget v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameCornerSize:F

    .line 263
    .line 264
    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mGuideFrameReadyThickness:F

    .line 265
    .line 266
    div-float/2addr v8, v5

    .line 267
    add-float/2addr v8, v7

    .line 268
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntGuideFrameReady:Landroid/graphics/Paint;

    .line 269
    .line 270
    invoke-virtual {p1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 271
    .line 272
    .line 273
    iget v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 274
    .line 275
    if-ne v7, v3, :cond_6

    .line 276
    .line 277
    new-instance v3, Landroid/graphics/Path;

    .line 278
    .line 279
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 280
    .line 281
    .line 282
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 283
    .line 284
    invoke-virtual {v3, v0, v8, v8, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Landroid/graphics/Path;

    .line 288
    .line 289
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 290
    .line 291
    .line 292
    new-instance v7, Landroid/graphics/PathMeasure;

    .line 293
    .line 294
    invoke-direct {v7, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    const v3, 0x3e851eb8    # 0.26f

    .line 302
    .line 303
    .line 304
    mul-float/2addr v3, v2

    .line 305
    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 306
    .line 307
    mul-float/2addr v8, v2

    .line 308
    add-float/2addr v8, v3

    .line 309
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    invoke-virtual {v7, v3, v9, v0, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 314
    .line 315
    .line 316
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntGuideFrameProgress:Landroid/graphics/Paint;

    .line 317
    .line 318
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 319
    .line 320
    .line 321
    cmpl-float v3, v8, v2

    .line 322
    .line 323
    if-lez v3, :cond_6

    .line 324
    .line 325
    sub-float/2addr v8, v2

    .line 326
    invoke-virtual {v7, v4, v8, v0, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 327
    .line 328
    .line 329
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntGuideFrameProgress:Landroid/graphics/Paint;

    .line 330
    .line 331
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 332
    .line 333
    .line 334
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    .line 336
    .line 337
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 338
    .line 339
    if-eq v0, v6, :cond_7

    .line 340
    .line 341
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntBottomBlackMask:Landroid/graphics/Paint;

    .line 342
    .line 343
    if-eqz v0, :cond_7

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    int-to-float v0, v0

    .line 350
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskWidth:F

    .line 351
    .line 352
    sub-float/2addr v0, v1

    .line 353
    div-float v7, v0, v5

    .line 354
    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    int-to-float v0, v0

    .line 360
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskHeight:F

    .line 361
    .line 362
    sub-float v8, v0, v1

    .line 363
    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    int-to-float v0, v0

    .line 369
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mBottomBlackMaskWidth:F

    .line 370
    .line 371
    add-float/2addr v0, v1

    .line 372
    div-float v9, v0, v5

    .line 373
    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    int-to-float v10, v0

    .line 379
    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mPntBottomBlackMask:Landroid/graphics/Paint;

    .line 380
    .line 381
    move-object v6, p1

    .line 382
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 383
    .line 384
    .line 385
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method public final declared-synchronized setFramePosition()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getMoveIndex()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingDistance:[[F

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    aget-object v1, v1, v0

    .line 15
    .line 16
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->MOVING_DISTANCE_CORRECTION:[F

    .line 17
    .line 18
    aget v0, v2, v0

    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 21
    .line 22
    rsub-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    const/high16 v3, 0x40400000    # 3.0f

    .line 26
    .line 27
    div-float/2addr v2, v3

    .line 28
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mStartLoc:Landroid/graphics/PointF;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentLoc:Landroid/graphics/PointF;

    .line 31
    .line 32
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 33
    .line 34
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    invoke-virtual {v3, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFinishLoc:Landroid/graphics/PointF;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aget v4, v1, v4

    .line 43
    .line 44
    mul-float/2addr v4, v0

    .line 45
    mul-float/2addr v4, v2

    .line 46
    const/4 v5, 0x1

    .line 47
    aget v1, v1, v5

    .line 48
    .line 49
    mul-float/2addr v1, v0

    .line 50
    mul-float/2addr v1, v2

    .line 51
    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTimerMove:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mSensorPos:Landroid/graphics/PointF;

    .line 70
    .line 71
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 72
    .line 73
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mFinishLoc:Landroid/graphics/PointF;

    .line 74
    .line 75
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 76
    .line 77
    add-float/2addr v2, v4

    .line 78
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameWidth:F

    .line 79
    .line 80
    const/high16 v5, 0x40000000    # 2.0f

    .line 81
    .line 82
    div-float/2addr v4, v5

    .line 83
    sub-float/2addr v2, v4

    .line 84
    float-to-int v2, v2

    .line 85
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    .line 87
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 88
    .line 89
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 90
    .line 91
    add-float/2addr v1, v2

    .line 92
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTouchFrameHeight:F

    .line 93
    .line 94
    div-float/2addr v2, v5

    .line 95
    sub-float/2addr v1, v2

    .line 96
    float-to-int v1, v1

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 98
    .line 99
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 102
    .line 103
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    :goto_0
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :cond_2
    :goto_1
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_2
    monitor-exit p0

    .line 114
    throw v0
.end method

.method public setProgressResult(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 6
    .line 7
    if-ne p1, v1, :cond_2

    .line 8
    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mCurrentProgress:F

    .line 24
    .line 25
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mTargetProgress:F

    .line 26
    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final declared-synchronized show()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BSS_EnrollGuideFrame"

    .line 3
    .line 4
    const-string v1, "show"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 24
    .line 25
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getWindowLayoutParam(IIZ)Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->getTouchWindowLayoutParam()Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mViewTouch:Landroid/view/View;

    .line 65
    .line 66
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setFramePosition()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mIsWindowAttached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit p0

    .line 83
    throw v0
.end method

.method public final startScan()V
    .locals 2

    .line 1
    const-string v0, "BSS_EnrollGuideFrame"

    .line 2
    .line 3
    const-string v1, "startScan"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setState(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final tuneMovingArea(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->setFramePosition()V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Tuned from "

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " to "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollGuideFrame;->mMovingTune:I

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "BSS_EnrollGuideFrame"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method
