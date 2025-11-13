.class public Lcom/google/android/mms/pdu/SendReq;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor greylist <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 34
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    .line 35
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 38
    const-string v0, "application/vnd.wap.multipart.related"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 39
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;->generateTransactionId()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    nop

    .line 46
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 82
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 1
    .param p1, "contentType"    # [B
    .param p2, "from"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p3, "mmsVersion"    # I
    .param p4, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 68
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 71
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 72
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    .line 73
    return-void
.end method

.method private blacklist generateTransactionId()[B
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "transactionId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 113
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 114
    return-void
.end method

.method public greylist addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 145
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 146
    return-void
.end method

.method public greylist getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getContentType()[B
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDeliveryReport()I
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDeliveryTime()J
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getExpiry()J
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getMessageClass()[B
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageSize()J
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getReadReport()I
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getReserved()J
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getTransactionId()[B
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 124
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 125
    return-void
.end method

.method public greylist-max-r setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 156
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 157
    return-void
.end method

.method public greylist setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 177
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 178
    return-void
.end method

.method public greylist setDeliveryReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 199
    return-void
.end method

.method public blacklist setDeliveryTime(J)V
    .locals 2
    .param p1, "value"    # J

    .line 395
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 396
    return-void
.end method

.method public greylist setExpiry(J)V
    .locals 2
    .param p1, "value"    # J

    .line 221
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 222
    return-void
.end method

.method public greylist setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 266
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 267
    return-void
.end method

.method public greylist setMessageSize(J)V
    .locals 2
    .param p1, "value"    # J

    .line 243
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 244
    return-void
.end method

.method public greylist setReadReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 288
    return-void
.end method

.method public blacklist setReserved(J)V
    .locals 2
    .param p1, "value"    # J

    .line 417
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xc0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 418
    return-void
.end method

.method public greylist setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 298
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 299
    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 319
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 320
    return-void
.end method
