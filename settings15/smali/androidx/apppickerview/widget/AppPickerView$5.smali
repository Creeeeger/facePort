.class public final Landroidx/apppickerview/widget/AppPickerView$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Landroidx/apppickerview/widget/AppPickerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$5;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$5;->val$position:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "AppPickerView"

    const-string v1, "run refreshUI by position"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$5;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$5;->val$position:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
