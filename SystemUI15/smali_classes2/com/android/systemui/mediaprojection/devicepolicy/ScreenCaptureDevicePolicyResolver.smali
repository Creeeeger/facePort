.class public final Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final disallowSharingIntoManagedProfile$delegate:Lkotlin/Lazy;

.field public final personalProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

.field public final personalProfileUserHandle:Landroid/os/UserHandle;

.field public final userManager:Landroid/os/UserManager;

.field public final workProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

.field public final workProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->userManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->personalProfileUserHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileUserHandle:Landroid/os/UserHandle;

    new-instance p1, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$personalProfileScreenCaptureDisabled$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$personalProfileScreenCaptureDisabled$2;-><init>(Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->personalProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$workProfileScreenCaptureDisabled$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$workProfileScreenCaptureDisabled$2;-><init>(Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$disallowSharingIntoManagedProfile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver$disallowSharingIntoManagedProfile$2;-><init>(Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->disallowSharingIntoManagedProfile$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileUserHandle:Landroid/os/UserHandle;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->personalProfileScreenCaptureDisabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileUserHandle:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->disallowSharingIntoManagedProfile$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final isScreenCaptureCompletelyDisabled(Landroid/os/UserHandle;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->workProfileUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->personalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
