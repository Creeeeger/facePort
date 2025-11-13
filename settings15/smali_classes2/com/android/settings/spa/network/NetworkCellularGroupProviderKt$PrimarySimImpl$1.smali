.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableIntState;Lkotlinx/coroutines/CoroutineScope;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1$1;

    iget-object p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1$1;-><init>(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
