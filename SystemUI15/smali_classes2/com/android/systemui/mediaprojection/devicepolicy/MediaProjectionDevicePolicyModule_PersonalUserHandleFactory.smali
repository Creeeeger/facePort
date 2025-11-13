.class public final Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final activityManagerWrapperProvider:Ljavax/inject/Provider;

.field public final module:Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;->module:Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static personalUserHandle(Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;)Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;->module:Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;

    invoke-static {p0}, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule_PersonalUserHandleFactory;->personalUserHandle(Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
