.class public final Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final btmSwitch:Landroid/widget/Switch;

.field public final configKey:Landroid/widget/TextView;

.field public mConfigKey:Ljava/lang/String;

.field public final reason:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0275

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->configKey:Landroid/widget/TextView;

    const v0, 0x7f0a0276

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->reason:Landroid/widget/TextView;

    const v0, 0x7f0a0274

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->btmSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a027a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
