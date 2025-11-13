.class public final Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;
.super Landroid/widget/ListPopupWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public adapter:Landroid/widget/ListAdapter;

.field public dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public onceShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v1, 0x7f070e5a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    new-instance v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$2;-><init>(Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;)V

    invoke-super {p0, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method


# virtual methods
.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->adapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final show()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->onceShowed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->onceShowed:Z

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    const v4, 0x7f070e5a

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v0, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0605ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0605ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->adapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, v3, :cond_6

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_7
    if-le v5, v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    :cond_9
    :goto_4
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
