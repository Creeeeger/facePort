.class public Landroid/widget/ToastPresenter;
.super Ljava/lang/Object;
.source "ToastPresenter.java"


# static fields
.field public static final blacklist DEVICE_DEFAULT_TEXT_TOAST_LAYOUT:I = 0x109017f

.field private static final blacklist LONG_DURATION_TIMEOUT:J = 0x1b58L

.field private static final blacklist MAX_FONT_SCALE:F = 1.2f

.field private static final blacklist SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final blacklist TAG:Ljava/lang/String; = "ToastPresenter"

.field public static final blacklist TEXT_TOAST_LAYOUT:I = 0x10901ae

.field private static final blacklist WINDOW_TITLE:Ljava/lang/String; = "Toast"

.field static final blacklist localLOGV:Z


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/ToastPresenter;->localLOGV:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessibilityManager"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "notificationManager"    # Landroid/app/INotificationManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    .line 128
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    .line 129
    iput-object p3, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    .line 130
    iput-object p4, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 132
    invoke-direct {p0}, Landroid/widget/ToastPresenter;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 133
    return-void
.end method

.method private blacklist addToastView()V
    .locals 4

    .line 368
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, " in "

    const-string v2, "ToastPresenter"

    if-eqz v0, :cond_1

    .line 369
    sget-boolean v0, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE! "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 372
    :cond_1
    sget-boolean v0, Landroid/widget/ToastPresenter;->localLOGV:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD! "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while attempting to show toast from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 384
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;IIIIFFZ)V
    .locals 5
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # I
    .param p4, "gravity"    # I
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I
    .param p7, "horizontalMargin"    # F
    .param p8, "verticalMargin"    # F
    .param p9, "removeWindowAnimations"    # Z

    .line 187
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-static {p4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 189
    .local v1, "absGravity":I
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 190
    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 191
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 193
    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v4, 0x70

    if-ne v2, v4, :cond_1

    .line 194
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 196
    :cond_1
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 198
    iput p7, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 199
    iput p8, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 200
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 201
    nop

    .line 202
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    const-wide/16 v2, 0x1b58

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa0

    :goto_0
    iput-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 203
    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 205
    if-eqz p9, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v3, 0x1030004

    if-ne v2, v3, :cond_3

    .line 206
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 208
    :cond_3
    return-void
.end method

.method private blacklist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 165
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 166
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 167
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 169
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 170
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 172
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 176
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/widget/ToastPresenter;->setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 177
    return-object v0
.end method

.method public static blacklist getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

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

    .line 97
    .local v2, "isDeviceDefault":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109017f

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10901ae

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    :goto_1
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10504bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/widget/ToastPresenter;->semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 111
    return-object v0
.end method

.method private blacklist isCrossUserPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x107012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static blacklist semCheckMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 474
    .local v0, "currentFontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 475
    int-to-float v2, p2

    div-float/2addr v2, v0

    .line 476
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private blacklist semGetAdjustedYoffset(II)I
    .locals 12
    .param p1, "gravity"    # I
    .param p2, "yOffset"    # I

    .line 400
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 401
    .local v0, "defaultGravity":I
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    const v2, 0x105050f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 402
    .local v1, "defaultOffsetY":I
    const/4 v2, 0x0

    .line 403
    .local v2, "checkReuse":Z
    const/4 v3, 0x0

    .line 404
    .local v3, "sipHeight":I
    move v4, p2

    .line 406
    .local v4, "adjustedYOffset":I
    iget-object v5, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    const-class v6, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 407
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_0

    if-ne v0, p1, :cond_0

    .line 409
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ToastPresenter;->semGetSipHeight()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 412
    goto :goto_0

    .line 410
    :catch_0
    move-exception v6

    .line 411
    .local v6, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 413
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sipHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ToastPresenter"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    const/4 v6, 0x2

    if-lez v3, :cond_2

    .line 416
    iget-object v7, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_1

    .line 417
    iget-object v6, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10504b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 419
    .local v6, "sipMargin":I
    add-int v4, v3, v6

    .line 420
    .end local v6    # "sipMargin":I
    goto :goto_2

    .line 421
    :cond_1
    add-int v4, v3, p2

    goto :goto_2

    .line 424
    :cond_2
    iget-object v7, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    .line 425
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v6, :cond_5

    .line 426
    iget-object v7, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    .line 427
    .local v7, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v8, 0x0

    .line 428
    .local v8, "isFingerPrintInDisplay":Z
    const/4 v9, 0x0

    .line 429
    .local v9, "fingerIconHeight":I
    iget-object v10, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10504b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 431
    .local v10, "mFingerOffsetY":I
    if-eqz v7, :cond_4

    .line 432
    invoke-virtual {v7}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result v9

    .line 433
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v11

    if-ne v11, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    move v8, v6

    .line 435
    :cond_4
    if-eqz v8, :cond_5

    if-lez v9, :cond_5

    if-ne v1, p2, :cond_5

    if-ne v0, p1, :cond_5

    .line 436
    add-int v6, v9, v10

    invoke-direct {p0}, Landroid/widget/ToastPresenter;->semGetNavigationBarHeight()I

    move-result v11

    sub-int v4, v6, v11

    .line 441
    .end local v7    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v8    # "isFingerPrintInDisplay":Z
    .end local v9    # "fingerIconHeight":I
    .end local v10    # "mFingerOffsetY":I
    :cond_5
    :goto_2
    return v4
.end method

.method private blacklist semGetNavigationBarHeight()I
    .locals 4

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "navigationBarHeight":I
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 392
    .local v1, "hasNavigationBar":Z
    if-eqz v1, :cond_0

    .line 393
    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    :cond_0
    return v0
.end method

.method private blacklist semGetSipHeight()I
    .locals 5

    .line 465
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 466
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 467
    .local v1, "imeInset":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 468
    .local v2, "navibarInset":Landroid/graphics/Insets;
    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v3, v4

    return v3
.end method

.method private blacklist semPrintDebugMessage(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 447
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "logView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 449
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 450
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 451
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 452
    .local v2, "firstChar":C
    add-int/lit8 v3, v2, 0x1

    int-to-char v2, v3

    .line 453
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, " in "

    const-string v6, "Text: "

    const-string v7, "ToastPresenter"

    const/4 v8, 0x1

    if-le v3, v4, :cond_0

    .line 454
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

    .line 457
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

    .line 462
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "firstChar":C
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setShowForAllUsersIfApplicable(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p2}, Landroid/widget/ToastPresenter;->isCrossUserPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/16 v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist hide(Landroid/app/ITransientNotificationCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/ITransientNotificationCallback;

    .line 314
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "No toast to hide."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 316
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "ToastPresenter"

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    .line 319
    :cond_1
    const-string/jumbo v0, "mView.getParent() is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/INotificationManager;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finishing toast window token from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz p1, :cond_2

    .line 329
    :try_start_1
    invoke-interface {p1}, Landroid/app/ITransientNotificationCallback;->onToastHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    goto :goto_3

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to notify onToastHide()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    .line 335
    iput-object v0, p0, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    .line 336
    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # I
    .param p5, "gravity"    # I
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "horizontalMargin"    # F
    .param p9, "verticalMargin"    # F
    .param p10, "callback"    # Landroid/app/ITransientNotificationCallback;

    .line 259
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

    .line 261
    return-void
.end method

.method public blacklist show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;Z)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # I
    .param p5, "gravity"    # I
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "horizontalMargin"    # F
    .param p9, "verticalMargin"    # F
    .param p10, "callback"    # Landroid/app/ITransientNotificationCallback;
    .param p11, "removeWindowAnimations"    # Z

    .line 270
    move-object/from16 v11, p0

    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Only one toast at a time is allowed, call hide() first."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 271
    move-object/from16 v12, p1

    iput-object v12, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    .line 272
    move-object/from16 v13, p2

    iput-object v13, v11, Landroid/widget/ToastPresenter;->mToken:Landroid/os/IBinder;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "isDeskTopMode":Z
    iget-object v3, v11, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 279
    .local v14, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v14, :cond_2

    .line 280
    invoke-virtual {v14}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    .line 281
    .local v3, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    move v15, v0

    goto :goto_2

    .line 279
    .end local v3    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_2
    move v15, v0

    .line 284
    .end local v0    # "isDeskTopMode":Z
    .local v15, "isDeskTopMode":Z
    :goto_2
    const-string v10, "ToastPresenter"

    if-nez v15, :cond_3

    .line 285
    move/from16 v9, p5

    move/from16 v0, p7

    invoke-direct {v11, v9, v0}, Landroid/widget/ToastPresenter;->semGetAdjustedYoffset(II)I

    move-result v0

    .line 286
    .end local p7    # "yOffset":I
    .local v0, "yOffset":I
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

    .line 284
    .end local v0    # "yOffset":I
    .restart local p7    # "yOffset":I
    :cond_3
    move/from16 v9, p5

    move/from16 v0, p7

    move/from16 v16, v0

    .line 289
    .end local p7    # "yOffset":I
    .local v16, "yOffset":I
    :goto_3
    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    invoke-direct {v11, v0}, Landroid/widget/ToastPresenter;->semPrintDebugMessage(Landroid/view/View;)V

    .line 292
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

    .line 295
    invoke-direct/range {p0 .. p0}, Landroid/widget/ToastPresenter;->addToastView()V

    .line 296
    iget-object v0, v11, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v1, v11, Landroid/widget/ToastPresenter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/widget/ToastPresenter;->trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 297
    if-eqz p10, :cond_4

    .line 299
    :try_start_0
    invoke-interface/range {p10 .. p10}, Landroid/app/ITransientNotificationCallback;->onToastShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_4

    .line 300
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_4
    return-void
.end method

.method public blacklist trySendAccessibilityEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 349
    new-instance v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/widget/ToastPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 350
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    .line 351
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 353
    return-void

    .line 355
    :cond_0
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 357
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v2, Landroid/widget/Toast;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 360
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 364
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 365
    return-void
.end method

.method public blacklist updateLayoutParams(IIFFI)V
    .locals 3
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "horizontalMargin"    # F
    .param p4, "verticalMargin"    # F
    .param p5, "gravity"    # I

    .line 216
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Toast must be showing to update its layout parameters."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/widget/ToastPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 218
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {p5, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 220
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 221
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 222
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 223
    iget-object v1, p0, Landroid/widget/ToastPresenter;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ToastPresenter;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void
.end method
