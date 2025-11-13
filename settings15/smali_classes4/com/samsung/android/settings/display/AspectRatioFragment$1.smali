.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    return-void
.end method
