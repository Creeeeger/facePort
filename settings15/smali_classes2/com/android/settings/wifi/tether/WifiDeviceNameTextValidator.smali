.class public final Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# virtual methods
.method public final isTextValid(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :cond_2
    return p1
.end method
