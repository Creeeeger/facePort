.class public final synthetic Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;Landroid/service/notification/ZenModeConfig$ScheduleInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput p3, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, p2}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->updateScheduleDays(Landroid/service/notification/ZenModeConfig$ScheduleInfo;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->updateScheduleMode(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/util/function/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    :cond_0
    return-void
.end method
