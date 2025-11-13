.class public final Lcom/android/keyguard/WifiTextManager$register$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $update:Lkotlin/jvm/functions/Function2;

.field public final synthetic this$0:Lcom/android/keyguard/WifiTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/WifiTextManager;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    iput-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->$update:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->this$0:Lcom/android/keyguard/WifiTextManager;

    iput-object p1, p2, Lcom/android/keyguard/WifiTextManager;->ssid:Ljava/lang/String;

    iget-boolean p2, p2, Lcom/android/keyguard/WifiTextManager;->connected:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lcom/android/keyguard/WifiTextManager$register$1$1;->$update:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
