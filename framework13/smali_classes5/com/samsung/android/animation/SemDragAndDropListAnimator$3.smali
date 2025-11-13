.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;
.super Ljava/lang/Object;
.source "SemDragAndDropListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 555
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapTranslateY:I

    .line 559
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 560
    return-void
.end method
