.class public final Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->-$$Nest$msetDualColorSeekBar(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V

    :goto_0
    return-void
.end method
