.class public final synthetic Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SNPC.exemptPackagesUpdated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mSessionProtectionExemptPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mNotificationProtectionExemptPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->updateProjectionStateAndNotifyListeners(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
