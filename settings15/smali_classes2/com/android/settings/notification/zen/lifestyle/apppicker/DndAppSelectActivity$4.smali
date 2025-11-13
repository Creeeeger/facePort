.class public final Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-boolean v1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    const v1, 0x7f0a11df

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
