.class Lcom/samsung/android/settings/display/CameraCutoutFragment$1;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/display/CameraCutoutFragment$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$1$1;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$1;)V

    invoke-virtual {v0, p1, v2}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_2
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
