.class public interface abstract Landroid/app/ondeviceintelligence/ProcessingCallback;
.super Ljava/lang/Object;
.source "ProcessingCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public whitelist onDataAugmentRequest(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract whitelist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
.end method

.method public abstract whitelist onResult(Landroid/os/Bundle;)V
.end method
