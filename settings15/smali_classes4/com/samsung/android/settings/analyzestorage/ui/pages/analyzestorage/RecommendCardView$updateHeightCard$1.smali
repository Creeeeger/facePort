.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->$view:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;->$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
