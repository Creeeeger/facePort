.class public final Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v0, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iput p1, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateEventRule(Landroid/service/notification/ZenModeConfig$EventInfo;)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    const-string p1, ":"

    const/4 v1, 0x3

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    const/4 v1, 0x2

    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v3, p1, v1

    :goto_2
    iput-object v3, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateEventRule(Landroid/service/notification/ZenModeConfig$EventInfo;)V

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
