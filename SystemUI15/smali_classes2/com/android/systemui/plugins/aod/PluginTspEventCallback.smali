.class public interface abstract Lcom/android/systemui/plugins/aod/PluginTspEventCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract containsTouchableRect(II)Z
.end method

.method public abstract getTouchableRect()Landroid/graphics/Rect;
.end method

.method public abstract getTspEventAction()I
.end method

.method public abstract isWakeUpAction()Z
.end method

.method public abstract onTspEvent(Landroid/view/View;Lcom/android/systemui/plugins/aod/PluginTspEvent;)Z
.end method
