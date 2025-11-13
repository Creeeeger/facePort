.class public final Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STATE_NONE:[I

.field public static final STATE_SECURED:[I


# instance fields
.field public mBleAccessPoints:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mParentView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0405dd

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->STATE_SECURED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->STATE_NONE:[I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "InstantHotspotListAdapter"

    const-string v0, "getItemCount() - mBleAccessPoints is null so returning 0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;

    const-string v0, "onBindViewHolder() - Start"

    const-string v1, "InstantHotspotListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBindViewHolder() - Current BleAp values, getSsid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getSummary: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", semGetBssid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    const-string/jumbo v4, "updateIcon() - Triggered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getUpstreamConnectionStrength()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0806a2

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    if-eqz v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v2, :cond_4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_5

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    :goto_1
    sget-object p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->STATE_NONE:[I

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->STATE_SECURED:[I

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_7
    :goto_3
    sget p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "onBindViewHolder(): BleAp item is disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    :cond_8
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$1;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$1;-><init>(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_9
    :goto_5
    const-string p0, "onBindViewHolder() - invalid index "

    invoke-static {p2, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p1, "InstantHotspotListAdapter"

    const-string p2, "onCreateViewHolder() - Start"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d0a7b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v1, "AutoHotspotApViewHolder() - initiated"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0a119e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a1041

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0f81

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    iput-object p2, v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f080e25

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter$AutoHotspotApViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method
