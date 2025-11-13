.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;

.field public final synthetic f$1:Landroid/widget/RadioGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RadioGroup;

    sget p2, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const v0, 0x7f0a0ad0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo p0, "toggle_config_key"

    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent_params"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
