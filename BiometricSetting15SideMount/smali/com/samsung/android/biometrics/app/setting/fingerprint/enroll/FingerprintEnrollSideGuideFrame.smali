.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;
.super Landroid/view/View;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final INTPL_READY:Landroid/view/animation/PathInterpolator;

.field public static final INTPL_SCAN:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mHandler:Landroid/os/Handler;

.field public final mInnerBarWidth:F

.field public mInnerScanHRatio:F

.field public mInnerScanVRatio:F

.field public mIsWindowAlreadyAdded:Z

.field public final mOuterBarMargin:F

.field public final mOuterBarWidth:F

.field public mOuterScanHRatio:F

.field public mOuterScanVRatio:F

.field public final mPntInnerBar:Landroid/graphics/Paint;

.field public final mPntOuterBar:Landroid/graphics/Paint;

.field public final mSensorPos:Landroid/graphics/PointF;

.field public final mSensorSize:Landroid/graphics/PointF;

.field public mState:I

.field public final mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3dcccccd    # 0.1f

    .line 4
    .line 5
    .line 6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    .line 8
    const v3, 0x3f666666    # 0.9f

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->INTPL_READY:Landroid/view/animation/PathInterpolator;

    .line 15
    .line 16
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->INTPL_SCAN:Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Point;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mSensorPos:Landroid/graphics/PointF;

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/PointF;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mSensorSize:Landroid/graphics/PointF;

    .line 24
    .line 25
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v2, v3}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 32
    .line 33
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 34
    .line 35
    invoke-direct {v4, v3}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 39
    .line 40
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-direct {v5, v6}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 47
    .line 48
    new-instance v6, Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mPntInnerBar:Landroid/graphics/Paint;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerBarWidth:F

    .line 57
    .line 58
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 59
    .line 60
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanVRatio:F

    .line 61
    .line 62
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 63
    .line 64
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanVRatio:F

    .line 65
    .line 66
    new-instance v8, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {v8, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mPntOuterBar:Landroid/graphics/Paint;

    .line 72
    .line 73
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarWidth:F

    .line 74
    .line 75
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarMargin:F

    .line 76
    .line 77
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 78
    .line 79
    const-string v3, "window"

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/view/WindowManager;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    .line 89
    new-instance p1, Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mHandler:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 113
    .line 114
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    int-to-float p1, p1

    .line 117
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 128
    .line 129
    const/4 v3, 0x5

    .line 130
    if-ne p1, v3, :cond_0

    .line 131
    .line 132
    iget p1, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->foldTopMargin:I

    .line 133
    .line 134
    :goto_0
    int-to-float p1, p1

    .line 135
    goto :goto_1

    .line 136
    :cond_0
    iget p1, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->topMargin:I

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_1
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 140
    .line 141
    iget p1, p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSensorHelper;->height:I

    .line 142
    .line 143
    int-to-float p1, p1

    .line 144
    iput p1, v1, Landroid/graphics/PointF;->y:F

    .line 145
    .line 146
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/high16 p2, 0x3f800000    # 1.0f

    .line 155
    .line 156
    invoke-static {v3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    const/high16 v0, 0x40000000    # 2.0f

    .line 161
    .line 162
    mul-float/2addr p2, v0

    .line 163
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerBarWidth:F

    .line 164
    .line 165
    const p2, 0x3ff33333    # 1.9f

    .line 166
    .line 167
    .line 168
    invoke-static {v3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    mul-float/2addr p2, v0

    .line 173
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarWidth:F

    .line 174
    .line 175
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 176
    .line 177
    invoke-static {v3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarMargin:F

    .line 182
    .line 183
    const p0, -0xeb579a

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    .line 188
    .line 189
    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 190
    .line 191
    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    .line 193
    .line 194
    const p1, -0x7feb579a

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->addReadyTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->addReadyTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper;)V

    .line 207
    .line 208
    .line 209
    new-instance p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 210
    .line 211
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->INTPL_SCAN:Landroid/view/animation/PathInterpolator;

    .line 212
    .line 213
    const-wide/16 v0, 0x1f4

    .line 214
    .line 215
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, p0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public static addReadyTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->INTPL_READY:Landroid/view/animation/PathInterpolator;

    .line 4
    .line 5
    const-wide/16 v2, 0x320

    .line 6
    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 14
    .line 15
    const-wide/16 v2, 0x12c

    .line 16
    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 26
    .line 27
    const-wide/16 v4, 0x226

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-direct {v0, v4, v5, v1, v6}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JLandroid/view/animation/PathInterpolator;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;-><init>(JF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static getExpandRectF(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float/2addr p1, v1

    .line 8
    mul-float/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-float/2addr p2, v1

    .line 14
    mul-float/2addr p2, v0

    .line 15
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr p1, v0

    .line 18
    div-float/2addr p2, v0

    .line 19
    add-float/2addr p2, p3

    .line 20
    new-instance p3, Landroid/graphics/RectF;

    .line 21
    .line 22
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 23
    .line 24
    sub-float/2addr v0, p1

    .line 25
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 26
    .line 27
    sub-float/2addr v1, p2

    .line 28
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 29
    .line 30
    add-float/2addr v2, p1

    .line 31
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 32
    .line 33
    add-float/2addr p0, p2

    .line 34
    invoke-direct {p3, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    return-object p3
.end method


# virtual methods
.method public final declared-synchronized addView()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mIsWindowAlreadyAdded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "BSS_SideSensorGuideFrame"

    .line 7
    .line 8
    const-string v1, "addView: SideGuideFrame Already added!"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mDisplaySize:Landroid/graphics/Point;

    .line 31
    .line 32
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 33
    .line 34
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    const/16 v6, 0x18

    .line 39
    .line 40
    const/4 v7, -0x3

    .line 41
    const/16 v5, 0x7d8

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mIsWindowAlreadyAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    :goto_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final declared-synchronized hide()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BSS_SideSensorGuideFrame"

    .line 3
    .line 4
    const-string v1, "hide"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v2, 0x1f4

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mSensorPos:Landroid/graphics/PointF;

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const v1, 0x3dcccccd    # 0.1f

    .line 23
    .line 24
    .line 25
    mul-float/2addr v0, v1

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    add-float/2addr v0, v2

    .line 29
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    mul-float/2addr v3, v1

    .line 36
    add-float/2addr v3, v2

    .line 37
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 38
    .line 39
    const v5, 0x3c23d70a    # 0.01f

    .line 40
    .line 41
    .line 42
    const/high16 v6, 0x40000000    # 2.0f

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x2

    .line 46
    if-ne v4, v8, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    mul-float/2addr v0, v1

    .line 55
    add-float/2addr v0, v2

    .line 56
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 57
    .line 58
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    mul-float/2addr v3, v1

    .line 65
    add-float/2addr v3, v2

    .line 66
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanVRatio:F

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 70
    .line 71
    cmpl-float v9, v4, v7

    .line 72
    .line 73
    if-eqz v9, :cond_2

    .line 74
    .line 75
    sub-float v4, v0, v4

    .line 76
    .line 77
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    cmpg-float v4, v4, v5

    .line 82
    .line 83
    if-gez v4, :cond_1

    .line 84
    .line 85
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 89
    .line 90
    add-float/2addr v0, v4

    .line 91
    div-float/2addr v0, v6

    .line 92
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanHRatio:F

    .line 93
    .line 94
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanVRatio:F

    .line 95
    .line 96
    add-float/2addr v3, v4

    .line 97
    div-float/2addr v3, v6

    .line 98
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterScanVRatio:F

    .line 99
    .line 100
    :cond_2
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    .line 101
    .line 102
    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarWidth:F

    .line 103
    .line 104
    neg-float v10, v9

    .line 105
    div-float/2addr v10, v6

    .line 106
    div-float/2addr v9, v6

    .line 107
    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mSensorSize:Landroid/graphics/PointF;

    .line 108
    .line 109
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 110
    .line 111
    invoke-direct {v4, v10, v7, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    .line 113
    .line 114
    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mOuterBarMargin:F

    .line 115
    .line 116
    invoke-static {v4, v0, v3, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->getExpandRectF(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    div-float/2addr v3, v6

    .line 125
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mPntOuterBar:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    mul-float/2addr v0, v1

    .line 137
    add-float/2addr v0, v2

    .line 138
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    mul-float/2addr v3, v1

    .line 145
    add-float/2addr v3, v2

    .line 146
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mState:I

    .line 147
    .line 148
    if-ne v1, v8, :cond_3

    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const v1, 0x3f99999a    # 1.2f

    .line 157
    .line 158
    .line 159
    mul-float/2addr v0, v1

    .line 160
    add-float/2addr v0, v2

    .line 161
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 162
    .line 163
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerScan:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->getPos()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const v3, 0x3e99999a    # 0.3f

    .line 170
    .line 171
    .line 172
    mul-float/2addr v1, v3

    .line 173
    add-float v3, v1, v2

    .line 174
    .line 175
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanVRatio:F

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 179
    .line 180
    cmpl-float v2, v1, v7

    .line 181
    .line 182
    if-eqz v2, :cond_5

    .line 183
    .line 184
    sub-float v1, v0, v1

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    cmpg-float v1, v1, v5

    .line 191
    .line 192
    if-gez v1, :cond_4

    .line 193
    .line 194
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 198
    .line 199
    add-float/2addr v0, v1

    .line 200
    div-float/2addr v0, v6

    .line 201
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanHRatio:F

    .line 202
    .line 203
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanVRatio:F

    .line 204
    .line 205
    add-float/2addr v3, v1

    .line 206
    div-float/2addr v3, v6

    .line 207
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerScanVRatio:F

    .line 208
    .line 209
    :cond_5
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    .line 210
    .line 211
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mInnerBarWidth:F

    .line 212
    .line 213
    neg-float v4, v2

    .line 214
    div-float/2addr v4, v6

    .line 215
    div-float/2addr v2, v6

    .line 216
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mSensorSize:Landroid/graphics/PointF;

    .line 217
    .line 218
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 219
    .line 220
    invoke-direct {v1, v4, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v0, v3, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->getExpandRectF(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    div-float/2addr v1, v6

    .line 232
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mPntInnerBar:Landroid/graphics/Paint;

    .line 233
    .line 234
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final declared-synchronized removeView()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mIsWindowAlreadyAdded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mIsWindowAlreadyAdded:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public final declared-synchronized show()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BSS_SideSensorGuideFrame"

    .line 3
    .line 4
    const-string v1, "show"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->addView()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerInnerReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollSideGuideFrame;->mTimerOuterReady:Lcom/samsung/android/biometrics/app/setting/AnimationHelper;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->start()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/16 v1, 0x1f4

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method
