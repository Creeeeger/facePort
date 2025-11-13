.class final Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WepNetworksPreferenceController;->Content(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $openDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    iput-object p2, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;->$openDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWepAllowed(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getWepAllowedFlow()Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->overrideChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$Content$3;->$openDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->access$Content$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
