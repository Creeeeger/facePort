.class public final Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MicMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MicMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mic_mode_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MicMode"

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/qs/bar/MicMode;->access$getSettingsHelper$p(Lcom/android/systemui/qs/bar/MicMode;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getMicModeEnable()Z

    move-result v0

    const-string v2, "onChanged() - mic_mode_enable : "

    invoke-static {v2, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->detailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const-string v0, "mic_mode_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onChanged() - mic_mode_effect : "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarContentsRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
