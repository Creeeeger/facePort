.class Lcom/samsung/android/allshare/IAppControlAPI$2;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/IAppControlAPI;->startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/IAppControlAPI;

.field final synthetic blacklist val$inet:Lcom/samsung/android/allshare/NetworkSocketInfo;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAppControlAPI;Lcom/samsung/android/allshare/NetworkSocketInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/IAppControlAPI;

    .line 195
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->val$inet:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-static {v0}, Lcom/samsung/android/allshare/IAppControlAPI;->-$$Nest$fgetmLock(Lcom/samsung/android/allshare/IAppControlAPI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v1, v1, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v1, v1, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->val$inet:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/TVMessageSender;->initSender(Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-static {v1}, Lcom/samsung/android/allshare/IAppControlAPI;->-$$Nest$mcreateControlReceiver(Lcom/samsung/android/allshare/IAppControlAPI;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/IAppControlAPI;->sendAuthentication()V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$2;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/IAppControlAPI;->-$$Nest$fputbIsRunningConnection(Lcom/samsung/android/allshare/IAppControlAPI;Z)V

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
