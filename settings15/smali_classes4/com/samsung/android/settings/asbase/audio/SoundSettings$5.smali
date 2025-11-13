.class public final Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/WindowCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    return-void
.end method


# virtual methods
.method public final onContentDrawn(IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-boolean v0, p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAddedWindowCallbacks:Z

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mWindowCallbacks:Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRequestDraw(Z)V
    .locals 0

    return-void
.end method

.method public final onWindowDragResizeEnd()V
    .locals 0

    return-void
.end method

.method public final onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
