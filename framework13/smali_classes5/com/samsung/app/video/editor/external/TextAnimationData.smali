.class public Lcom/samsung/app/video/editor/external/TextAnimationData;
.super Ljava/lang/Object;
.source "TextAnimationData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x22963d13f54526daL


# instance fields
.field private blacklist animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field private blacklist animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

.field private blacklist mAnimationType:I

.field private blacklist mEndAlpha:F

.field private blacklist mEndFrame:I

.field private blacklist mEndRotate:F

.field private blacklist mEndScaleX:F

.field private blacklist mEndScaleY:F

.field private blacklist mEndTranslateX:F

.field private blacklist mEndTranslateY:F

.field private blacklist mInterpolation:I

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mStartAlpha:F

.field private blacklist mStartFrame:I

.field private blacklist mStartRotate:F

.field private blacklist mStartScaleX:F

.field private blacklist mStartScaleY:F

.field private blacklist mStartTranslateX:F

.field private blacklist mStartTranslateY:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 19
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 42
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 43
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mAnimationType:I

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartAlpha:F

    .line 45
    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndAlpha:F

    .line 46
    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleX:F

    .line 47
    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleX:F

    .line 48
    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleY:F

    .line 49
    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleY:F

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/TextAnimationData;)V
    .locals 1
    .param p1, "animationData"    # Lcom/samsung/app/video/editor/external/TextAnimationData;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 19
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 53
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartFrame:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartFrame:I

    .line 54
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndFrame:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndFrame:I

    .line 55
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mAnimationType:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mAnimationType:I

    .line 56
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 57
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mInterpolation:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mInterpolation:I

    .line 58
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 59
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartAlpha:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartAlpha:F

    .line 60
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndAlpha:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndAlpha:F

    .line 61
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateX:F

    .line 62
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateX:F

    .line 63
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateY:F

    .line 64
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateY:F

    .line 65
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleX:F

    .line 66
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleX:F

    .line 67
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleY:F

    .line 68
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleY:F

    .line 69
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartRotate:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartRotate:F

    .line 70
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndRotate:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndRotate:F

    .line 71
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotX:F

    .line 72
    iget v0, p1, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotY:F

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist getAnimationTypes()Lcom/samsung/app/video/editor/external/AnimationTypes;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    return-object v0
.end method

.method public blacklist getEndAlpha()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndAlpha:F

    return v0
.end method

.method public blacklist getEndFrame()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndFrame:I

    return v0
.end method

.method public blacklist getEndRotate()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndRotate:F

    return v0
.end method

.method public blacklist getEndScaleX()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleX:F

    return v0
.end method

.method public blacklist getEndScaleY()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleY:F

    return v0
.end method

.method public blacklist getEndTranslateX()F
    .locals 1

    .line 176
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateX:F

    return v0
.end method

.method public blacklist getEndTranslateY()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateY:F

    return v0
.end method

.method public blacklist getPivotX()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotX:F

    return v0
.end method

.method public blacklist getPivotY()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotY:F

    return v0
.end method

.method public blacklist getStartAlpha()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartAlpha:F

    return v0
.end method

.method public blacklist getStartFrame()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartFrame:I

    return v0
.end method

.method public blacklist getStartRotate()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartRotate:F

    return v0
.end method

.method public blacklist getStartScaleX()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleX:F

    return v0
.end method

.method public blacklist getStartScaleY()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleY:F

    return v0
.end method

.method public blacklist getStartTranslateX()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateX:F

    return v0
.end method

.method public blacklist getStartTranslateY()F
    .locals 1

    .line 180
    iget v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateY:F

    return v0
.end method

.method public blacklist setAlphaRange(FF)V
    .locals 1
    .param p1, "startAlpha"    # F
    .param p2, "endAlpha"    # F

    .line 103
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartAlpha:F

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndAlpha:F

    .line 105
    return-void
.end method

.method public blacklist setAnimationType(IILcom/samsung/app/video/editor/external/AnimationTypes;Lcom/samsung/app/video/editor/external/AnimationInterpolations;)V
    .locals 2
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I
    .param p3, "animationType"    # Lcom/samsung/app/video/editor/external/AnimationTypes;
    .param p4, "interpolation"    # Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 76
    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/app/video/editor/external/AnimationTypes;->MAX:Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 77
    :cond_0
    sget-object p3, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 78
    :cond_1
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartFrame:I

    .line 79
    iput p2, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndFrame:I

    .line 80
    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mAnimationType:I

    .line 81
    iput-object p3, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationTypes:Lcom/samsung/app/video/editor/external/AnimationTypes;

    .line 82
    invoke-virtual {p4}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mInterpolation:I

    .line 83
    iput-object p4, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->animationInterpolations:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 84
    return-void
.end method

.method public blacklist setEndFrame(I)V
    .locals 0
    .param p1, "endFrame"    # I

    .line 99
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndFrame:I

    .line 100
    return-void
.end method

.method public blacklist setRotationRange(FFFF)V
    .locals 0
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .line 124
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartRotate:F

    .line 125
    iput p2, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndRotate:F

    .line 126
    iput p3, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotX:F

    .line 127
    iput p4, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotY:F

    .line 128
    return-void
.end method

.method public blacklist setScaleRange(FFFFFF)V
    .locals 0
    .param p1, "startScaleX"    # F
    .param p2, "endScaleX"    # F
    .param p3, "startScaleY"    # F
    .param p4, "EndScaleY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .line 115
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleX:F

    .line 116
    iput p2, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleX:F

    .line 117
    iput p3, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartScaleY:F

    .line 118
    iput p4, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndScaleY:F

    .line 119
    iput p5, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotX:F

    .line 120
    iput p6, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mPivotY:F

    .line 121
    return-void
.end method

.method public blacklist setStartFrame(I)V
    .locals 0
    .param p1, "startFrame"    # I

    .line 91
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartFrame:I

    .line 92
    return-void
.end method

.method public blacklist setTranslateRange(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "endX"    # F
    .param p3, "startY"    # F
    .param p4, "endY"    # F

    .line 108
    iput p1, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateX:F

    .line 109
    iput p2, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateX:F

    .line 110
    iput p3, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mStartTranslateY:F

    .line 111
    iput p4, p0, Lcom/samsung/app/video/editor/external/TextAnimationData;->mEndTranslateY:F

    .line 112
    return-void
.end method
