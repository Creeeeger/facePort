.class public final Lcom/android/systemui/DessertCaseView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    invoke-static {v3}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v3

    iget v4, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v4}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
