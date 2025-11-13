.class public final Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mControlRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;->mControlRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;->mControlRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->-$$Nest$mupdateRingerMode(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;->mControlRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->-$$Nest$mupdateEffectsSuppressor(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V

    :cond_2
    :goto_0
    return-void
.end method
