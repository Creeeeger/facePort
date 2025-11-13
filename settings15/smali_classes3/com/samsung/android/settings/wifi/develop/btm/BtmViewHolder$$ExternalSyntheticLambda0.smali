.class public final synthetic Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set PERSONALIZED_CONN_OPTION config to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtmViewHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->btmSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    const-string/jumbo v0, "sem_wifi"

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->reason:Landroid/widget/TextView;

    const-string v1, "BTM option changed"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->mConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setBtmOptionUserEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->reason:Landroid/widget/TextView;

    const-string v1, "Default BTM option"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/btm/BtmViewHolder;->mConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setBtmOptionUserDisabled(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
