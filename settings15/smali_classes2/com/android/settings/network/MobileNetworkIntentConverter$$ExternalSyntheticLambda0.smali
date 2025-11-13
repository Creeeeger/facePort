.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;II)V
    .locals 0

    iput p3, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iput p2, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->extractArguments(ILandroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->updateFragment(ILandroid/content/Context;Landroid/content/Intent;)V

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->updateFragment(ILandroid/content/Context;Landroid/content/Intent;)V

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->extractArguments(ILandroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->updateFragment(ILandroid/content/Context;Landroid/content/Intent;)V

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;->mayShowContactDiscoveryDialog(Landroid/content/Context;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maybeShowContactDiscoveryDialog subId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", show="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobileNetworkIntentConverter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "show_capability_discovery_opt_in"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->extractArguments(ILandroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkIntentConverter;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->updateFragment(ILandroid/content/Context;Landroid/content/Intent;)V

    return-object p1

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->extractArguments(ILandroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
