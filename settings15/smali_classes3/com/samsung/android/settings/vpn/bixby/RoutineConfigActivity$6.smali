.class public final Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

.field public final synthetic val$listView:Landroid/widget/ListView;

.field public final synthetic val$vpnProfiles:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->val$vpnProfiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->val$vpnProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "showChooseVpnProfileDialog: selected profile:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Vpn.RoutineActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "0_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    const-string v0, "key_vpn_param"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    const-string p1, "key_vpn_label_param"

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "intent_params"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
