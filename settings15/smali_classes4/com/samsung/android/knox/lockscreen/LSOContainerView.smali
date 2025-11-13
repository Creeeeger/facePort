.class public Lcom/samsung/android/knox/lockscreen/LSOContainerView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_1
    const/16 p1, 0x100

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->addViews()V

    return-void
.end method


# virtual methods
.method public final addViews()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemView;->getView(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->getLayoutParams(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getLayoutParams(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    const/4 v3, -0x2

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v3

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object p0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object p0, v0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_5
    :goto_3
    return-object p0
.end method
