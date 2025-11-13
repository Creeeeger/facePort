.class public final Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->this$0:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;->mView:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onLongPressed(Landroid/view/View;)V

    return-void
.end method
