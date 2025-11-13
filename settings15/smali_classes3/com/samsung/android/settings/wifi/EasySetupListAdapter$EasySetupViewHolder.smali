.class public final Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIcon:Landroid/widget/ImageView;

.field public final mSummary:Landroid/widget/TextView;

.field public final mTitle:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mView:Landroid/view/View;

    const v0, 0x7f0a119e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a1041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0f81

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f080e25

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method
