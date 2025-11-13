.class Lcom/samsung/android/widget/SemPressGestureDetector$4;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemPressGestureDetector;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemPressGestureDetector;

    .line 177
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bixbytouch"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$smgetAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v0, "version":J
    const-wide/32 v2, 0x11e1a300

    cmp-long v2, v0, v2

    const-string v3, "bixbytouch_finger_touch_mode"

    const/4 v4, 0x1

    if-gez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsCurrentTouchMode(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsCurrentTouchMode(I)V

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixbytouch_long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsLongPressTime(I)V

    .line 191
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_long_press_timeout"

    const/16 v4, 0x5dc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsLongLongPressTime(I)V

    .line 192
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_touch_down_delay_time"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsCheckTouchDownDelayTime(I)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixbytouch_finger_down_threshold"

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsFingerDownThreshold(I)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$4;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmBixbyTouchVersion(Lcom/samsung/android/widget/SemPressGestureDetector;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .end local v0    # "version":J
    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
