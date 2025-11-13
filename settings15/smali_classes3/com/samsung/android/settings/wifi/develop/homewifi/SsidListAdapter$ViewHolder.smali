.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final band:Landroid/widget/TextView;

.field public final baseLayout:Landroid/view/View;

.field public final bssid:Landroid/widget/TextView;

.field public final bssidLayout:Landroid/view/View;

.field public data:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

.field public final rssi:Landroid/widget/TextView;

.field public final selected:Landroid/widget/CheckBox;

.field public final ssid:Landroid/widget/TextView;

.field public final toggleBssid:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->baseLayout:Landroid/view/View;

    const v0, 0x7f0a0da0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->selected:Landroid/widget/CheckBox;

    const v1, 0x7f0a0ed1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    const v2, 0x7f0a05f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->toggleBssid:Landroid/widget/ImageView;

    const v3, 0x7f0a0266

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    const v3, 0x7f0a0265

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssid:Landroid/widget/TextView;

    const v3, 0x7f0a0177

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->band:Landroid/widget/TextView;

    const v3, 0x7f0a0cd8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;I)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final setBssidExpansion(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->data:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    iput-boolean p1, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->expanded:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->toggleBssid:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->toggleBssid:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
