.class public final synthetic Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;

.field public final synthetic f$1:Lcom/android/settings/notification/modes/ZenMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/modes/ZenMode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    iget-object p1, p1, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v1, ""

    const-string v2, "ZenModeBackend"

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/service/notification/Condition;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v2, p0, v1, v0, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    invoke-virtual {p1, v5, v2}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_2

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, v3, v2, v4}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/service/notification/Condition;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0, v1, v4, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    invoke-virtual {p1, v5, v0}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    :goto_0
    return-void
.end method
