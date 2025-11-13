.class final Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;
.super Landroid/database/ContentObserver;
.source "SecWorkSoundDSNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManagedProfileSoundSyncObserver"
.end annotation


# instance fields
.field private final DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;

    .line 135
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "sync_parent_sounds"

    .line 133
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;->DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;->-$$Nest$mupdateRingtoneSummary(Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;)V

    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;->access$000(Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController$ManagedProfileSoundSyncObserver;->DEFAULT_SOUND_SYNC_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
