.class public Lcom/android/settings/password/SecGlifLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "SecGlifLayout.java"


# instance fields
.field private mDetailsTextView:Landroid/widget/TextView;

.field private mFrp:Z

.field private mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean p3, p0, Lcom/android/settings/password/SecGlifLayout;->mFrp:Z

    if-eqz p3, :cond_0

    .line 28
    sget p3, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p2, p0, Lcom/android/settings/password/SecGlifLayout;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 29
    sget p3, Lcom/android/settings/R$drawable;->ic_lock:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    const/4 p0, 0x0

    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/android/settings/R$id;->detailsText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/android/settings/R$id;->sud_layout_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/password/SecGlifLayout;->mIcon:Landroid/widget/ImageView;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDescriptionText()Ljava/lang/CharSequence;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setDescriptionText(I)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHeaderText(I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/password/SecGlifLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
