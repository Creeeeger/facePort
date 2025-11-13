.class public final Lcom/android/wm/shell/common/split/DividerView$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$6;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$6;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->openDividerPanelIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method
