.class public final Landroidx/slice/widget/SliceView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/slice/widget/SliceView;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceView;I)V
    .locals 0

    iput p2, p0, Landroidx/slice/widget/SliceView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/slice/widget/SliceView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-boolean v1, v0, Landroidx/slice/widget/SliceView;->mPressing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    iget-object p0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
