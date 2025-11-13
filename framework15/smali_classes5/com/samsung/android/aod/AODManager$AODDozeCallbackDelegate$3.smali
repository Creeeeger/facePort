.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

.field final synthetic blacklist val$toast:Lcom/samsung/android/aod/AODToast;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;Lcom/samsung/android/aod/AODToast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;->val$toast:Lcom/samsung/android/aod/AODToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;->this$1:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->-$$Nest$fgetmCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager$AODDozeCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;->val$toast:Lcom/samsung/android/aod/AODToast;

    invoke-interface {v0, v1}, Lcom/samsung/android/aod/AODManager$AODDozeCallback;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    :cond_0
    return-void
.end method
