.class Lcom/samsung/android/allshare/IAppControlAPI$3;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/IAppControlAPI;->startControlClient(Lcom/samsung/android/allshare/NetworkSocketInfo;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/IAppControlAPI;

.field final synthetic blacklist val$netinfo:Lcom/samsung/android/allshare/NetworkSocketInfo;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAppControlAPI;Lcom/samsung/android/allshare/NetworkSocketInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/IAppControlAPI;

    .line 306
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->val$netinfo:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->val$netinfo:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/TVMessageSender;->initSender(Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-static {v1}, Lcom/samsung/android/allshare/IAppControlAPI;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/IAppControlAPI;)Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/TVMessageListener;->setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$3;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/TVMessageListener;->start()V

    .line 314
    return-void
.end method
