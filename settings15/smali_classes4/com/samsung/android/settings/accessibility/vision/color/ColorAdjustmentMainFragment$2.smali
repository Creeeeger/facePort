.class public final Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    iget-object v2, v1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080a0d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f080a0c

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->updatePageIndicatorDescription$1(I)V

    return-void
.end method
