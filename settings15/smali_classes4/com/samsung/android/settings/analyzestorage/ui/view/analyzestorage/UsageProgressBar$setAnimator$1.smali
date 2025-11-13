.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progress:F

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->weightSum:F

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_1

    move-object v8, v7

    check-cast v8, Ljava/lang/Float;

    :cond_1
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget v8, v1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progress:F

    iget v9, v1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->weightSum:F

    sub-float/2addr v8, v9

    cmpl-float v10, v8, v0

    if-lez v10, :cond_2

    cmpg-float v10, v7, v8

    if-gez v10, :cond_3

    move v8, v7

    goto :goto_2

    :cond_2
    move v8, v0

    :cond_3
    :goto_2
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float/2addr v9, v7

    iput v9, v1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->weightSum:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progress:F

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progress:F

    iget-wide v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->used:J

    long-to-float v2, v4

    mul-float/2addr v1, v2

    iget-wide v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->total:J

    long-to-float p0, v4

    div-float/2addr v1, p0

    const/4 p0, -0x1

    invoke-direct {v0, v3, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
