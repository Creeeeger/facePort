.class public final Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

.field public final synthetic val$item:Landroid/view/MenuItem;

.field public final synthetic val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final synthetic val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->this$1:Landroidx/appcompat/view/menu/CascadingMenuPopup$3;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    .line 21
    .line 22
    iput-boolean v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
