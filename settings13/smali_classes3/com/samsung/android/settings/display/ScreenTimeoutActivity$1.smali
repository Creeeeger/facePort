.class Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;
.super Landroid/database/ContentObserver;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/os/Handler;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 510
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "screen_off_timeout"

    const-wide/16 v0, 0x7530

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 513
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$msetScreenTimeoutAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
