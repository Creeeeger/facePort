.class public final Landroidx/appcompat/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 12
    .line 13
    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void
.end method
