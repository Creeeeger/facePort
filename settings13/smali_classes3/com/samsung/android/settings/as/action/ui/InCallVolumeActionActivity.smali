.class public Lcom/samsung/android/settings/as/action/ui/InCallVolumeActionActivity;
.super Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;
.source "InCallVolumeActionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/action/ui/VolumeActionActivity;->initVolume(I)V

    return-void
.end method
