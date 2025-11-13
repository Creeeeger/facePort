.class public final Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "SmsBroadcastConfigInfo.java"


# instance fields
.field private blacklist mFromCodeScheme:I

.field private blacklist mFromServiceId:I

.field private blacklist mSelected:Z

.field private blacklist mToCodeScheme:I

.field private blacklist mToServiceId:I


# direct methods
.method public constructor blacklist <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    iput p4, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    iput-boolean p5, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getFromCodeScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    return v0
.end method

.method public blacklist getFromServiceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    return v0
.end method

.method public blacklist getToCodeScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    return v0
.end method

.method public blacklist getToServiceId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return v0
.end method

.method public blacklist setFromCodeScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    return-void
.end method

.method public blacklist setFromServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    return-void
.end method

.method public blacklist setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method

.method public blacklist setToCodeScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    return-void
.end method

.method public blacklist setToServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Code ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    if-eqz v1, :cond_0

    const-string v1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v1, "DISABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
