.class public final Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, v0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    aget-object p1, v1, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d02fa

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-boolean p3, p3, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p3, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilLargeAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const p3, 0x1020016

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    if-eqz v5, :cond_3

    invoke-virtual {p2, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-eqz v8, :cond_4

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    cmpl-float v5, v0, v7

    if-eqz v5, :cond_5

    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-boolean v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070d54

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06058a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    const v3, 0x7f060581

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b00da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const v3, 0x7f06058d

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x2

    :goto_5
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v2, :cond_b

    move v3, v1

    goto :goto_6

    :cond_b
    move v3, v6

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_c
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v5, :cond_d

    const v5, 0x7f06058e

    goto :goto_8

    :cond_d
    const v5, 0x7f06058f

    :goto_8
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    if-nez v2, :cond_e

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    if-eqz v2, :cond_f

    const-string v2, "QSDetailItems"

    const-string v3, "getView(): item is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_9

    :cond_f
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_9
    const-string/jumbo v0, "sec"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x258

    goto :goto_a

    :cond_10
    const/16 v2, 0x190

    :goto_a
    invoke-static {v0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p3, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x1020008

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iget p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_11

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_b

    :cond_11
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    return-object p2
.end method
