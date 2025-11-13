.class public final synthetic Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

.field public final synthetic f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v2, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v1, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
