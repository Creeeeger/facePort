.class public final Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final dialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final intentWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final logWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->dialogFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->intentWrapperProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;
    .locals 1

    new-instance v0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->dialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->intentWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->newInstance(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel_Factory;->get()Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    move-result-object p0

    return-object p0
.end method
