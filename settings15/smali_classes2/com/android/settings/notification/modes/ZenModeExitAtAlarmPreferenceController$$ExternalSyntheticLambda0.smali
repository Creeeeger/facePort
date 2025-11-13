.class public final synthetic Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    return-object p1
.end method
