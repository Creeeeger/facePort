.class Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback$Stub;
.source "Executor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->handleAsyncRequest(Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsParted:Z

.field private mMsgBuffer:Ljava/lang/StringBuffer;

.field private mMsgLength:I

.field final synthetic this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private handleMsg(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$300(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->getResponseType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/GsonHelper;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;

    .line 182
    iget-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->remoteException:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$400(Ljava/lang/Throwable;)V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$500(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;)V

    return-void
.end method


# virtual methods
.method public onResultReceived(Ljava/lang/String;)V
    .locals 3

    .line 147
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$000(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$100(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    sget-boolean p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$000(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onResultReceived, but disposed"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "PARTED"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgLength:I

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgBuffer:Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mIsParted:Z

    return-void

    .line 164
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mIsParted:Z

    if-nez v0, :cond_4

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->handleMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgLength:I

    if-ne p1, v0, :cond_6

    .line 169
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->handleMsg(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 173
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$000(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResultReceived"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$1;->this$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->access$200(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
