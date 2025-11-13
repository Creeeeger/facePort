.class public final Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/screenshot/IOnDoneCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/IOnDoneCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$executeAfterDismissing$2$1;->$callback:Lcom/android/systemui/screenshot/IOnDoneCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/screenshot/IOnDoneCallback;->onDone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScreenshotProxyService"

    const-string v1, "Failed to complete callback transaction"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
