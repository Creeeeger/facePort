.class public final Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$3;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 2

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$3;->this$0:Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move p1, p3

    :goto_0
    iget-object p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mDotIndicators:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    const v1, 0x7f0803c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mDotIndicators:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    aget-object v0, v0, p2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartSkip:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndNext:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartRestart:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndDone:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartSkip:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndNext:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartRestart:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndDone:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method
