.class public final Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    iget-object v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
