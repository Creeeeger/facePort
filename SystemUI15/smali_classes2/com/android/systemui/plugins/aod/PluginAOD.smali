.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAOD;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_AOD"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_AOD"

.field public static final MACHINE_MOD_REASON:I = 0x1

.field public static final REASON_MOD_CHARGING:I = 0x20

.field public static final REASON_MOD_EDGE_LIGHTING:I = 0x2

.field public static final REASON_MOD_HUN:I = 0x40

.field public static final REASON_MOD_IN_DISPLAY:I = 0x8

.field public static final REASON_MOD_NONE:I = 0x1

.field public static final REASON_MOD_POWER_UI:I = 0x10

.field public static final REASON_MOD_TOAST:I = 0x4

.field public static final REASON_MOD_VOLUME:I = 0x80

.field public static final STATE_DISPLAY_ON:I = 0x8

.field public static final STATE_DOZE:I = 0x2

.field public static final STATE_DOZE_AOD:I = 0x4

.field public static final STATE_DOZE_AOD_PAUSED:I = 0x5

.field public static final STATE_DOZE_MOD:I = 0x6

.field public static final STATE_DOZE_REQUEST_AOD:I = 0x3

.field public static final STATE_FINISH:I = 0x7

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAODClockContainer(Z)Landroid/view/View;
.end method

.method public abstract getAODClockType()I
.end method

.method public abstract getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;
.end method

.method public abstract getBottomArea()Landroid/view/View;
.end method

.method public abstract getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end method

.method public abstract getZigzagPosition()Landroid/graphics/Point;
.end method

.method public abstract hideChargingInfoByFinger(J)V
.end method

.method public abstract needDozeAlwaysOn()Z
.end method

.method public abstract onChargingAnimStarted(Z)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDozeAmountChanged(FF)V
.end method

.method public abstract onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onFaceWidgetPositionChanged()V
.end method

.method public abstract onFinishedGoingToSleep()V
.end method

.method public abstract onFolderStateChanged(Z)V
.end method

.method public abstract onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V
.end method

.method public abstract onUnlockedScreenOffAmountChanged(F)V
.end method

.method public abstract onUnlockedScreenOffAnimationEnd()V
.end method

.method public abstract requestMODState(IZ)V
.end method

.method public abstract sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract sendIntent(Landroid/content/Intent;)V
.end method

.method public abstract setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V
.end method

.method public abstract setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V
.end method

.method public abstract setDozeScreenState(II)V
.end method

.method public abstract setIsDozing(ZZ)V
.end method

.method public abstract setTouchMode(Z)V
.end method

.method public abstract setTouchModeWhileClockTransition(Z)V
.end method
