.class public Lcom/samsung/android/settings/asbase/routine/action/ui/InCallVolumeActionActivity;
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

    const p1, 0x7f14279d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity;->addVolumeRow(ILjava/lang/String;Z)V

    return-void
.end method
