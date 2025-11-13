.class Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;
.super Ljava/lang/Object;
.source "HDReffectSettings.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    .line 155
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1$1;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
