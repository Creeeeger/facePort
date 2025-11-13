.class public final synthetic Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->$r8$lambda$i0KwHfjRt6iBF4iCBfHvJ9uWSes(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;Lcom/android/settings/notification/modes/ZenMode;)V

    return-object p1
.end method
