.class public Lcom/google/android/mms/pdu/NotifyRespInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method public constructor greylist <init>(I[BI)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 44
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMessageType(I)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMmsVersion(I)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 47
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/NotifyRespInd;->setStatus(I)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(I[BII)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .param p3, "status"    # I
    .param p4, "reportAlloed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 135
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMessageType(I)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMmsVersion(I)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 138
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/NotifyRespInd;->setStatus(I)V

    .line 139
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/NotifyRespInd;->setReportAllowed(I)V

    .line 140
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getReportAllowed()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getStatus()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTransactionId()[B
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setReportAllowed(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 79
    return-void
.end method

.method public greylist setStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 91
    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotifyRespInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 121
    return-void
.end method
