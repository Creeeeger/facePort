.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;
.super Ljava/lang/Object;
.source "RotateAppsSettings.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
