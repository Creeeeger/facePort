.class Landroidx/core/widget/NestedScrollView$2;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/widget/NestedScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2684
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$2;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2687
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$2;->this$0:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method
