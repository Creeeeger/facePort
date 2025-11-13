.class public final synthetic Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/app/IActivityManager;

.field public final synthetic f$3:Landroid/telephony/TelephonyManager;

.field public final synthetic f$4:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Landroid/content/Context;Landroid/app/IActivityManager;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$2:Landroid/app/IActivityManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$4:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$2:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda1;->f$4:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SNPC"

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-interface {v2}, Landroid/app/IActivityManager;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error adding bug report handlers to exemption, continuing without"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyAssistancePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Error adding emergency assistance package to exemption"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v5, v1}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
