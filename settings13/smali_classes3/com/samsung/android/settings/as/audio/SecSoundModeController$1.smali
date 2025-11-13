.class Lcom/samsung/android/settings/as/audio/SecSoundModeController$1;
.super Landroid/database/ContentObserver;
.source "SecSoundModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;Landroid/os/Handler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$1;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$1;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    return-void
.end method
