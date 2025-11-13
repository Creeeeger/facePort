.class public final Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1$1;-><init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
