.class public final Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;
.super Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mViewGroup:Landroid/view/ViewGroup;


# virtual methods
.method public final getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothNoItemListAdapter"

    return-object p0
.end method

.method public final onAnimationsFinished()V
    .locals 1

    const-string p0, "BluetoothNoItemListAdapter"

    const-string/jumbo v0, "onAnimationsFinished:"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string/jumbo v0, "onBindViewHolder position = "

    const-string v1, ", measureHeight = "

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BluetoothNoItemListAdapter"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter$NoItemViewHolder;

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->isDialogType()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d082a

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0829

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter$NoItemViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter$NoItemViewHolder;->mView:Landroid/view/View;

    const p2, 0x7f0a0922

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p2, 0x7f0a000d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public final printAddLog(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public final update()V
    .locals 0

    return-void
.end method
