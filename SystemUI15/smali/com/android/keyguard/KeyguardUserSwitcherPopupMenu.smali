.class public final Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0806b2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 7

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const v2, 0x7f0a04de

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v4, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3}, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;-><init>(Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;Landroid/content/Context;I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v4, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v6, v3}, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$1;-><init>(Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;Landroid/content/Context;I)V

    invoke-virtual {v0, v4, v5, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setTag(ILjava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUserSwitcherPopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
