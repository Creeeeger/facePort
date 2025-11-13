.class Lcom/android/internal/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 91
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmIsParentThemeDeviceDefault(Lcom/android/internal/view/menu/CascadingMenuPopup;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 97
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 104
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MenuPopupWindow;->show()V

    .line 105
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_0

    .line 100
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 107
    .end local v0    # "anchor":Landroid/view/View;
    :cond_2
    goto :goto_4

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .restart local v0    # "anchor":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 119
    .restart local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MenuPopupWindow;->show()V

    .line 120
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_2

    .line 115
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 124
    .end local v0    # "anchor":Landroid/view/View;
    :cond_6
    :goto_4
    return-void
.end method
