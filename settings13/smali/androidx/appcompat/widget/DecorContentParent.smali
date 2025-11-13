.class public interface abstract Landroidx/appcompat/widget/DecorContentParent;
.super Ljava/lang/Object;
.source "DecorContentParent.java"


# virtual methods
.method public abstract canShowOverflowMenu()Z
.end method

.method public abstract dismissPopups()V
.end method

.method public abstract hideOverflowMenu()Z
.end method

.method public abstract initFeature(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowFeature"
        }
    .end annotation
.end method

.method public abstract isOverflowMenuShowPending()Z
.end method

.method public abstract isOverflowMenuShowing()Z
.end method

.method public abstract setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "cb"
        }
    .end annotation
.end method

.method public abstract setMenuPrepared()V
.end method

.method public abstract setWindowCallback(Landroid/view/Window$Callback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation
.end method

.method public abstract showOverflowMenu()Z
.end method
