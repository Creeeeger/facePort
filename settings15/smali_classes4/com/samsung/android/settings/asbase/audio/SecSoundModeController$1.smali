.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    return-void
.end method
