.class public interface abstract Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract GetCurrentVoiceCall()I
.end method

.method public abstract isDefaultDataSlotAllowed(I)Z
.end method

.method public abstract isDualSimReadyAndTurnedOn()Z
.end method

.method public abstract registerSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;)Z
.end method

.method public abstract unregisterSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;)Z
.end method
