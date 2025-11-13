.class Landroidx/apppickerview/widget/AppPickerView$3;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AppPickerView;->refreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    .line 605
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppPickerView"

    const-string v1, "run refreshUI"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$3;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
