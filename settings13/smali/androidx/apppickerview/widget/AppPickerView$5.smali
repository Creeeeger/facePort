.class Landroidx/apppickerview/widget/AppPickerView$5;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AppPickerView;I)V
    .locals 0

    .line 625
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$5;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppPickerView"

    const-string v1, "run refreshUI by position"

    .line 628
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$5;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$5;->val$position:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
