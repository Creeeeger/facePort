.class Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;
.super Ljava/lang/Object;
.source "RoutineConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showChooseVpnProfileDialog(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$vpnProfiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->val$vpnProfiles:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 167
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->val$vpnProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showChooseVpnProfileDialog: selected profile:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Vpn.RoutineActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getParam(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->-$$Nest$msetParamResult(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
