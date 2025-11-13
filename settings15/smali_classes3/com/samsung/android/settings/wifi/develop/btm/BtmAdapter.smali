.class public final Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mConfigs:Ljava/util/List;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mConfigs:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mConfigs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mConfigs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->mConfigKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->configKey:Landroid/widget/TextView;

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->reason:Landroid/widget/TextView;

    const-string p2, "BTM option changed"

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->btmSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->reason:Landroid/widget/TextView;

    const-string p2, "Default BTM option"

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->btmSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0a5a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method
