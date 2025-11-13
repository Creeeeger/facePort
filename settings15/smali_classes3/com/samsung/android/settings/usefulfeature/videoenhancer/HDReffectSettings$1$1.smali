.class public final Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "HDReffectSettings"

    const-string v1, "DesktopMode Enabled, Finish Video Enhancer settings"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1$1;->this$1:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
