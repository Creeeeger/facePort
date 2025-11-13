.class public Lcom/google/android/mms/pdu/NotificationInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageType(I)V

    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public greylist getContentClass()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getContentLocation()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDeliveryReport()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getExpiry()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageClass()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransactionId()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist setContentClass(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xba

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setContentLocation([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setDeliveryReport(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setExpiry(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setMessageClass([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setMessageSize(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public greylist setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
