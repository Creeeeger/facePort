.class public final Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;

.field private final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-void
.end method


# virtual methods
.method public getRotationLockOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isCameraRotationEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "camera_autorotate"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isRotationLockToggleVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public registerRotationPolicyListener(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    return-void
.end method

.method public setRotationLock(ZLjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "RotationPolicyWrapperImpl#setRotationLock"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public setRotationLockAtAngle(ZILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V

    return-void
.end method

.method public unregisterRotationPolicyListener(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method
