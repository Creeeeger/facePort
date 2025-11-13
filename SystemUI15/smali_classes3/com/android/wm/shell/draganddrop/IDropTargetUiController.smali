.class public interface abstract Lcom/android/wm/shell/draganddrop/IDropTargetUiController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x6c

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const-string p0, "DropTargetLayout"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p0, v0}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
.end method
