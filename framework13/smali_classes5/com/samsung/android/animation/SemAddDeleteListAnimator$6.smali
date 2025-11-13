.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->insertDeleteFromAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 844
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 848
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeleteRunnable:Ljava/lang/Runnable;

    .line 852
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
