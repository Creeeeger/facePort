.class public final Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;

    check-cast p2, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;

    iget-object p0, p1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
