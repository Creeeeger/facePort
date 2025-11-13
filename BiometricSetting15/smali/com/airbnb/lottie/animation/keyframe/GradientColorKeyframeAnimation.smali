.class public final Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 25
    .line 26
    array-length v2, v2

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 35
    .line 36
    new-array v0, v1, [F

    .line 37
    .line 38
    new-array v1, v1, [I

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    cmpg-float v1, p2, v1

    .line 26
    .line 27
    if-gtz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    cmpl-float v1, p2, v1

    .line 36
    .line 37
    if-ltz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    iget-object v3, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 47
    .line 48
    array-length v4, v3

    .line 49
    if-ne v2, v4, :cond_5

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    array-length v4, v1

    .line 53
    iget-object v5, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 54
    .line 55
    iget-object v6, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 56
    .line 57
    if-ge v2, v4, :cond_3

    .line 58
    .line 59
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 60
    .line 61
    aget v4, v4, v2

    .line 62
    .line 63
    iget-object v7, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 64
    .line 65
    aget v7, v7, v2

    .line 66
    .line 67
    invoke-static {v4, v7, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    aput v4, v6, v2

    .line 72
    .line 73
    aget v4, v1, v2

    .line 74
    .line 75
    aget v6, v3, v2

    .line 76
    .line 77
    invoke-static {p2, v4, v6}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    aput v4, v5, v2

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    array-length p1, v1

    .line 87
    :goto_1
    array-length p2, v6

    .line 88
    if-ge p1, p2, :cond_4

    .line 89
    .line 90
    array-length p2, v1

    .line 91
    add-int/lit8 p2, p2, -0x1

    .line 92
    .line 93
    aget p2, v6, p2

    .line 94
    .line 95
    aput p2, v6, p1

    .line 96
    .line 97
    array-length p2, v1

    .line 98
    add-int/lit8 p2, p2, -0x1

    .line 99
    .line 100
    aget p2, v5, p2

    .line 101
    .line 102
    aput p2, v5, p1

    .line 103
    .line 104
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    :goto_2
    return-object p0

    .line 108
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p2, "Cannot interpolate between gradients. Lengths vary ("

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    array-length p2, v1

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, " vs "

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    array-length p2, v3

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p2, ")"

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method
