.class Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1$1;
.super Ljava/lang/Object;
.source "HDReffectSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HDReffectSettings"

    const-string v1, "DesktopMode Enabled, Finish Video Enhancer settings"

    .line 159
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
