.class Landroid/widget/SemHorizontalListView$1;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalListView;

    .line 189
    iput-object p1, p0, Landroid/widget/SemHorizontalListView$1;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAutoScroll(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 192
    iget-object v0, p0, Landroid/widget/SemHorizontalListView$1;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p1, p1}, Landroid/widget/SemHorizontalListView;->trackMotionScroll(II)Z

    .line 193
    return-void
.end method
