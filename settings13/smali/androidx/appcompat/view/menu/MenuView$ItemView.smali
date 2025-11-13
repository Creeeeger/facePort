.class public interface abstract Landroidx/appcompat/view/menu/MenuView$ItemView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
.end method

.method public abstract initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemData",
            "menuType"
        }
    .end annotation
.end method

.method public abstract prefersCondensedTitle()Z
.end method
