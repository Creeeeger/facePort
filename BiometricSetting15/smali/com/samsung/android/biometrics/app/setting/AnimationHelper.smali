.class public final Lcom/samsung/android/biometrics/app/setting/AnimationHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mIsRepeat:Z

.field public final mLastPos:F

.field public final mSet:Ljava/util/ArrayList;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;-><init>(ZF)V

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mSet:Ljava/util/ArrayList;

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mIsRepeat:Z

    .line 5
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mLastPos:F

    return-void
.end method


# virtual methods
.method public final addTrack(Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mSet:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getPos()F
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mSet:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    move-wide v3, v1

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 21
    .line 22
    iget-wide v5, v5, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->length:J

    .line 23
    .line 24
    add-long/2addr v3, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    cmp-long v0, v3, v1

    .line 27
    .line 28
    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mLastPos:F

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return v5

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    iget-wide v8, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mTimestamp:J

    .line 38
    .line 39
    sub-long/2addr v6, v8

    .line 40
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    cmp-long v2, v0, v3

    .line 45
    .line 46
    if-ltz v2, :cond_2

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mIsRepeat:Z

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    return v5

    .line 53
    :cond_2
    div-long v6, v0, v3

    .line 54
    .line 55
    mul-long/2addr v6, v3

    .line 56
    sub-long/2addr v0, v6

    .line 57
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mSet:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;

    .line 74
    .line 75
    iget-wide v3, v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->length:J

    .line 76
    .line 77
    cmp-long v6, v0, v3

    .line 78
    .line 79
    if-lez v6, :cond_3

    .line 80
    .line 81
    sub-long/2addr v0, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p0, v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->interpolator:Landroid/view/animation/PathInterpolator;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    long-to-float v0, v0

    .line 88
    long-to-float v1, v3

    .line 89
    div-float/2addr v0, v1

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    iget-boolean v0, v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->isReverse:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    .line 99
    .line 100
    sub-float p0, v0, p0

    .line 101
    .line 102
    :cond_4
    return p0

    .line 103
    :cond_5
    iget p0, v2, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->defValue:F

    .line 104
    .line 105
    return p0

    .line 106
    :cond_6
    return v5
.end method

.method public final start()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper;->mTimestamp:J

    .line 6
    .line 7
    return-void
.end method
