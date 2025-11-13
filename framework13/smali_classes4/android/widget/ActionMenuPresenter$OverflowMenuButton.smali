.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 1015
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1016
    const/4 p1, 0x0

    const v0, 0x10102f6

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1018
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 1019
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 1021
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 1056
    return-void
.end method


# virtual methods
.method public greylist-max-o needsDividerAfter()Z
    .locals 1

    .line 1076
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o needsDividerBefore()Z
    .locals 1

    .line 1071
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1082
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1083
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1084
    return-void
.end method

.method public whitelist performClick()Z
    .locals 2

    .line 1060
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1061
    return v1

    .line 1064
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 1065
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 1066
    return v1
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 15
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1088
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v0

    .line 1091
    .local v0, "changed":Z
    move-object v1, p0

    iget-object v2, v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    return v0

    .line 1096
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1097
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1098
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1099
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v4

    .line 1100
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v5

    .line 1101
    .local v5, "height":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 1102
    .local v6, "halfEdge":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1103
    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1104
    .local v8, "offsetY":I
    add-int v9, v4, v7

    div-int/lit8 v9, v9, 0x2

    .line 1105
    .local v9, "centerX":I
    add-int v10, v5, v8

    div-int/lit8 v10, v10, 0x2

    .line 1106
    .local v10, "centerY":I
    sub-int v11, v9, v6

    sub-int v12, v10, v6

    add-int v13, v9, v6

    add-int v14, v10, v6

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1109
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "halfEdge":I
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "centerX":I
    .end local v10    # "centerY":I
    :cond_1
    return v0
.end method
