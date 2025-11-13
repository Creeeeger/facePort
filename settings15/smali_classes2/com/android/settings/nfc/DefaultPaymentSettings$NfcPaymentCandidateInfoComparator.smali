.class public final Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfoComparator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;

    check-cast p2, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;

    iget-object p0, p1, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object p1, p2, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method
