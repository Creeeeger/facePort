.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRepeatClick(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    new-array v0, v0, [I

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 185
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean v1, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    goto :goto_2

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    .line 191
    sget-object v4, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v4, v4, v2

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_2
    new-array v2, v3, [I

    move v3, v0

    move v5, v3

    :goto_1
    if-ge v3, v4, :cond_4

    .line 199
    sget-object v6, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    aget v6, v6, v1

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 200
    aput v7, v2, v5

    move v5, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 198
    rem-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    iput-object v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 204
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean v0, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    .line 207
    :goto_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    return-void
.end method
