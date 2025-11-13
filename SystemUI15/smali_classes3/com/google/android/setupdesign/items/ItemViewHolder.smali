.class public final Lcom/google/android/setupdesign/items/ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# instance fields
.field public isEnabled:Z

.field public item:Lcom/google/android/setupdesign/items/AbstractItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final isDividerAllowedAbove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    return p0
.end method

.method public final isDividerAllowedBelow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    return p0
.end method
