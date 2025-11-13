.class public interface abstract Lcom/android/systemui/util/sensors/ThresholdSensor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isLoaded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
.end method

.method public abstract resume()V
.end method

.method public abstract setDelay(I)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
.end method
