.class public final Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public mHolderView:Landroid/view/View;

.field public final mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field protected mMaxEntriesCount:I

.field public mWifiEntries:Ljava/util/List;

.field protected mWifiEntriesCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntries:Ljava/util/List;

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    if-lt p2, p0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mContext:Landroid/content/Context;

    const v4, 0x1010212

    invoke-static {v3, v4, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v3, 0x8

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiSummaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiSummaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiSummaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz p2, :cond_3

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f080af9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f080928

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiEndIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiEndIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiEndIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    :cond_6
    :goto_4
    move v2, v3

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p2, :cond_9

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiListLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_9
    iget-object p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->mWifiListLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p1, 0x7f0d0134

    const/4 v0, 0x0

    invoke-static {p2, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mHolderView:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mHolderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lkotlinx/coroutines/CoroutineScope;)V

    return-object p1
.end method
