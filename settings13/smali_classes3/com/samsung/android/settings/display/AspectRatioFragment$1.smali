.class Lcom/samsung/android/settings/display/AspectRatioFragment$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/AspectRatioFragment$1$1;-><init>(Lcom/samsung/android/settings/display/AspectRatioFragment$1;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$1;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
