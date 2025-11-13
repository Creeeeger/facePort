.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ":reroute:MobileNetworkIntentConverter"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Skip re-routed intent "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkIntentConverter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ":settings:fragment_args_key"

    const-string v0, "mms_message"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
