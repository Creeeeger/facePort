.class public final Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public hasSomethingChanged:Z

.field public lastOrientation:I

.field public final marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070471

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->lastOrientation:I

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    return-void
.end method


# virtual methods
.method public final updateMarqueeValues()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->maxShift:I

    if-gt v1, v3, :cond_0

    neg-int v4, v3

    if-ge v1, v4, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->verticalShift:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->verticalShift:I

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x2

    mul-int/lit8 v4, v1, -0x1

    new-instance v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    iput v3, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    iput v3, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    iput v3, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    iput v3, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    iput v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    iput v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    iput v4, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    iget v6, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    if-ne v6, v3, :cond_2

    iget v6, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    if-ne v6, v1, :cond_2

    iget v1, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    if-ne v1, v3, :cond_2

    iget v1, v5, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
