.class public final Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v0, Lcom/android/systemui/qs/SecQSDetailController;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    const v3, 0x7f0a0960

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    float-to-int p0, p0

    float-to-int p2, p2

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/2addr p0, v1

    iput-boolean p0, p1, Lcom/android/systemui/qs/SecQSDetailController;->closeDetailOnRelease:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-boolean p1, p1, Lcom/android/systemui/qs/SecQSDetailController;->closeDetailOnRelease:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    :cond_2
    :goto_0
    return v1
.end method
