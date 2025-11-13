.class Lcom/samsung/android/settings/as/audio/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 647
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmReadyToLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$mlaunchPickerScreenByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)V

    goto/16 :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    .line 661
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 662
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmAddedWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 663
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fputmAddedWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;Z)V

    .line 664
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/view/WindowCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
