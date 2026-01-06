.class Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldEventBuilder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mRelayClient:Ljava/lang/String;

.field private mRelayVer:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mUiMode:Z

.field private mWifiOnly:Z

.field final synthetic this$0:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->this$0:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mUiMode:Z

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayClient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUiMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mUiMode:Z

    return v0
.end method

.method public getWifiOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delimiter is included : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRelayClient(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    return-void
.end method

.method public setRelayClientVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    return-void
.end method

.method public setUiMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mUiMode:Z

    return-void
.end method

.method public setWifiOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    return-void
.end method
