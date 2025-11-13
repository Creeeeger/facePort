.class Lcom/samsung/android/animation/SemListSortAnimator$1;
.super Ljava/lang/Object;
.source "SemListSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemListSortAnimator;->sortTheList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemListSortAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemListSortAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemListSortAnimator;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$1;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemListSortAnimator;->-$$Nest$mstartFadeInTranslateAnim(Lcom/samsung/android/animation/SemListSortAnimator;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
