.class public final Lcom/android/systemui/user/UserSwitcherPopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public adapter:Landroid/widget/ListAdapter;

.field public final context:Landroid/content/Context;

.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method


# virtual methods
.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->adapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final show()V
    .locals 9

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    const v3, 0x7f07010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    const v3, 0x7f07010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;-><init>(ILandroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;

    invoke-direct {v5, v2, v4}, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v5, v3, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->adapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-interface {v2, v6, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v1, v7

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    :cond_2
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
