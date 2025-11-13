.class public final Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;


# instance fields
.field public final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    return-void
.end method


# virtual methods
.method public final doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDispose()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
