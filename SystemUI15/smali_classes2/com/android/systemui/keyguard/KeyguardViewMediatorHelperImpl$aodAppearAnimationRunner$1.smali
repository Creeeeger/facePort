.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AOD Appear animation cancelled by WM."

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->IS_SAFE_MODE_ENABLED:Z

    const-string p1, "KeyguardViewMediator"

    if-eqz p0, :cond_0

    const-string p0, "handleOnAnimationStart: return in SystemUI safe mode."

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_9

    array-length p0, p2

    if-nez p0, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->aodAppearWallpaperOpeningTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p3, :cond_7

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_7

    aget-object p4, p3, p2

    if-eqz p4, :cond_2

    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    iput-object p4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sput-object p4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->aodAppearWallpaperOpeningTarget:Landroid/view/RemoteAnimationTarget;

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    iput-object p4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    const-string p0, "aodAppearAnimationRunner handleOnAnimationStart"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;

    move-object v0, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_9
    :goto_4
    const-string p0, "handleOnAnimationStart: No apps provided to the Appear Animation runner; skipping appear animation."

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz p5, :cond_a

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_a
    :goto_6
    return-void
.end method
