.class public final Lcom/samsung/android/settings/wifi/EasySetupListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Z)V

    iput-object p6, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.EasySetup"

    return-object p0
.end method

.method public final notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 0

    return-void
.end method

.method public final notifyOnLaunchActivityIfNeeded()V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "WifiList.EasySetup"

    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_1

    const-string p0, "onBindViewHolder failed - null WifiEntry"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onBindView Connected AP : "

    const-string v3, " "

    invoke-static {p2, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    check-cast p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f08095d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mSummary:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mView:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "onBindViewHolder failed - invalid index"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const v1, 0x7f0d0a7b

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;-><init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Landroid/view/View;)V

    return-object p2
.end method
