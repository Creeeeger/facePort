.class public final Landroidx/appcompat/widget/SeslIndicator;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public defaultCircle:Landroid/graphics/drawable/Drawable;

.field public indicator:Ljava/util/List;

.field public itemClickListener:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

.field public selectCircle:Landroid/graphics/drawable/Drawable;

.field public selectedPosition:I


# virtual methods
.method public final addIndicator()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->defaultCircle:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->defaultCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectCircle:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    new-instance v1, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/SeslIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;-><init>(Landroidx/appcompat/widget/SeslIndicator;Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0711d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SeslIndicator;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method public final invalidateIndicator()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    iget v4, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeIndicator(I)V
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget p1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget p1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslIndicator;->setSelectedPosition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslIndicator;->invalidateIndicator()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setDefaultCircle(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    iput-object p1, v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->defaultCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslIndicator;->defaultCircle:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setSelectCircle(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    iput-object p1, v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->setActive(Z)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectCircle:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/SeslIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslIndicator;->invalidateIndicator()V

    return-void
.end method
