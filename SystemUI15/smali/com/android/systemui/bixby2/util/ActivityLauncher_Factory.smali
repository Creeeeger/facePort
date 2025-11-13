.class public final Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;
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
.field private final desktopManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final displayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final keyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)Lcom/android/systemui/bixby2/util/ActivityLauncher;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/util/ActivityLauncher;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/util/ActivityLauncher;-><init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/util/ActivityLauncher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->newInstance(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)Lcom/android/systemui/bixby2/util/ActivityLauncher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher_Factory;->get()Lcom/android/systemui/bixby2/util/ActivityLauncher;

    move-result-object p0

    return-object p0
.end method
