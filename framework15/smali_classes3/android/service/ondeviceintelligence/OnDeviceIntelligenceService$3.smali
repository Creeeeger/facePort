.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureCallback(Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/app/ondeviceintelligence/Feature;",
        "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

.field final synthetic blacklist val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)V
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

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    iput-object p2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->getErrorParams()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending download feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->onError(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/app/ondeviceintelligence/Feature;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onSuccess(Landroid/app/ondeviceintelligence/Feature;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/ondeviceintelligence/Feature;

    invoke-virtual {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;->onResult(Landroid/app/ondeviceintelligence/Feature;)V

    return-void
.end method
