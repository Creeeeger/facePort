.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;
.super Ljava/lang/Object;
.source "RotateAppsSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFilterCompleted(I)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
