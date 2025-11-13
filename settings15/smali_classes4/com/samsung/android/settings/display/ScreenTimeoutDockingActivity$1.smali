.class public final Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "dock_screen_off_timeout"

    const-wide/32 v0, 0x1b7740

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    iget-wide v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
