.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowTextView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5
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

    .line 992
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 993
    sget v0, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 995
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 996
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 998
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1000
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1002
    invoke-static {p0, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1003
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1005
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1006
    sget v2, Landroidx/appcompat/R$string;->sesl_more_item_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    invoke-static {p2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$302(Landroidx/appcompat/widget/ActionMenuPresenter;Z)Z

    .line 1009
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1010
    sget p1, Landroidx/appcompat/R$drawable;->sesl_action_bar_item_text_background_light:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1012
    :cond_0
    sget p1, Landroidx/appcompat/R$drawable;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 1016
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->seslSetButtonShapeEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1026
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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

    .line 1034
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1042
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 1047
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method
