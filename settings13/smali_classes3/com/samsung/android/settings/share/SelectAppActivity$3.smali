.class Lcom/samsung/android/settings/share/SelectAppActivity$3;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/share/SelectAppActivity;->initView(Lcom/samsung/android/settings/share/SelectAppViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

.field final synthetic val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;Lcom/samsung/android/settings/share/SelectAppViewModel;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppUiState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/share/SelectAppUiState;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->onStateChanged(Lcom/samsung/android/settings/share/SelectAppUiState;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmOthersAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 265
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmFavoriteAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDragStart()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppUiState;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/share/SelectAppUiState;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->onStateChanged(Lcom/samsung/android/settings/share/SelectAppUiState;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmOthersAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$3;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmFavoriteAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
