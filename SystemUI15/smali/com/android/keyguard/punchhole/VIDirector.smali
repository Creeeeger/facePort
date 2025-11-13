.class public final Lcom/android/keyguard/punchhole/VIDirector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PUNCH_HOLE_VI_INFO:Ljava/lang/String;


# instance fields
.field public mCameraLocPercent:Landroid/graphics/PointF;

.field public final mContext:Landroid/content/Context;

.field public mFaceVISizePercent:Landroid/graphics/PointF;

.field public mIsBasedOnType:Z

.field public mIsBouncer:Z

.field public mIsFolderOpened:Z

.field public final mPunchHoleVIInfo:Ljava/lang/String;

.field public mVIFileName:Ljava/lang/String;

.field public mVIType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_PUNCHHOLE_VI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    const-string v0, "KeyguardPunchHoleVIView_VIDirector"

    const-string v1, "debug_punchhole_vi"

    const-string v2, "punch hole vi info: "

    :try_start_0
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to set punch hole vi info to debug"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getScreenHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockScreenRotationAllowed$1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getScreenRotation()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockScreenRotationAllowed$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getScreenWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockScreenRotationAllowed$1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string/jumbo v4, "vcut"

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "ucut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "infinity-ucut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const v3, 0x7f07148f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x1050563

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v6, 0x7f050014

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const v6, 0x7f0701a3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2

    :cond_1
    move v0, v7

    :goto_2
    const-string/jumbo v6, "statusBarHeight = "

    const-string v8, " cameraTopMargin = "

    const-string v9, " cameraProtectionStroke = "

    invoke-static {v6, v3, v8, v4, v9}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KeyguardPunchHoleVIView_VIDirector"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v3

    if-nez v3, :cond_2

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    goto :goto_3

    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v2

    :goto_3
    cmpl-float v9, v0, v7

    if-nez v9, :cond_3

    move v10, v7

    goto :goto_4

    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v0, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    :goto_4
    float-to-int v10, v10

    float-to-int v11, v4

    sub-int/2addr v11, v10

    sub-int/2addr v11, v8

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    sub-float/2addr v0, v4

    int-to-float v4, v11

    sub-float v7, v0, v4

    :goto_5
    float-to-int v0, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "rect = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " viStroke = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " gap = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cameraStroke = "

    const-string v9, " topCameraStroke = "

    invoke-static {v4, v11, v7, v10, v9}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v6, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eq v3, v5, :cond_6

    if-eq v3, v2, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v8

    add-int/2addr v0, v10

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v8

    sub-int/2addr p1, v11

    add-int/2addr p1, v10

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v8

    add-int/2addr p1, v10

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v8

    sub-int/2addr v0, v10

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v8

    sub-int/2addr v0, v11

    add-int/2addr v0, v10

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v8

    add-int/2addr p1, v10

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "viViewLocation = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_8

    new-instance p1, Landroid/graphics/PointF;

    const v2, 0x3c75c28f    # 0.015f

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3d8ccccd    # 0.06875f

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_7

    :cond_8
    new-instance p1, Landroid/graphics/PointF;

    const v2, 0x3ce075f7    # 0.0274f

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    const v2, 0x3e50e560    # 0.204f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_7
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/keyguard/punchhole/VIDirector;->setRoundViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_8
    if-eqz p2, :cond_9

    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result p0

    iget p2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    iput p2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    :cond_9
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_3
        -0x3e6d7dce -> :sswitch_2
        0x36b1ad -> :sswitch_1
        0x37260c -> :sswitch_0
    .end sparse-switch
.end method

.method public final initialize()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    const-string v3, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    const-string v5, "size"

    const-string v6, "pos"

    const/4 v7, 0x1

    if-ge v4, v3, :cond_f

    aget-object v8, v1, v4

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string v13, ":"

    if-eqz v6, :cond_6

    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sget-boolean v14, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v14, :cond_1

    move v15, v10

    goto :goto_1

    :cond_1
    move v15, v11

    :goto_1
    array-length v2, v6

    if-eq v2, v15, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v14, :cond_5

    new-instance v2, Landroid/graphics/PointF;

    iget-boolean v14, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v14, :cond_3

    move v14, v7

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    iget-boolean v15, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v15, :cond_4

    move v15, v12

    goto :goto_3

    :cond_4
    move v15, v9

    :goto_3
    aget-object v6, v6, v15

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v2, v14, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    goto :goto_4

    :cond_5
    new-instance v2, Landroid/graphics/PointF;

    aget-object v14, v6, v7

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aget-object v6, v6, v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v2, v14, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    :cond_6
    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v10, v11

    :goto_5
    array-length v6, v2

    if-eq v6, v10, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v5, :cond_b

    new-instance v5, Landroid/graphics/PointF;

    iget-boolean v6, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v6, :cond_9

    move v11, v7

    :cond_9
    aget-object v6, v2, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-boolean v10, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    if-eqz v10, :cond_a

    move v9, v12

    :cond_a
    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    goto :goto_6

    :cond_b
    new-instance v5, Landroid/graphics/PointF;

    aget-object v6, v2, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aget-object v2, v2, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    :cond_c
    :goto_6
    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-ge v5, v12, :cond_d

    goto :goto_7

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "punch_hole_ic_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mPunchHoleVIInfo:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v7

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    if-eqz v0, :cond_11

    move v2, v7

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    return v2

    :cond_12
    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    if-eqz v0, :cond_13

    move v2, v7

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    :goto_a
    return v2
.end method

.method public final setRoundViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result p0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    int-to-float p0, v0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    mul-float v3, v2, v4

    sub-float/2addr v0, v3

    mul-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p3

    sub-float/2addr p2, v4

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr p0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p2

    mul-float/2addr v1, p3

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, p0

    int-to-float v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    mul-float v2, v1, v4

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p2

    mul-float/2addr v4, p0

    sub-float/2addr v0, v4

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p3, v2

    add-float/2addr v1, p3

    float-to-int p3, v1

    iput p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    add-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p0

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    mul-float v5, v2, v4

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, p2

    mul-float/2addr v3, v1

    iget p2, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p2

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    float-to-int p2, v3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p3, v0

    add-float/2addr v2, p3

    float-to-int p3, v2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    add-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method
