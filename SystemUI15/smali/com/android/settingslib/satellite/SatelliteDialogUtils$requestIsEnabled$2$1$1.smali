.class public final Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    check-cast p1, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-super {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    const-string v0, "SatelliteDialogUtils"

    const-string v1, "Can\'t get satellite modem enabled status"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget p1, Lkotlin/Result;->$r8$clinit:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Satellite modem enabled status: "

    const-string v2, "SatelliteDialogUtils"

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
