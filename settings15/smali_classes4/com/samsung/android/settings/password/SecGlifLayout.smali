.class public final Lcom/samsung/android/settings/password/SecGlifLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDetailsTextView:Landroid/widget/TextView;

.field public final mHeaderTextView:Landroid/widget/TextView;

.field public final mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    const p3, 0x7f0a0e24

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    const p3, 0x7f080479

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a0f5d

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-virtual {p1, p2, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a070e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    const p1, 0x7f0a04ec

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0f61

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mIcon:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getDescriptionText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptionTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getHeaderText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getHeaderTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setDescriptionText(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHeaderText(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setHeaderText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
