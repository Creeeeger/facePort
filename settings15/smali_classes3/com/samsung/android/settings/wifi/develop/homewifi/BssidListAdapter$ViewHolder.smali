.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final band:Landroid/widget/TextView;

.field public final bssid:Landroid/widget/TextView;

.field public final bssidLayout:Landroid/view/View;

.field public final circle:Landroid/view/View;

.field public final rssi:Landroid/widget/TextView;

.field public final ssid:Landroid/widget/TextView;

.field public final ssidLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0ed7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->ssidLayout:Landroid/view/View;

    const v0, 0x7f0a0ed1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    const v0, 0x7f0a0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->bssidLayout:Landroid/view/View;

    const v0, 0x7f0a0379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->circle:Landroid/view/View;

    const v0, 0x7f0a0265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->bssid:Landroid/widget/TextView;

    const v0, 0x7f0a0177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->band:Landroid/widget/TextView;

    const v0, 0x7f0a0cd8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$ViewHolder;->rssi:Landroid/widget/TextView;

    return-void
.end method
