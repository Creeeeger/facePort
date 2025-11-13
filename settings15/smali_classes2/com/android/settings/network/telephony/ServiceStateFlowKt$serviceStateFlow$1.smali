.class final Lcom/android/settings/network/telephony/ServiceStateFlowKt$serviceStateFlow$1;
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
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/telephony/TelephonyCallback;",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Landroid/telephony/ServiceState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $subId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/ServiceStateFlowKt$serviceStateFlow$1;->$subId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    const-string v0, "$this$telephonyCallbackFlow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/telephony/ServiceStateFlowKt$serviceStateFlow$1$1;

    iget p0, p0, Lcom/android/settings/network/telephony/ServiceStateFlowKt$serviceStateFlow$1;->$subId:I

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/telephony/ServiceStateFlowKt$serviceStateFlow$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;I)V

    return-object v0
.end method
