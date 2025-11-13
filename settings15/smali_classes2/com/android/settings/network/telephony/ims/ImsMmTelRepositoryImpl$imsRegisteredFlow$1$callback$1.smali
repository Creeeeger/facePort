.class public final Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iput-object p2, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 3

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget p1, p1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    const-string v0, "["

    const-string v1, "] IMS onRegistered"

    const-string v2, "ImsMmTelRepository"

    invoke-static {p1, v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onRegistering(I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget p1, p1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    const-string v0, "["

    const-string v1, "] IMS onRegistering"

    const-string v2, "ImsMmTelRepository"

    invoke-static {p1, v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget p1, p1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    const-string p2, "["

    const-string v0, "] IMS onTechnologyChangeFailed"

    const-string v1, "ImsMmTelRepository"

    invoke-static {p1, p2, v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget p1, p1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    const-string v0, "["

    const-string v1, "] IMS onUnregistered"

    const-string v2, "ImsMmTelRepository"

    invoke-static {p1, v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
