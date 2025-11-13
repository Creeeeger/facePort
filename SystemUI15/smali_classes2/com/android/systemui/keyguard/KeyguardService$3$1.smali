.class public final Lcom/android/systemui/keyguard/KeyguardService$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mInvoked:Z

.field public final synthetic val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field public final synthetic val$traceCookie:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService$3;Lcom/android/internal/policy/IKeyguardDrawnCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->val$traceCookie:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->mInvoked:Z

    const-string v1, "KeyguardService"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->mInvoked:Z

    :try_start_0
    const-string v0, "Waiting for KeyguardDrawnCallback#onDrawn"

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->val$traceCookie:I

    invoke-static {v0, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception calling onDrawn():"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p0, "KeyguardDrawnCallback#onDrawn() invoked > 1 times"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
