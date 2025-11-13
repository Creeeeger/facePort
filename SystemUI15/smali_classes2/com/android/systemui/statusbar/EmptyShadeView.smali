.class public Lcom/android/systemui/statusbar/EmptyShadeView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEmptyFooterText:Landroid/widget/TextView;

.field public mEmptyText:Landroid/widget/TextView;

.field public mFooterIcon:I

.field public mFooterText:I

.field public mFooterVisibility:I

.field public mSize:I

.field public mText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f1305c7

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    const p1, 0x7f080928

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    const p1, 0x7f1313ee    # 1.955E38f

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070bc3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    return-void
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;-><init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-object v0
.end method

.method public final findContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a07e3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findSecondaryView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a07e4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070bc3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060668

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    const v0, 0x7f0a07e3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    const v0, 0x7f0a07e4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
