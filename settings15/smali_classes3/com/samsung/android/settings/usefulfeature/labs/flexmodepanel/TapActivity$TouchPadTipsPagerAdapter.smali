.class public final Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mItemList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mItemList:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public final getItemPosition()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d09cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    const v1, 0x7f0a103e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a103d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04db

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const v5, 0x7f0a0903

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    iget-object v6, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;->mContext:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;->mJsonRes:Ljava/lang/String;

    invoke-virtual {v4, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    const v1, 0x7f0a0d1d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, p2, v2, p2, v2}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    const/16 p2, 0xf

    invoke-virtual {v5, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060738

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v5, p2, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
