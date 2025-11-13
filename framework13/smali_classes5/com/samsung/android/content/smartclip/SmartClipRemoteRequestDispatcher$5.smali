.class Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchInputEventInjection(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

.field final synthetic blacklist val$event:Landroid/view/InputEvent;

.field final synthetic blacklist val$events:[Landroid/os/Parcelable;

.field final synthetic blacklist val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

.field final synthetic blacklist val$waitUntilConsume:Z


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;[Landroid/os/Parcelable;ZLcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    .line 223
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->this$0:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$event:Landroid/view/InputEvent;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$events:[Landroid/os/Parcelable;

    iput-boolean p4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$waitUntilConsume:Z

    iput-object p5, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->this$0:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-static {v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->-$$Nest$fgetDEBUG(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;)Z

    move-result v2

    const-string v3, "SmartClipRemoteRequestDispatcher"

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEventInjection : injecting.. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$event:Landroid/view/InputEvent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->this$0:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$event:Landroid/view/InputEvent;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->-$$Nest$menqueueInputEvent(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Landroid/view/InputEvent;Z)V

    .line 232
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$event:Landroid/view/InputEvent;

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$events:[Landroid/os/Parcelable;

    array-length v6, v4

    sub-int/2addr v6, v5

    aget-object v4, v4, v6

    if-ne v2, v4, :cond_2

    .line 233
    iget-boolean v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$waitUntilConsume:Z

    if-ne v2, v5, :cond_1

    .line 234
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->this$0:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$5;->val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->-$$Nest$msendResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/Parcelable;)V

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEventInjection : injection finished. Elapsed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_2
    return-void
.end method
