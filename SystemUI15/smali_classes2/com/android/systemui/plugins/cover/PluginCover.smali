.class public interface abstract Lcom/android/systemui/plugins/cover/PluginCover;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getCoverScreenPreview()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoverScreenPreview(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoverScreenPreview(III)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCoverAppCovered(Z)V
.end method

.method public abstract onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onCoverAttached(Landroid/view/Window;Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onCoverDetached()V
.end method

.method public abstract onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public onDozeAmountChanged(F)V
    .locals 0

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onScreenInternalTurningOff()V
.end method

.method public abstract onScreenInternalTurningOn()V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurningOn()V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public setClockColor(Landroid/view/View;III)V
    .locals 0

    return-void
.end method

.method public setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V
    .locals 0

    return-void
.end method

.method public abstract showCoverToast(Landroid/app/PendingIntent;Z)V
.end method
