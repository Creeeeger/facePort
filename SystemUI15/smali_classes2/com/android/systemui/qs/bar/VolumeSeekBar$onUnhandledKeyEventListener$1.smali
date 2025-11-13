.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0x19

    if-eq p2, v1, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-boolean v3, v1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object v4, v3, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getModeInternal()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget-object v1, v1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-object v3, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean v3, v3, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteStreamEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    if-eqz v1, :cond_4

    :cond_3
    move-object v0, p2

    :cond_4
    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$onUnhandledKeyEventListener$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "[QP Volume] adjustVolume direction = "

    const-string v1, "VolumeSeekBar"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, p2, p1}, Landroid/media/AudioManager;->adjustVolume(II)V

    move p1, v2

    :cond_5
    return p1
.end method
