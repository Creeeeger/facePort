.class public final Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAutoRotateSettingsManagerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAutoRotateSettingsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideAutoRotateSettingsManager(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    .locals 3

    const-class v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    invoke-direct {v2, v1}, Lcom/android/settingslib/devicestate/AndroidSecureSettings;-><init>(Landroid/content/ContentResolver;)V

    new-instance v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/devicestate/SecureSettings;)V

    sput-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAutoRotateSettingsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule_ProvideAutoRotateSettingsManagerFactory;->provideAutoRotateSettingsManager(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    move-result-object p0

    return-object p0
.end method
