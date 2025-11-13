.class Lcom/samsung/android/animation/SemGridSortAnimator$1;
.super Ljava/lang/Object;
.source "SemGridSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemGridSortAnimator;->sortTheGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemGridSortAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemGridSortAnimator;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemGridSortAnimator;->-$$Nest$mstartFadeInTranslateAnim(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
