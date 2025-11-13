.class public final Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    const-string p1, "onUnhandledKeyEvent() - keyCode = "

    const-string v1, "SoundCraft.VolumeBarViewModel"

    invoke-static {p2, p1, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x19

    if-eq p2, p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "#soundCraft.VolumeManager_getModeInternal"

    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p2

    :goto_1
    if-nez p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    if-eqz p2, :cond_4

    move-object v1, p1

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "#soundCraft.VolumeManager_adjustVolume"

    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->adjustVolume(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->adjustVolume(II)V

    :goto_3
    move v0, v2

    :cond_6
    return v0
.end method
