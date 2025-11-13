.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowImageView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 879
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 880
    sget v0, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 882
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 883
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 885
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 889
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 890
    sget v0, Landroidx/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$202(Landroidx/appcompat/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 892
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 906
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 908
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 909
    sget-object v0, Landroidx/appcompat/R$styleable;->View:[I

    sget v1, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 913
    sget v4, Landroidx/appcompat/R$styleable;->View_android_minHeight:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 917
    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$202(Landroidx/appcompat/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 918
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 921
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 924
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_android_src:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 939
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 955
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 961
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 962
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 947
    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompat;->seslSetNextTooltipForceActionBarPosX(Z)V

    .line 948
    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompat;->seslSetNextTooltipForceBelow(Z)V

    .line 949
    invoke-super {p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result p0

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 970
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    .line 973
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 974
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 976
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    .line 977
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    .line 978
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 980
    div-int/lit8 v0, v0, 0x2

    const/4 p0, 0x0

    add-int/2addr p2, v0

    .line 981
    invoke-static {p3, v0, p0, p2, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
