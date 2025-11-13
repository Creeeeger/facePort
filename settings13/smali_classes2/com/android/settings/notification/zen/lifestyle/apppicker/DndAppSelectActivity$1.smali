.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;
.super Ljava/lang/Object;
.source "DndAppSelectActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fputmIsSearchExpanded(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Z)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSelectAllWrapper(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSelectAreaWrapper(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmViewModel(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getCheckedCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSelectAreaWrapper(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$mupdateViewVisibility(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    const/4 p0, 0x1

    return p0
.end method
