.class public Lcom/google/android/mms/pdu/RetrieveConf;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageType(I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method


# virtual methods
.method public greylist addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getContentType()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDeliveryReport()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageClass()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageId()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMmsId()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMmsVersion()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getReadReport()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getRetrieveStatus()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransactionId()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist setContentType([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

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

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setMessageClass([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setMessageId([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public greylist setReadReport(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setRetrieveStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public greylist setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public greylist setTransactionId([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
