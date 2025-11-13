.class public final Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public calendarId:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public userId:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;

    iget-object v2, p1, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->calendarId:Ljava/lang/Long;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->calendarId:Ljava/lang/Long;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetCalendarPreferenceController$CalendarInfo;->calendarId:Ljava/lang/Long;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
