.class Landroidx/apppickerview/widget/AppPickerView$6;
.super Ljava/lang/Object;
.source "AppPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AppPickerView;->refresh()V
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

    .line 635
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$6;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppPickerView"

    const-string v1, "run refresh"

    .line 638
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$6;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
