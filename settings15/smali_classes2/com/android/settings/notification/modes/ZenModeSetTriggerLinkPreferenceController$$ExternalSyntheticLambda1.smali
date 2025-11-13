.class public final synthetic Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModeSetTriggerLinkPreferenceController$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-eq p0, v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    :cond_0
    return-object p1
.end method
