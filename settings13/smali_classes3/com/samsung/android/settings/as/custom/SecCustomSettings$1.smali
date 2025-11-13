.class Lcom/samsung/android/settings/as/custom/SecCustomSettings$1;
.super Landroid/os/Handler;
.source "SecCustomSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/custom/SecCustomSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/custom/SecCustomSettings;Landroid/os/Looper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$1;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 78
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$1;->this$0:Lcom/samsung/android/settings/as/custom/SecCustomSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->stopSample()V

    :goto_0
    return-void
.end method
