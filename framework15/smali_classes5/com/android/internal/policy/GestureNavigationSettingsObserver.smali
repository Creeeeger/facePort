.class public Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureNavigationSettingsObserver.java"


# instance fields
.field private blacklist mBgHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mOnChangeRunnable:Ljava/lang/Runnable;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$2LyAPXjY8lxrFT__0wMdLTP5MGw(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$registerForCallingUser$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AXStnNoDh1xIPHWag4AqnNd3LdM(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BC4j_XktI64YbNYv6S2WRUmxua8(Lcom/android/internal/policy/GestureNavigationSettingsObserver;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$registerForCallingUser$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JA1ylqO7XNLTi7yML43aJgC_YQM(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$unregister$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g24CV-AAJZD1PtyBXj0Y4AhOe0s(Lcom/android/internal/policy/GestureNavigationSettingsObserver;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist getUnscaledInset(Landroid/content/res/Resources;)F
    .locals 4

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x10500d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "systemui"

    const-string v3, "back_gesture_edge_width"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    nop

    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    return v3
.end method

.method private synthetic blacklist lambda$register$0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$register$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "back_gesture_inset_scale_left"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v1, "back_gesture_inset_scale_right"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string/jumbo v1, "navigation_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v1, "bottom_gesture_inset_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iget-object v2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "systemui"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerForCallingUser$2(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$registerForCallingUser$3()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "back_gesture_inset_scale_left"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    const-string v1, "back_gesture_inset_scale_right"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iget-object v2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "systemui"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$unregister$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public blacklist areNavigationButtonForcedVisible()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public blacklist getBottomSensitivity(Landroid/content/res/Resources;)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigation_bar_gesture_hint"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v2, v1

    :cond_1
    const v3, 0x10502c7

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v5

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iget-object v5, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bottom_gesture_inset_scale"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    mul-float v6, v1, v5

    float-to-int v6, v6

    return v6

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public blacklist getLeftSensitivity(Landroid/content/res/Resources;)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    const-string v3, "back_gesture_inset_scale_left"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getLeftSensitivityForCallingUser(Landroid/content/res/Resources;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_gesture_inset_scale_left"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getRightSensitivity(Landroid/content/res/Resources;)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    const-string v3, "back_gesture_inset_scale_right"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getRightSensitivityForCallingUser(Landroid/content/res/Resources;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_gesture_inset_scale_right"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getUnscaledInset(Landroid/content/res/Resources;)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public whitelist onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public blacklist register()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist registerForCallingUser()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
