.class Lcom/samsung/android/settings/share/SelectAppActivity$2;
.super Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;
.source "SelectAppActivity.java"


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
.method constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;Landroid/content/Context;Lcom/samsung/android/settings/share/SelectAppViewModel;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$2;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iput-object p3, p0, Lcom/samsung/android/settings/share/SelectAppActivity$2;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/share/app/SelectPageItemDragCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isLongPressDragEnabled()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$2;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 208
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$2;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance p1, Lcom/samsung/android/settings/share/SelectAppUiState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/share/SelectAppUiState;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->onStateChanged(Lcom/samsung/android/settings/share/SelectAppUiState;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$2;->val$viewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    new-instance p1, Lcom/samsung/android/settings/share/SelectAppUiState;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/share/SelectAppUiState;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/SelectAppViewModel;->onStateChanged(Lcom/samsung/android/settings/share/SelectAppUiState;)V

    :goto_0
    return-void
.end method
