.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->onDozeReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallback;->onDozeReleased()V

    :cond_0
    return-void
.end method
