.class Lcom/android/server/FMPlayerNativeBase$RDSData;
.super Ljava/lang/Object;
.source "FMPlayerNativeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RDSData"
.end annotation


# instance fields
.field public blacklist mChannelName:Ljava/lang/String;

.field public blacklist mFreq:J

.field public blacklist mRadioText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 43
    if-eqz p3, :cond_0

    .line 44
    iput-object p3, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 46
    :cond_0
    if-eqz p4, :cond_1

    .line 47
    iput-object p4, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 49
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(J[B[B)V
    .locals 3
    .param p1, "freq"    # J
    .param p3, "channelName"    # [B
    .param p4, "radioText"    # [B

    .line 21
    const-string v0, "FMPlayerNativeBase"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 27
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in new String(channelName) :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    goto :goto_1

    .line 33
    :catch_1
    move-exception v1

    .line 34
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in new String(radioText) :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n== RDSData :--> \nFreq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nChannel Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<-- \nRadio Text :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<--: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
