.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private greylist-max-o mAbove:Z

.field private greylist-max-o mPopupInlineErrorAboveBackgroundId:I

.field private greylist-max-o mPopupInlineErrorBackgroundId:I

.field private final greylist-max-o mView:Landroid/widget/TextView;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/TextView;II)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 8998
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 8992
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 8994
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 8995
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 8999
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 9003
    const/16 v1, 0x137

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 9005
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9006
    return-void
.end method

.method private greylist-max-o getResourceId(II)I
    .locals 2
    .param p1, "currentId"    # I
    .param p2, "index"    # I

    .line 9025
    if-nez p1, :cond_0

    .line 9026
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9028
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 9029
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9031
    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method greylist-max-o fixDirection(Z)V
    .locals 2
    .param p1, "above"    # Z

    .line 9009
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 9011
    if-eqz p1, :cond_0

    .line 9012
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0x136

    .line 9013
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_0

    .line 9016
    :cond_0
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0x137

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 9020
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 9021
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 9020
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9022
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "force"    # Z

    .line 9036
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 9038
    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 9039
    .local v0, "above":Z
    iget-boolean v1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 9040
    invoke-virtual {p0, v0}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 9042
    :cond_0
    return-void
.end method
