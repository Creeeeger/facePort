.class public Lcom/android/settings/FallbackHome;
.super Landroid/app/Activity;
.source "FallbackHome.java"


# instance fields
.field private final mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mProgressTimeout:I

.field private final mProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mProvisioned:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$v2_sL-CilAeV-O9mIVHYnEMfzus(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmColorsChangedListener(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallManager(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeFinish(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWallpaperOffset(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->setWallpaperOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVisibilityFlagsFromColors(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/FallbackHome;->updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/FallbackHome$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/android/settings/FallbackHome$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$1;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 164
    new-instance v0, Lcom/android/settings/FallbackHome$2;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$2;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Lcom/android/settings/FallbackHome$4;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$4;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->fallback_home_finishing_boot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x10c000d

    .line 61
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private loadWallpaperColors(I)V
    .locals 1

    .line 172
    new-instance v0, Lcom/android/settings/FallbackHome$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/FallbackHome$3;-><init>(Lcom/android/settings/FallbackHome;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private maybeFinish()V
    .locals 5

    .line 202
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FallbackHome"

    if-eqz v0, :cond_0

    const-string v0, "User unlocked but no home; let\'s hope someone enables one soon?"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v0, "User unlocked and real home found; let\'s go!"

    .line 210
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 211
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setWallpaperOffset()V
    .locals 4

    const-string v0, "FallbackHome"

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-eqz p0, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0, v2, v3, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperOffsets:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Exception occured"

    .line 255
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "IllegalArgumentException occured"

    .line 252
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 221
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    or-int/lit16 p0, p2, 0x2000

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_0
    and-int/lit16 p0, p2, -0x2001

    and-int/lit8 p0, p0, -0x11

    return p0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->setWallpaperOffset()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x1f4

    .line 95
    iput p1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeout:I

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    .line 116
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p1

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x600

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    sget p1, Lcom/android/settings/R$style;->FallbackHome_SetupWizard:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/16 p1, 0x1006

    .line 127
    :goto_1
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_3

    const-string v0, "FallbackHome"

    const-string v1, "Wallpaper manager isn\'t ready, can\'t listen to color changes!"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 131
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/FallbackHome;->loadWallpaperColors(I)V

    .line 133
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->setWallpaperOffset()V

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeout:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
