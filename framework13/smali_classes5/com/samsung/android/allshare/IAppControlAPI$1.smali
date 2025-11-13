.class Lcom/samsung/android/allshare/IAppControlAPI$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/IAppControlAPI;->startControl(Lcom/samsung/android/allshare/NetworkSocketInfo;Ljava/lang/String;)V
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

    .line 160
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI$1;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iput-object p2, p0, Lcom/samsung/android/allshare/IAppControlAPI$1;->val$netinfo:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$1;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v0, v0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI$1;->val$netinfo:Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/TVMessageSender;->initSender(Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI$1;->this$0:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMouseCreate()V

    .line 165
    return-void
.end method
