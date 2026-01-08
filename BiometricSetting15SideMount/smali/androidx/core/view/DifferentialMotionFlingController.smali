.class public final Landroidx/core/view/DifferentialMotionFlingController;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlingVelocityThresholds:[I

.field public mLastFlingVelocity:F

.field public mLastProcessedAxis:I

.field public mLastProcessedDeviceId:I

.field public mLastProcessedSource:I

.field public final mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

.field public final mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public final mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    .line 16
    .line 17
    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    .line 18
    .line 19
    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    .line 20
    .line 21
    const v2, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    filled-new-array {v2, v3}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    iget-object v4, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v2, v0, :cond_1

    .line 16
    .line 17
    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_1

    .line 20
    .line 21
    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    .line 22
    .line 23
    if-eq v2, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v6, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual {v2, v6, p2, v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity(III)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    aput v6, v4, v5

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v2, v6, p2, v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity(III)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    aput v2, v4, v3

    .line 66
    .line 67
    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    .line 68
    .line 69
    iput v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    .line 70
    .line 71
    iput p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    .line 72
    .line 73
    move v0, v3

    .line 74
    :goto_1
    aget v1, v4, v5

    .line 75
    .line 76
    const v2, 0x7fffffff

    .line 77
    .line 78
    .line 79
    if-ne v1, v2, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 86
    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :cond_3
    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    .line 102
    :cond_4
    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    iget-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    sget-object v2, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 115
    .line 116
    .line 117
    const/16 v2, 0x3e8

    .line 118
    .line 119
    invoke-virtual {v1, v2, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 120
    .line 121
    .line 122
    sget-object p1, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iget-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    .line 136
    .line 137
    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->getScaledScrollFactor()F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    mul-float/2addr v1, p1

    .line 142
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 v2, 0x0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    iget v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    cmpl-float v0, p1, v0

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    cmpl-float p1, p1, v2

    .line 160
    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    :cond_5
    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->stopDifferentialMotionFling()V

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    aget v0, v4, v5

    .line 171
    .line 172
    int-to-float v0, v0

    .line 173
    cmpg-float p1, p1, v0

    .line 174
    .line 175
    if-gez p1, :cond_7

    .line 176
    .line 177
    return-void

    .line 178
    :cond_7
    aget p1, v4, v3

    .line 179
    .line 180
    neg-int v0, p1

    .line 181
    int-to-float v0, v0

    .line 182
    int-to-float p1, p1

    .line 183
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-interface {p2, p1}, Landroidx/core/view/DifferentialMotionFlingTarget;->startDifferentialMotionFling(F)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_8

    .line 196
    .line 197
    move v2, p1

    .line 198
    :cond_8
    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    .line 199
    .line 200
    return-void
.end method
