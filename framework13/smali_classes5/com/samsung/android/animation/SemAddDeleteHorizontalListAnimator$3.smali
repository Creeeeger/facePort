.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->insertIntoAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 493
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 498
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 502
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
