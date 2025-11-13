.class Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;
.super Lcom/samsung/android/wifi/stdp/IStandardPlusCallback$Stub;
.source "StandardPlusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/stdp/StandardPlusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandardPlusCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/Object;

.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Lcom/samsung/android/wifi/stdp/StandardPlusManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$nw-wR4mrtLTNP-RZBKb3oRbdwJQ(Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->lambda$onEvent$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/wifi/stdp/StandardPlusManager;Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->this$0:Lcom/samsung/android/wifi/stdp/StandardPlusManager;

    invoke-direct {p0}, Lcom/samsung/android/wifi/stdp/IStandardPlusCallback$Stub;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->mCallback:Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$onEvent$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;->onEvent(I)V

    return-void
.end method


# virtual methods
.method public blacklist onEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
