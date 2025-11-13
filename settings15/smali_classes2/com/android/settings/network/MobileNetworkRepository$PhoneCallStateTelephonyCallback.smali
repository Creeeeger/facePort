.class public final Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# instance fields
.field public final mSubId:I

.field public final synthetic this$0:Lcom/android/settings/network/MobileNetworkRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput p2, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mSubId:I

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    sget-object p0, Lcom/android/settings/network/MobileNetworkRepository;->sCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onCallStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserMobileDataStateChanged(Z)V
    .locals 2

    const-string v0, "onUserMobileDataStateChanged enabled "

    const-string v1, " on SUB "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mSubId:I

    const-string v1, "MobileNetworkRepository"

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object p1, Lcom/android/settings/network/MobileNetworkRepository;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
