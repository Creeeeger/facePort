.class public Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;
.super Landroidx/preference/Preference;
.source "BluetoothNoItemPreference.java"


# instance fields
.field private mBaseView:Landroid/view/View;

.field private mEmptyHeight:I


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mBaseView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mEmptyHeight:I

    move v0, v2

    .line 94
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 95
    iget v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mEmptyHeight:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mEmptyHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->mEmptyHeight:I

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 100
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
