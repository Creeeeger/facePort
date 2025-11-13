.class public final Landroidx/apppickerview/widget/AppPickerView$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/apppickerview/widget/AppPickerView;I)V
    .locals 0

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "AppPickerView"

    const-string v1, "run refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    const-string v0, "AppPickerView"

    const-string v1, "run refreshUI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
