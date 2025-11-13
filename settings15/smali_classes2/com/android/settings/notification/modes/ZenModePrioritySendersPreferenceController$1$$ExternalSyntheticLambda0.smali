.class public final synthetic Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;

.field public final synthetic f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    check-cast p1, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez p0, :cond_1

    :cond_0
    move p0, v5

    goto :goto_0

    :cond_1
    move p0, v4

    :goto_0
    iget-object v0, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;

    iget-boolean v3, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v3

    :goto_1
    iget-boolean v6, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v4

    aput v4, v7, v5

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->keyToSettingEndState(Ljava/lang/String;Z)[I

    move-result-object p0

    aget v0, p0, v4

    aget p0, p0, v5

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    aput v0, v7, v4

    :cond_4
    if-eqz v6, :cond_8

    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_5

    aput p0, v7, v5

    :cond_5
    const-string p0, "conversations_important"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-ne v3, v5, :cond_6

    const/4 p0, 0x4

    aput p0, v7, v4

    :cond_6
    const-string p0, "senders_starred_contacts"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "senders_contacts"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    if-ne v1, v5, :cond_8

    const/4 p0, 0x3

    aput p0, v7, v5

    :cond_8
    aget p0, v7, v4

    aget v0, v7, v5

    if-eqz p0, :cond_a

    if-eqz v6, :cond_9

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_3

    :cond_9
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    :cond_a
    :goto_3
    if-eqz v6, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    :cond_b
    return-object p1
.end method
