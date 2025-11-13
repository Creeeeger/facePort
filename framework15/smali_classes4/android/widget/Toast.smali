.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field static final blacklist DEBUG:Z

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field public static final whitelist SEM_DISPLAY_TYPE_DEFAULT:I = 0x0

.field public static final whitelist SEM_DISPLAY_TYPE_DEX:I = 0x1

.field public static final whitelist SEM_LENGTH_LONG_DOUBLE:I = 0x3e8

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field blacklist mCustomDisplayId:I

.field blacklist mDisplayContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsCustomToast:Z

.field private greylist-max-o mNextView:Landroid/view/View;

.field blacklist mNextViewForDex:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .locals 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    new-instance v0, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v5, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10505ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    return-void
.end method

.method private blacklist checkGameHomeAllowList()Z
    .locals 7

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Toast"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Boot is not completed yet. Don\'t read settings db."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "game_no_interruption"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_no_interruption_white_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    const-string v4, "gameNoInterruption is on, but allowList is null."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v2
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .locals 1

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0

    :cond_0
    nop

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private blacklist isDexDualModeEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    :cond_1
    sget-boolean v2, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexDualModeEnabled: isDesktopDualMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Toast"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private blacklist isSpeg()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .locals 2

    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .locals 2

    if-eqz p4, :cond_0

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {p0, p2, p4}, Landroid/widget/ToastPresenter;->getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable icon should not be null for makeCustomToastWithIcon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 3

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-wide/32 v1, 0x8cf3b87

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    :goto_0
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private blacklist semCreateDisplayContext(I)Landroid/content/Context;
    .locals 10

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    const-string v1, "com.samsung.android.hardware.display.category.DESKTOP"

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_3

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-eq v9, v4, :cond_1

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-ne v9, v3, :cond_2

    :cond_1
    iget-object v9, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, v9, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return-object v3

    :cond_4
    :goto_2
    return-object v0
.end method

.method private blacklist semGetFocusedDisplayId()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getTopFocusedDisplayId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Toast"

    const-string v3, "Unable to get focusedDisplayId"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private blacklist semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist semMakeAction(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 3

    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    :goto_1
    return-void
.end method

.method public whitelist getDuration()I
    .locals 1

    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public blacklist getTn()Landroid/widget/Toast$TN;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    return-object v0
.end method

.method public whitelist getVerticalMargin()F
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist semSetPreferredDisplayType(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    :goto_0
    return-void
.end method

.method public whitelist setDuration(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    return-void
.end method

.method public whitelist setGravity(III)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    return-void
.end method

.method public whitelist setMargin(FF)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return-void
.end method

.method public whitelist setText(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .locals 3

    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setView(Landroid/view/View;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p1

    iput-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    const-string v1, "Toast"

    const-string/jumbo v2, "setView: it\'s a custom toast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist show()V
    .locals 26

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->isSpeg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v2

    const-string v3, "Toast"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastEnabledState()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Knox Customization: Not showing toast"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->checkGameHomeAllowList()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-wide/32 v4, 0x8cf3b87

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v7

    :goto_1
    const-string v8, "You must either set a text or a view"

    invoke-static {v0, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_19

    :goto_2
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v8, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    iput-boolean v8, v0, Landroid/widget/Toast$TN;->mIsCustomView:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "show: caller = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-object v8, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->semGetFocusedDisplayId()I

    move-result v10

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Toast;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v7

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move v11, v0

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Toast;->isDexDualModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v12, 0x2

    if-eqz v0, :cond_7

    if-ne v10, v12, :cond_7

    move v13, v7

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "show: isDexDualMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v14, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    if-nez v14, :cond_8

    if-nez v11, :cond_8

    if-eqz v13, :cond_8

    if-eqz v0, :cond_8

    iget-object v14, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-direct {v1, v12}, Landroid/widget/Toast;->semCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v12

    iput-object v12, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_ONEUI_TOAST_SUPPRORT_SUB_DISPLAY:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    if-nez v0, :cond_9

    if-ne v10, v7, :cond_9

    if-eq v9, v7, :cond_9

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {v1, v7}, Landroid/widget/Toast;->semCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show: contextDispId = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mCustomDisplayId = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " focusedDisplayId = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " isActivityContext = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastShowPackageNameState()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const/16 v14, 0x3c

    const/16 v15, 0x3e

    const-string v8, "Exception thrown :"

    const-string v4, "%1s: %2s"

    if-eqz v0, :cond_b

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_a

    if-eqz v13, :cond_a

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move-object/from16 v16, v0

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v13, v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_5
    goto :goto_6

    :cond_b
    if-eqz v13, :cond_c

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v5, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    iput-object v15, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v13, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    :cond_c
    :goto_6
    iget-boolean v0, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show: new view = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v0, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    const v4, 0x10505ab

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v5, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/Toast$TN;->mY:I

    goto :goto_7

    :cond_e
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-object v5, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/Toast$TN;->mY:I

    :cond_f
    :goto_7
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {}, Landroid/widget/flags/Flags;->toastNoWeakref()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    goto :goto_8

    :cond_10
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    :goto_8
    iput-object v0, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_a

    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v7, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    if-eqz v7, :cond_12

    iget-object v7, v1, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    goto :goto_9

    :cond_12
    iget-object v7, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    :goto_9
    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v6, Landroid/widget/Toast$TN;->mNextViewWeakRef:Ljava/lang/ref/WeakReference;

    :goto_a
    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    goto :goto_b

    :cond_13
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    :goto_b
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget v7, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    iget v0, v1, Landroid/widget/Toast;->mCustomDisplayId:I

    move v7, v0

    goto :goto_c

    :cond_14
    move v7, v0

    :goto_c
    const/4 v8, -0x1

    :try_start_2
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v3, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v8, v3

    goto :goto_d

    :catch_2
    move-exception v0

    const-string/jumbo v12, "show: cannot get uid!!!"

    invoke-static {v3, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isUiContext()Z

    move-result v3

    if-eqz v4, :cond_18

    const-wide/32 v12, 0x8cf3b87

    :try_start_3
    invoke-static {v12, v13}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v12, v1, Landroid/widget/Toast;->mDuration:I

    iget-object v13, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    invoke-direct {v1, v13}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v12

    move/from16 v21, v3

    move/from16 v22, v7

    move/from16 v24, v8

    invoke-interface/range {v16 .. v24}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZILjava/lang/String;I)V

    goto :goto_f

    :cond_15
    new-instance v0, Landroid/widget/Toast$CallbackBinder;

    iget-object v12, v1, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v13, v1, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-direct {v0, v12, v13, v14}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    move-object/from16 v23, v0

    iget-object v0, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v12, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v13, v1, Landroid/widget/Toast;->mDuration:I

    iget-object v14, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v14, :cond_16

    iget-object v14, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_16
    const-string v14, ""

    :goto_e
    move-object/from16 v24, v14

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v3

    move/from16 v22, v7

    move/from16 v25, v8

    invoke-interface/range {v16 .. v25}, Landroid/app/INotificationManager;->enqueueTextToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    goto :goto_f

    :cond_17
    iget-object v0, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v12, v1, Landroid/widget/Toast;->mDuration:I

    iget-object v13, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    invoke-direct {v1, v13}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v12

    move/from16 v21, v3

    move/from16 v22, v7

    move/from16 v24, v8

    invoke-interface/range {v16 .. v24}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_f
    goto :goto_10

    :catch_3
    move-exception v0

    :cond_18
    :goto_10
    return-void

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "setView must have been called"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
