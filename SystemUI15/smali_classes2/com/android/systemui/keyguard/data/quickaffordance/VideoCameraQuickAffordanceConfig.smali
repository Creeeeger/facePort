.class public final Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/camera/CameraIntentsWrapper;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/android/systemui/camera/CameraIntents;->VIDEO_CAMERA_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.camera_launch_source"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "video_camera"

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$lockScreenState$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$lockScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    const p0, 0x7f080b4a

    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;

    iget v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->isLaunchable$1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    invoke-super {p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;

    return-object p0
.end method

.method public final isLaunchable$1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/systemui/ActivityIntentHelper;->getTargetActivityInfo(Landroid/content/Intent;ZI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$isLaunchable$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$isLaunchable$2;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 1

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;-><init>(Landroid/content/Intent;Z)V

    return-object p1
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->context:Landroid/content/Context;

    const v0, 0x7f13143e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
