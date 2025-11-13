.class public final Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic $this_volumeKeyHandler:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;->$this_volumeKeyHandler:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnhandledKeyEvent() - keyCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_4

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
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;->$this_volumeKeyHandler:Landroid/media/AudioManager;

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->isBroadcasting(Landroid/media/AudioManager;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, p2

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt$volumeKeyHandler$1;->$this_volumeKeyHandler:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/media/AudioManager;->adjustVolume(II)V

    move p1, v2

    :cond_4
    return p1
.end method
