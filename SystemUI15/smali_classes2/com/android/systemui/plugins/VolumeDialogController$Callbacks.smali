.class public interface abstract Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x2
.end annotation


# static fields
.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract onAccessibilityModeChanged(Ljava/lang/Boolean;)V
.end method

.method public abstract onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onDismissRequested(I)V
.end method

.method public onKeyEvent(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract onLayoutDirectionChanged(I)V
.end method

.method public onPlaySound(IZ)V
    .locals 0

    return-void
.end method

.method public onPlaySound(IZI)V
    .locals 0

    return-void
.end method

.method public abstract onScreenOff()V
.end method

.method public abstract onShowCsdWarning(II)V
.end method

.method public abstract onShowRequested(IZI)V
.end method

.method public abstract onShowSafetyWarning(I)V
.end method

.method public abstract onShowSilentHint()V
.end method

.method public abstract onShowVibrateHint()V
.end method

.method public onShowVolumeLimiterToast()V
    .locals 0

    return-void
.end method

.method public abstract onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
.end method

.method public abstract onVolumeChangedFromKey()V
.end method
