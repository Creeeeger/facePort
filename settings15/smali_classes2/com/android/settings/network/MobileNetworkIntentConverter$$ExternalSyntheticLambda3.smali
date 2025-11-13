.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->rePackIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->rePackIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->rePackIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->rePackIntent(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
