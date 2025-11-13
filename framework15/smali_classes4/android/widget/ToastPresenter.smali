.class public Landroid/widget/ToastPresenter;
.super Ljava/lang/Object;
.source "ToastPresenter.java"


# static fields
.field public static final blacklist DEVICE_DEFAULT_TEXT_TOAST_LAYOUT:I = 0x109018a

.field private static final blacklist LONG_DURATION_TIMEOUT:J = 0x1b58L

.field private static final blacklist MAX_FONT_SCALE:F = 1.3f

.field private static final blacklist SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final blacklist TAG:Ljava/lang/String; = "ToastPresenter"

.field public static final blacklist TEXT_TOAST_LAYOUT:I = 0x10901b7

.field public static final blacklist TEXT_TOAST_LAYOUT_WITH_ICON:I = 0x10901b8

.field private static final blacklist WINDOW_TITLE:Ljava/lang/String; = "Toast"

.field static final blacklist localLOGV:Z


# instance fields
.field private final blacklist mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContextPackageName:Ljava/lang/String;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/ToastPresenter;->localLOGV:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iput-object p4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    return-void
.end method

.method private blacklist addToastView()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, " in "

    const-string v3, "ToastPresenter"

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE! "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    sget-boolean v1, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD! "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show toast from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " on display it was scheduled on."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while attempting to show toast from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private blacklist adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V
    .locals 5

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-static {p4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v4, 0x70

    if-ne v2, v4, :cond_1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_1
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p7, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput p8, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mContextPackageName:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    nop

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    const-wide/16 v2, 0x1b58

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa0

    :goto_0
    iput-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz p9, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v3, 0x1030004

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_3
    return-void
.end method

.method private blacklist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    const-string v2, "Toast"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x98

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/widget/ToastPresenter;->setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method public static blacklist getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200ef

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109018a

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10901b7

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050556

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/widget/ToastPresenter;->semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-object v0
.end method

.method public static blacklist getTextToastViewWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10901b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method private blacklist getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isCrossUserPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static blacklist semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float v2, p2

    div-float/2addr v2, v0

    const/4 v3, 0x0

    mul-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private blacklist semGetAdjustedYoffset(II)I
    .locals 9

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v2, 0x10505ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v2, p2

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-string v5, "fingerprint"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050550

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v6

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v8

    if-ne v8, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v5, v4

    :cond_1
    if-eqz v5, :cond_2

    if-lez v6, :cond_2

    if-ne v1, p2, :cond_2

    if-ne v0, p1, :cond_2

    add-int v4, v6, v7

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->semGetNavigationBarHeight()I

    move-result v8

    sub-int v2, v4, v8

    :cond_2
    return v2
.end method

.method private blacklist semGetFocusedDisplayId()I
    .locals 4

    const/4 v0, 0x0

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

    const-string v2, "ToastPresenter"

    const-string v3, "Unable to get focusedDisplayId"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private blacklist semGetNavigationBarHeight()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private blacklist semGetSipHeight()I
    .locals 6

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    iget v5, v3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    return v4
.end method

.method private blacklist semPrintDebugMessage(Landroid/view/View;)V
    .locals 9

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v2, 0x1

    int-to-char v2, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, " in "

    const-string v6, "Text: "

    const-string v7, "ToastPresenter"

    const/4 v8, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v1, v8, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v8, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/ToastPresenter;->isCrossUserPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist hide(Landroid/app/ITransientNotificationCallback;)V
    .locals 5

    const-string v0, "ToastPresenter"

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "No toast to hide."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ToastPresenter;->getWindowManager(Landroid/view/View;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finishing toast window token from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/app/ITransientNotificationCallback;->onToastHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to notify onToastHide()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V

    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V
    .locals 17

    move-object/from16 v11, p0

    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Only one toast at a time is allowed, call hide() first."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    move-object/from16 v12, p1

    iput-object v12, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    move-object/from16 v13, p2

    iput-object v13, v11, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iget-object v3, v11, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    move v15, v0

    goto :goto_1

    :cond_2
    move v15, v0

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/ToastPresenter;->semGetFocusedDisplayId()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, v11, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050557

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_3
    move/from16 v0, p7

    :goto_2
    const-string v10, "ToastPresenter"

    if-nez v15, :cond_4

    move/from16 v9, p5

    invoke-direct {v11, v9, v0}, Landroid/widget/ToastPresenter;->semGetAdjustedYoffset(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v0

    goto :goto_3

    :cond_4
    move/from16 v9, p5

    move/from16 v16, v0

    :goto_3
    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {v11, v0}, Landroid/widget/ToastPresenter;->semPrintDebugMessage(Landroid/view/View;)V

    iget-object v2, v11, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v12, v10

    move/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Landroid/widget/ToastPresenter;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/ToastPresenter;->addToastView()V

    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v1, v11, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/widget/ToastPresenter;->trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V

    if-eqz p10, :cond_5

    :try_start_0
    invoke-interface/range {p10 .. p10}, Landroid/app/ITransientNotificationCallback;->onToastShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to notify onToastShow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void
.end method

.method public blacklist trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManagerService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    return-void

    :cond_1
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    const-class v3, Landroid/widget/Toast;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    return-void
.end method

.method public blacklist updateLayoutParams(IIFFI)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Toast must be showing to update its layout parameters."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {p5, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
