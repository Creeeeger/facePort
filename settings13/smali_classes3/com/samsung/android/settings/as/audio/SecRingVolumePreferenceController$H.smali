.class final Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "SecRingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    .line 184
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 189
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->-$$Nest$mupdateRingerMode(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->-$$Nest$mupdateEffectsSuppressor(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V

    :goto_0
    return-void
.end method
