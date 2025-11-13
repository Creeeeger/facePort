.class public final Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer$Observer;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    iget p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->mStreamType:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->updateSlider()V

    :cond_0
    return-void
.end method
