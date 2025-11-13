.class final Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->Content(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;->this$0:Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;->this$0:Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController$Content$dialogPresenter$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p0}, Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;->access$reset(Lcom/android/settings/network/BluetoothWiFiResetPreferenceController;Lkotlinx/coroutines/CoroutineScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
