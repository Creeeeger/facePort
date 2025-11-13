.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

.field final synthetic val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 639
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$misChecked(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;I)Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 640
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "MobileDataOnlySettings"

    if-ne p2, v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Uid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v2, v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Uid : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    .line 654
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 655
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$fgetmPolicyManager(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 656
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_mdo_toast_restrict_network:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    const/16 p0, 0x1be9

    const/16 p1, 0x1bec

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    .line 660
    :goto_1
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
