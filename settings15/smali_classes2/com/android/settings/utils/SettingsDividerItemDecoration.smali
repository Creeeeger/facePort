.class public final Lcom/android/settings/utils/SettingsDividerItemDecoration;
.super Lcom/google/android/setupdesign/DividerItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    iget-boolean p0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedAbove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public final isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    iget-boolean p0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/DividerItemDecoration;->isDividerAllowedBelow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method
