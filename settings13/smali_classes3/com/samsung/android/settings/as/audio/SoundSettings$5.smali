.class Lcom/samsung/android/settings/as/audio/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SoundSettings;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDrawn(IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFinishMovingTask()V
    .locals 0

    return-void
.end method

.method public onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 2

    .line 679
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmReadyToLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 684
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fputmReadyToLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;Z)V

    .line 685
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    .line 686
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 688
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fputmAddedWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;Z)V

    .line 689
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/view/WindowCallbacks;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 0

    return-void
.end method

.method public onWindowDragResizeEnd()V
    .locals 0

    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
