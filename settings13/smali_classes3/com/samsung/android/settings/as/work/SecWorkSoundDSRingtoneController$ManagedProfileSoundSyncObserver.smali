.class final Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;
.super Landroid/database/ContentObserver;
.source "SecWorkSoundDSRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManagedProfileSoundSyncObserver"
.end annotation


# instance fields
.field private final DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)V
    .locals 1

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "sync_parent_sounds"

    .line 140
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->-$$Nest$mupdateRingtoneSummary(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)V

    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->access$000(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
