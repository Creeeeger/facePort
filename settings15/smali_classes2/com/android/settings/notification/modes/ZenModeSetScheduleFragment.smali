.class public Lcom/android/settings/notification/modes/ZenModeSetScheduleFragment;
.super Lcom/android/settings/notification/modes/ZenModeFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeExitAtAlarmPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v2, "exit_at_alarm"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700ed

    return p0
.end method
