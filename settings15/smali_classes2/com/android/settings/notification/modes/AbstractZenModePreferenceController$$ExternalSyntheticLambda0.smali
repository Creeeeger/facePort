.class public final synthetic Lcom/android/settings/notification/modes/AbstractZenModePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-boolean p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    if-nez p0, :cond_5

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Manual DND cannot have CHANNEL_POLICY_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getAllowedChannels()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v3}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v3}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    :cond_4
    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    :cond_5
    :goto_0
    return-object p1
.end method
