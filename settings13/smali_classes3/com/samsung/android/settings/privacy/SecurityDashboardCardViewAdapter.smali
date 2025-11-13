.class public Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SecurityDashboardCardViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;
    }
.end annotation


# instance fields
.field private final mAdapterCallBack:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;

.field private mCardDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$1r0dPTiP2-bDrEvNRCyjJzBe2JM(Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->lambda$instantiateItem$1(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A-7SqelOIrdjCMgCHvABMJSGceM(Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->lambda$instantiateItem$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mCardDataList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mAdapterCallBack:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;

    .line 33
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(ILandroid/view/View;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mAdapterCallBack:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;->onItemRemoved(I)V

    return-void
.end method

.method private synthetic lambda$instantiateItem$1(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mAdapterCallBack:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getBtnAction()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;->onActionButtonClick(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mCardDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    sget v1, Lcom/android/settings/R$layout;->security_dashboard_card_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mCardDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    if-eqz v1, :cond_4

    .line 60
    sget v3, Lcom/android/settings/R$id;->txtTitle:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    sget v4, Lcom/android/settings/R$id;->txtMessage:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    sget v5, Lcom/android/settings/R$id;->btnAction:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    sget v6, Lcom/android/settings/R$id;->btnNotNow:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getBtnText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getType()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    const/16 v7, 0x8

    .line 69
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v7, v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnText:Ljava/lang/String;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/settings/R$string;->button_tts:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/android/settings/R$string;->security_dashboard_card_dismiss:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/settings/R$color;->sec_security_dashboard_status_card_not_now_color:I

    .line 79
    invoke-virtual {v7, v10, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 78
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v7, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/settings/R$color;->sec_security_dashboard_status_title_color:I

    .line 81
    invoke-virtual {v7, v10, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 80
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v10, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 82
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getType()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v3

    if-ne v3, v8, :cond_2

    .line 85
    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_security_dashboard_status_card_critical_action_color:I

    .line 86
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 85
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_security_dashboard_status_card_warning_action_color:I

    .line 89
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 88
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    :cond_3
    :goto_1
    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 95
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 96
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 98
    new-instance p2, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;)V

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 101
    invoke-virtual {p1, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "card data is null at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityDashboardCardViewAdapter"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->mCardDataList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
