.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    iget-boolean v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 270
    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2$1;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_2
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$2;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
