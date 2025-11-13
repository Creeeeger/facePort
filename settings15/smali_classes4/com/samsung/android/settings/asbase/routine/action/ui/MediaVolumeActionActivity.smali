.class public Lcom/samsung/android/settings/asbase/routine/action/ui/MediaVolumeActionActivity;
.super Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f142570

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f14047d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f14047e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    const p1, 0x7f14047f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    const p1, 0x7f14047c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0x69

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    return-void
.end method
