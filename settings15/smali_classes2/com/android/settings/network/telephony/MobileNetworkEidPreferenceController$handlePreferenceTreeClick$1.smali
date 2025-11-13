.class public final Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;->access$getCoroutineScope$p(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1$1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$handlePreferenceTreeClick$1$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    return-void
.end method
