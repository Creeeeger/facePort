.class Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;
.super Ljava/lang/Object;
.source "FrontDisplayStrategy.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;->doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

.field final synthetic blacklist val$extraUnlockType:Ljava/lang/String;

.field final synthetic blacklist val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->val$extraUnlockType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFoldStateChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    invoke-static {v0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;->-$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v0

    const-string v1, "FrontDisplayStrategy"

    const-string v2, "registerSecureConfirm by FoldStateChangedListener"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    invoke-static {v0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;->-$$Nest$fgetmKeyguardManagerWrapper(Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;)Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    invoke-static {v0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;->-$$Nest$fgetmGlobalActions(Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;)Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    invoke-static {v0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;->-$$Nest$fgetmKeyguardManagerWrapper(Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;)Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy$1;->val$extraUnlockType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
