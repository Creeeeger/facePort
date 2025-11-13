.class public final Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;
.super Lcom/android/systemui/screenshot/IOnDoneCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $completion:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/IOnDoneCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/proxy/SystemUiProxyClient$dismissKeyguard$onDoneBinder$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    return-void
.end method
