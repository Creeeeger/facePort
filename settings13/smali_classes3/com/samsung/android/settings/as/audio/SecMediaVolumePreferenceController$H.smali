.class final Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "SecMediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    .line 266
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 271
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->-$$Nest$msetDualColorSeekBar(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V

    :goto_0
    return-void
.end method
