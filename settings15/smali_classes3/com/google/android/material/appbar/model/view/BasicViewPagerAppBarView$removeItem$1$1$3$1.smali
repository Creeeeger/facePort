.class public final Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic this$0:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->this$0:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    iput-object p2, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput p3, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->$index:I

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->this$0:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->$index:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->access$moveNextAndRemove(Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;Landroidx/viewpager2/widget/ViewPager2;I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->this$0:Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;

    iget p0, p0, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView$removeItem$1$1$3$1;->$index:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/model/view/BasicViewPagerAppBarView;->removeIndicator(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
