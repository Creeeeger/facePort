.class public Landroid/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupMenu$OnMenuItemClickListener;,
        Landroid/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private final greylist-max-o mAnchor:Landroid/view/View;

.field private final greylist-max-r mContext:Landroid/content/Context;

.field private greylist-max-o mDragListener:Landroid/view/View$OnTouchListener;

.field private final greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private greylist-max-o mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

.field private final greylist mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuItemClickListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDismissListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    const v4, 0x1010300

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v1, Landroid/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupMenu$1;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v4, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    new-instance v1, Landroid/widget/PopupMenu$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupMenu$2;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    return-void
.end method

.method public whitelist getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupMenu$3;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu$3;-><init>(Landroid/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public whitelist getGravity()I
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist getMenuListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inflate(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public whitelist setForceShowIcon(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public whitelist show()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
