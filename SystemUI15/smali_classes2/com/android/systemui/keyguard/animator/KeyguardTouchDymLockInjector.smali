.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field public mIsDynamicLockEnabled:Z

.field public mLockStarEnabled:Z

.field public mNonSwipeMode:I

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStateListener:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

.field public mViewMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyguardTouchDymLockInjector pluginLockMediator: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "KeyguardTouchDymLockInjector"

    invoke-static {v3, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method


# virtual methods
.method public final getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeModeAngle()I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4046800000000000L    # 45.0

    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v0

    cmpl-double p0, p1, v2

    if-gez p0, :cond_5

    const-wide v2, -0x3f99800000000000L    # -180.0

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    neg-double v2, v0

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_2

    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_2
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_3

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_3

    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_3
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_4

    add-double/2addr v0, v2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_4

    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0
.end method

.method public final resetDynamicLock()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetDynamicLock mIsDynamicLockEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyguardTouchDymLockInjector"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    :cond_0
    return-void
.end method

.method public final updateDirection(IFFLandroid/view/MotionEvent;)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget v3, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v6, v4, v1

    float-to-int v6, v6

    sub-float v7, v5, v2

    float-to-int v7, v7

    int-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-double v12, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    float-to-double v10, v1

    float-to-double v1, v2

    float-to-double v12, v4

    float-to-double v4, v5

    sub-double/2addr v12, v10

    sub-double/2addr v4, v1

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v1, v4

    move v4, p1

    int-to-double v4, v4

    cmpl-double v4, v8, v4

    if-lez v4, :cond_5

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    if-gez v6, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2

    if-lez v6, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    if-gez v7, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    if-lez v7, :cond_4

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    goto :goto_0

    :cond_5
    and-int/lit8 v1, v3, 0x10

    if-eqz v1, :cond_6

    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    :goto_0
    iput-object v5, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-void
.end method
