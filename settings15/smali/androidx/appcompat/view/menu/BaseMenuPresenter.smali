.class public abstract Landroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field public mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public mId:I

.field public final mItemLayoutRes:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final mMenuLayoutRes:I

.field public mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field public final mSystemContext:Landroid/content/Context;

.field public final mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d0ab3

    iput p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const p1, 0x7f0d0ab2

    iput p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mId:I

    return p0
.end method
