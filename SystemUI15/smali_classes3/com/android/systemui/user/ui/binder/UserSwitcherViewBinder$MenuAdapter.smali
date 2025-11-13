.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public sections:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->sections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->sections:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, p2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x7f0806b2

    invoke-virtual {p3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    const p3, 0x7f0807c4

    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_3

    check-cast v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d054c

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0505

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v6, v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->iconResourceId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f0a0d10

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->textResourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter$getView$1$1;

    invoke-direct {v5, v1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter$getView$1$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter$getView$1$2;

    invoke-direct {v0, v4}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter$getView$1$2;-><init>(Landroid/view/View;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_4
    return-object p2
.end method
