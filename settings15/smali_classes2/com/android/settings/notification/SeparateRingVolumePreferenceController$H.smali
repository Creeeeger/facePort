.class public final Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/SeparateRingVolumePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/SeparateRingVolumePreferenceController;

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

    iget-object p0, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/SeparateRingVolumePreferenceController;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    :goto_0
    return-void
.end method
