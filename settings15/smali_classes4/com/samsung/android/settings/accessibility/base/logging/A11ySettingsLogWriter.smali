.class public final Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/LogWriter;


# direct methods
.method public static refineCategory(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "A11Y"

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final action(IIIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final action(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final varargs action(I[Landroid/util/Pair;)V
    .locals 0

    return-void
.end method

.method public final action(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public final action(Landroid/content/Context;IZ)V
    .locals 0

    return-void
.end method

.method public final changed(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final clicked(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;->refineCategory(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "A11Y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/accessibility/base/logging/A11yLoggingConstant;->PREF_CLICK_EVENT_ID_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final hidden(II)V
    .locals 0

    return-void
.end method

.method public final visible(III)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;->refineCategory(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
