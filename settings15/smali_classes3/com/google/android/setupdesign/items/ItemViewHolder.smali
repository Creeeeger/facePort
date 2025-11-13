.class public final Lcom/google/android/setupdesign/items/ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# instance fields
.field public isEnabled:Z

.field public item:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;


# virtual methods
.method public final isDividerAllowedAbove()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    instance-of v1, v0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    :goto_0
    return p0
.end method

.method public final isDividerAllowedBelow()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    instance-of v1, v0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    :goto_0
    return p0
.end method
