.class public Lcom/samsung/android/settings/share/view/AllRoundView;
.super Landroid/view/View;
.source "AllRoundView.java"


# instance fields
.field private final mSeslAllRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/share/view/AllRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/share/view/AllRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget p2, Lcom/android/settings/R$color;->sec_share_round_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 35
    new-instance p3, Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/samsung/android/settings/share/view/AllRoundView;->mSeslAllRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/16 p0, 0xf

    .line 36
    invoke-virtual {p3, p0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 37
    invoke-virtual {p3, p0, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/share/view/AllRoundView;->mSeslAllRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method
