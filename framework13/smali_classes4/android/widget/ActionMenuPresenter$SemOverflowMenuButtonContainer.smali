.class Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemOverflowMenuButtonContainer"
.end annotation


# static fields
.field private static final blacklist BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private blacklist mBadgeAdditionalWidth:F

.field private blacklist mBadgeDefaultWidth:F

.field private blacklist mBadgeView:Landroid/widget/TextView;

.field private blacklist mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

.field private blacklist mNumberFormat:Ljava/text/NumberFormat;

.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;

    .line 1128
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1129
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    .line 1133
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmUseTextItemMode(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 1134
    :cond_0
    new-instance v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    .line 1135
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$300(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    .line 1139
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;)V

    .line 1141
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    .line 1142
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050351

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    .line 1143
    return-void
.end method


# virtual methods
.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1236
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist invalidateBadgeText()V
    .locals 8

    .line 1202
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 1203
    .local v0, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v1

    .line 1204
    .local v1, "badgeCount":I
    if-nez v1, :cond_0

    .line 1205
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    return-void

    .line 1210
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "badgeText":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1213
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1221
    :cond_1
    const-string v2, ""

    .line 1222
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050405

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1223
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    .line 1214
    :cond_2
    :goto_0
    const/16 v4, 0x63

    if-le v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    .line 1215
    .local v4, "badgeNumber":I
    :goto_1
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1216
    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1217
    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1218
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050408

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1219
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1220
    .end local v4    # "badgeNumber":I
    nop

    .line 1226
    :goto_2
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    return-void
.end method

.method public blacklist needsDividerAfter()Z
    .locals 1

    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needsDividerBefore()Z
    .locals 1

    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1148
    const/4 v0, 0x0

    .line 1151
    .local v0, "mWidth":I
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1153
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050406

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1157
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050351

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    .line 1158
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050350

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    .line 1160
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1161
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1162
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1164
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1166
    .local v3, "mMargin":I
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutDirection()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1167
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 1169
    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1171
    :goto_0
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int v0, v4, v3

    .line 1175
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "mMargin":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    .line 1176
    .local v1, "mLayoutParams":Landroid/widget/ActionMenuView$LayoutParams;
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v3, :cond_3

    .line 1177
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1179
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x24

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1180
    .local v3, "mOverflowButtonMinWidth":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1181
    if-le v0, v3, :cond_2

    .line 1182
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    goto :goto_1

    .line 1184
    :cond_2
    iput v3, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    .line 1186
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "mOverflowButtonMinWidth":I
    :cond_3
    return-void
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1232
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    return-void
.end method
