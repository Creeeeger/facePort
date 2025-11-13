.class public final synthetic Lcom/android/settings/users/UserPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/users/UserPreference;

    check-cast p2, Lcom/android/settings/users/UserPreference;

    sget-object p0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Lcom/android/settings/users/UserPreference$$ExternalSyntheticLambda0;

    const/4 p0, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result p2

    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
