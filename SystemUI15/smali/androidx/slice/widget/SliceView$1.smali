.class public final Landroidx/slice/widget/SliceView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-boolean v1, v0, Landroidx/slice/widget/SliceView;->mPressing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    iget-object p0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method
