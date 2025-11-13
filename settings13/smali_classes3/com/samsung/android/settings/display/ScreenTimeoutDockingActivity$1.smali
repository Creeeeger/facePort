.class Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;
.super Landroid/database/ContentObserver;
.source "ScreenTimeoutDockingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 342
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "dock_screen_off_timeout"

    const-wide/32 v0, 0x1b7740

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;)Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->-$$Nest$msetScreenTimeoutAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
