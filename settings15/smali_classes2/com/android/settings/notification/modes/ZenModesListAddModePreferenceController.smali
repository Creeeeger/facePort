.class public final Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;


# direct methods
.method public static $r8$lambda$dHGe1XmF6BmxK2pwZZeWS1e6cvY(Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New mode #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    sget-object v3, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v3, 0x16

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v3, 0x7

    iput v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    new-instance v3, Landroid/app/AutomaticZenRule$Builder;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/notification/modes/ZenModesBackend;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/modes/ZenModesBackend;->getMode(Ljava/lang/String;)Lcom/android/settings/notification/modes/ZenMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/notification/modes/ZenSubSettingLauncher;->forMode(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "add_mode"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModesListAddModePreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
