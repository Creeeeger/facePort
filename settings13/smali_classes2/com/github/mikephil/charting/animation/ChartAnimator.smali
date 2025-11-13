.class public Lcom/github/mikephil/charting/animation/ChartAnimator;
.super Ljava/lang/Object;
.source "ChartAnimator.java"


# instance fields
.field private mListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mPhaseX:F

.field protected mPhaseY:F


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mPhaseY:F

    .line 25
    iput v0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mPhaseX:F

    .line 32
    iput-object p1, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private yAnimator(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 48
    fill-array-data v0, :array_0

    const-string/jumbo v1, "phaseY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 49
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p1

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->yAnimator(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 158
    iget-object p0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public getPhaseX()F
    .locals 0

    .line 191
    iget p0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mPhaseX:F

    return p0
.end method

.method public getPhaseY()F
    .locals 0

    .line 168
    iget p0, p0, Lcom/github/mikephil/charting/animation/ChartAnimator;->mPhaseY:F

    return p0
.end method
