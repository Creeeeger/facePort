.class public final Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final FONT_WEIGHT_REGULAR:I

.field public final FONT_WEIGHT_SEMIBOLD:I

.field public final popupList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->popupList:Ljava/util/List;

    const/16 p1, 0x190

    iput p1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->FONT_WEIGHT_REGULAR:I

    const/16 p1, 0x258

    iput p1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->FONT_WEIGHT_SEMIBOLD:I

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;->checked:Z

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070d8f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d8e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d8d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d030e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->popupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    if-nez p1, :cond_1

    invoke-virtual {p3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p3, p1, p2, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->popupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_2

    invoke-virtual {p3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p3, p1, v5, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    sub-int/2addr v2, p2

    invoke-virtual {p3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    invoke-virtual {p3, p1, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p3, p1, p2, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const p1, 0x7f0a0d18

    invoke-virtual {p3, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0605a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo p1, "sec"

    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz v1, :cond_4

    iget p0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->FONT_WEIGHT_SEMIBOLD:I

    invoke-static {p1, p0, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_4
    iget p0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;->FONT_WEIGHT_REGULAR:I

    invoke-static {p1, p0, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    const p0, 0x7f0a028a

    invoke-virtual {p3, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter$initializeAccessibilityNodeInfoForItem$1;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter$initializeAccessibilityNodeInfoForItem$1;-><init>(Z)V

    invoke-static {p3, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-object p3
.end method
