.class public final Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/power/ChargerNowBarView;


# direct methods
.method public constructor <init>(Landroidx/core/animation/ValueAnimator;Lcom/android/systemui/power/ChargerNowBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 9

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/power/ChargerAnimationUtil;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationUtil;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    invoke-virtual {v3}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v3, v2

    add-float/2addr v2, v3

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v2, v4, v0

    aput v3, v4, v1

    aput v3, v4, p1

    aget v2, v4, v0

    aget v3, v4, v1

    aget v4, v4, p1

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iget-boolean v5, p0, Lcom/android/systemui/power/ChargerNowBarView;->isRTL:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :goto_0
    new-array v6, p1, [Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v6, v0

    aput-object v5, v6, v1

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v5, v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06009c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v2, v3, v4, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
