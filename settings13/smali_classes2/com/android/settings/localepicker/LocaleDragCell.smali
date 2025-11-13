.class Lcom/android/settings/localepicker/LocaleDragCell;
.super Landroid/widget/LinearLayout;
.source "LocaleDragCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mLocalized:Landroid/widget/TextView;

.field private mMiniLabel:Landroid/widget/TextView;

.field private mPosition:I

.field private mSelectBox:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-class p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mPosition:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    sget v0, Lcom/android/settings/R$id;->label:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/android/settings/R$id;->l10nWarn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/android/settings/R$id;->miniLabel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    .line 55
    sget v0, Lcom/android/settings/R$id;->dragHandle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/android/settings/R$id;->select_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mSelectBox:Landroid/widget/ImageView;

    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setLocalized(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setMiniLabel(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mPosition:I

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setShowHandle(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setShowMiniLabel(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setShowSelectBox(Z)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mSelectBox:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
