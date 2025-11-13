.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-p CANCEL:I = 0x44

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ANCHORED_GRAVITY:I = 0x33

.field private static final greylist-max-o DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final blacklist DIALOG_POP_OVER_DARK_DIM_AMOUNT:F = 0.65f

.field private static final blacklist DIALOG_POP_OVER_DIM_AMOUNT:F = 0.18f

.field private static final blacklist DIALOG_POP_OVER_ELEVATION:F = 8.0f

.field private static final blacklist DIALOG_REDUCE_TRANSPARENCY_DIM_AMOUNT:F = 0.35f

.field private static final greylist-max-o DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final greylist-max-o DISMISS:I = 0x43

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_NAME:Ljava/lang/String; = "SamsungBasicInteraction"

.field private static final blacklist SAMSUNG_BASIC_INTERACTION_METADATA_VALUE:Ljava/lang/String; = "SEP10"

.field public static final whitelist SEM_ANCHOR_TYPE_DEFAULT:I = 0x0

.field public static final whitelist SEM_ANCHOR_TYPE_TOOLBAR:I = 0x1

.field private static final greylist-max-o SHOW:I = 0x45

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Dialog"

.field private static final blacklist UNPOSITIONED_DIALOG:I = -0x1

.field protected static blacklist mIsDarkActionBar:Z


# instance fields
.field private greylist-max-o mActionBar:Landroid/app/ActionBar;

.field private greylist-max-o mActionMode:Landroid/view/ActionMode;

.field private greylist-max-o mActionModeTypeStarting:I

.field private blacklist mAnchorType:I

.field private blacklist mAnchorView:Landroid/view/View;

.field private greylist-max-o mCancelAndDismissTaken:Ljava/lang/String;

.field private greylist mCancelMessage:Landroid/os/Message;

.field protected greylist-max-o mCancelable:Z

.field private greylist-max-o mCanceled:Z

.field final greylist mContext:Landroid/content/Context;

.field private greylist-max-o mCreated:Z

.field greylist-max-o mDecor:Landroid/view/View;

.field private blacklist mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private final greylist-max-o mDismissAction:Ljava/lang/Runnable;

.field private greylist mDismissMessage:Landroid/os/Message;

.field private blacklist mDismissOverride:Ljava/lang/Runnable;

.field private final greylist-max-p mHandler:Landroid/os/Handler;

.field private blacklist mHasFocus:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mIsDeviceDefaultDark:Z

.field private blacklist mIsSamsungBasicInteraction:Z

.field private final greylist mListenersHandler:Landroid/os/Handler;

.field private blacklist mNeedToUpdate:Z

.field private greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final blacklist mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private greylist mOwnerActivity:Landroid/app/Activity;

.field private blacklist mRootView:Landroid/view/View;

.field private blacklist mRootViewOrientation:I

.field private blacklist mRootViewSwWidthDp:I

.field private greylist-max-o mSearchEvent:Landroid/view/SearchEvent;

.field private greylist mShowMessage:Landroid/os/Message;

.field private greylist mShowing:Z

.field final greylist mWindow:Landroid/view/Window;

.field private final greylist-max-o mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/Dialog;->mIsDarkActionBar:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 270
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 289
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;IZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 292
    const-string v0, "SEP10"

    const-string v1, "SamsungBasicInteraction"

    const-string v2, "Dialog"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/app/Dialog;->mCreated:Z

    .line 175
    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    .line 177
    iput-boolean v4, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 179
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 194
    iput v4, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 196
    new-instance v5, Landroid/app/Dialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    iput-object v5, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 209
    iput-boolean v4, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 217
    iput-boolean v4, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    .line 231
    iput v4, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    .line 232
    iput v4, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    .line 235
    new-instance v5, Landroid/app/Dialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    iput-object v5, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 293
    if-eqz p3, :cond_1

    .line 294
    if-nez p2, :cond_0

    .line 295
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 296
    .local v5, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010308

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 297
    iget p2, v5, Landroid/util/TypedValue;->resourceId:I

    .line 299
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 301
    :cond_1
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 304
    :goto_0
    const-string/jumbo v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 306
    new-instance v6, Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 307
    .local v6, "w":Landroid/view/Window;
    iput-object v6, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 308
    invoke-virtual {v6, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 309
    invoke-virtual {v6, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 310
    new-instance v7, Landroid/app/Dialog$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V

    .line 315
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 316
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/view/Window;->setGravity(I)V

    .line 320
    :try_start_0
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 320
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 322
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 323
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "data":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 326
    :catch_0
    move-exception v5

    .line 327
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exceptioin!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    .line 330
    .local v5, "isMetaDataInActivity":Z
    invoke-direct {p0, p1}, Landroid/app/Dialog;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v7

    .line 331
    .local v7, "activity":Landroid/app/Activity;
    if-eqz v7, :cond_3

    .line 332
    invoke-virtual {v7}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 333
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_3

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_3

    .line 334
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 341
    .end local v1    # "data":Ljava/lang/String;
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 342
    .local v0, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v8, 0x11200b9

    invoke-virtual {v1, v8, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    iget v1, v0, Landroid/util/TypedValue;->data:I

    const/16 v8, 0x50

    if-eqz v1, :cond_5

    .line 344
    iput-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    .line 345
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 346
    .local v1, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11200ba

    invoke-virtual {v9, v10, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 347
    iget v9, v1, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    .line 348
    sget-boolean v3, Landroid/app/Dialog;->mIsDarkActionBar:Z

    if-nez v3, :cond_5

    .line 349
    invoke-virtual {v6, v8}, Landroid/view/Window;->setGravity(I)V

    .line 352
    .end local v1    # "colorValue":Landroid/util/TypedValue;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsDeviceDefault = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsSamsungBasicInteraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isMetaDataInActivity = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v1, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    if-nez v1, :cond_6

    if-eqz v5, :cond_7

    .line 354
    :cond_6
    invoke-virtual {v6, v8}, Landroid/view/Window;->setGravity(I)V

    .line 357
    :cond_7
    new-instance v1, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v1, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 374
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 375
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 376
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 377
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 368
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 369
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 370
    return-void
.end method

.method private blacklist alignToAnchor()V
    .locals 16

    .line 615
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 616
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 618
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    const-string v4, "Dialog"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const v3, 0x1110221

    .line 619
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 620
    :cond_1
    const-string v3, "AnchorView is null state or not on Large Screen"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v3, 0x51

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 622
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 623
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 624
    iget-object v3, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 625
    return-void

    .line 628
    :cond_2
    iget-boolean v6, v0, Landroid/app/Dialog;->mNeedToUpdate:Z

    if-nez v6, :cond_3

    .line 629
    return-void

    .line 632
    :cond_3
    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 633
    .local v7, "screenPos":[I
    new-array v8, v6, [I

    .line 635
    .local v8, "windowPos":[I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 636
    .local v3, "width":I
    iget-object v9, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 638
    .local v9, "height":I
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 639
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 642
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_4

    aget v10, v7, v5

    if-gtz v10, :cond_4

    aget v10, v8, v5

    if-gtz v10, :cond_4

    aget v10, v7, v11

    if-gtz v10, :cond_4

    aget v10, v8, v11

    if-gtz v10, :cond_4

    .line 644
    const-string v5, "AnchorView position is invalid, so do not update position"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x5

    if-eq v10, v12, :cond_6

    .line 649
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x3

    if-eq v10, v12, :cond_6

    .line 650
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_5

    goto :goto_0

    :cond_5
    move v10, v5

    goto :goto_1

    :cond_6
    :goto_0
    move v10, v11

    .line 652
    .local v10, "isMultiWindowMode":Z
    :goto_1
    const v12, 0x10504cc

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 653
    .local v12, "statusBarHeight":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v13

    iget-object v14, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v13

    .line 655
    .local v13, "appView":Landroid/view/View;
    if-nez v13, :cond_8

    .line 656
    iget-object v14, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v14

    .line 657
    .local v14, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_7

    .line 658
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v13

    goto :goto_2

    .line 660
    :cond_7
    const-string v15, "Cannot find app view"

    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_8
    :goto_2
    if-eqz v13, :cond_9

    .line 665
    invoke-virtual {v13}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v14

    .line 666
    .local v14, "insets":Landroid/view/WindowInsets;
    if-eqz v14, :cond_9

    .line 667
    invoke-virtual {v14}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v12

    .line 668
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "top inset = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v14    # "insets":Landroid/view/WindowInsets;
    :cond_9
    if-nez v10, :cond_a

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 673
    :cond_a
    if-eqz v10, :cond_b

    aget v4, v7, v11

    aget v6, v8, v11

    if-eq v4, v6, :cond_b

    .line 674
    const/4 v12, 0x0

    .line 676
    :cond_b
    aget v4, v8, v5

    aput v4, v7, v5

    .line 677
    aget v4, v8, v11

    aput v4, v7, v11

    .line 680
    :cond_c
    iget v4, v0, Landroid/app/Dialog;->mAnchorType:I

    if-ne v4, v11, :cond_e

    .line 681
    const v4, 0x105034d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 682
    .local v4, "actionButtonWidth":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_d

    .line 683
    aget v6, v7, v5

    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    aput v6, v7, v5

    .line 685
    :cond_d
    move v3, v4

    .line 688
    .end local v4    # "actionButtonWidth":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/app/Dialog;->semGetDialogWidth()I

    move-result v4

    .line 689
    .local v4, "dialogWidth":I
    sub-int v6, v4, v3

    const/4 v14, 0x2

    div-int/2addr v6, v14

    .line 691
    .local v6, "xOffset":I
    const/16 v14, 0x33

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 692
    aget v14, v7, v5

    sub-int/2addr v14, v6

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 693
    aget v11, v7, v11

    add-int/2addr v11, v9

    sub-int/2addr v11, v12

    const v14, 0x10503cc

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v11, v14

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 694
    iget-object v11, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 695
    iput-boolean v5, v0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 696
    return-void
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1933
    const/4 v0, 0x0

    .line 1934
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 1935
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1937
    .local v2, "count":I
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 1938
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1939
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 1941
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    .line 1942
    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    .line 1944
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1946
    :cond_2
    return-object v0
.end method

.method private greylist-max-o getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .line 1658
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1659
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1660
    .local v1, "context":Landroid/content/Context;
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1661
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1662
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1664
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 1665
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    .line 1666
    :cond_1
    nop

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 1669
    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method private blacklist isNeedToUpdateAttributes(Landroid/view/View;)Z
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "needToUpdate":Z
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 597
    .local v1, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 599
    .local v2, "smallestScreenWidthDp":I
    iget v3, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    if-eq v1, v3, :cond_0

    .line 600
    iput v1, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    .line 601
    const/4 v0, 0x1

    .line 603
    :cond_0
    iget v3, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    if-eq v2, v3, :cond_1

    .line 604
    iput v2, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    .line 605
    const/4 v0, 0x1

    .line 607
    :cond_1
    if-eqz v0, :cond_2

    .line 608
    const-string v3, "Dialog"

    const-string v4, "Dialog LayoutParams update is needed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    return v0
.end method

.method private blacklist semGetDialogWidth()I
    .locals 10

    .line 729
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 730
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 731
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 730
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 732
    .local v1, "dlgWidth":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 733
    .local v2, "isPortrait":Z
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 735
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 736
    .local v5, "minWidth":Landroid/util/TypedValue;
    if-eqz v2, :cond_1

    .line 737
    iget-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010357

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_1

    .line 739
    :cond_1
    iget-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010356

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 742
    :goto_1
    const/4 v6, 0x0

    .line 743
    .local v6, "min":I
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v7, v9, :cond_2

    .line 744
    invoke-virtual {v5, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v6, v7

    goto :goto_2

    .line 745
    :cond_2
    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v8, :cond_3

    .line 746
    invoke-virtual {v5, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v6, v7

    .line 749
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    .line 750
    const v7, 0x1050390

    invoke-virtual {v0, v7, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 751
    iget v3, v5, Landroid/util/TypedValue;->type:I

    if-ne v3, v9, :cond_4

    .line 752
    invoke-virtual {v5, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v6, v3

    goto :goto_3

    .line 753
    :cond_4
    iget v3, v5, Landroid/util/TypedValue;->type:I

    if-ne v3, v8, :cond_5

    .line 754
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    invoke-virtual {v5, v3, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    float-to-int v6, v3

    .line 758
    :cond_5
    :goto_3
    return v6
.end method

.method private greylist-max-o sendDismissMessage()V
    .locals 1

    .line 824
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 826
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 828
    :cond_0
    return-void
.end method

.method private greylist-max-o sendShowMessage()V
    .locals 1

    .line 831
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 833
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 835
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1036
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    return-void
.end method

.method public whitelist cancel()V
    .locals 2

    .line 1766
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1767
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1769
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1771
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1772
    return-void
.end method

.method public whitelist closeOptionsMenu()V
    .locals 2

    .line 1516
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 1519
    :cond_0
    return-void
.end method

.method public whitelist create()V
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 440
    :cond_0
    return-void
.end method

.method public whitelist dismiss()V
    .locals 2

    .line 780
    iget-object v0, p0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 785
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 786
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 787
    return-void

    .line 790
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 791
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    :goto_0
    return-void
.end method

.method greylist dismissDialog()V
    .locals 4

    .line 799
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 809
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    iget-object v2, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 812
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 814
    :cond_2
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 815
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 816
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 817
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 819
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 820
    nop

    .line 821
    return-void

    .line 811
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    .line 812
    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 814
    :cond_3
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 815
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 816
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 817
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 819
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 820
    throw v2

    .line 800
    :cond_4
    :goto_0
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1387
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    const/4 v0, 0x1

    return v0

    .line 1390
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1293
    iget-object v0, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    return v1

    .line 1296
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    return v1

    .line 1299
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1300
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1299
    :goto_0
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1314
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    const/4 v0, 0x1

    return v0

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 840
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 844
    :cond_0
    return-void
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1398
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1399
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1401
    .local v1, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1403
    return v2
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1332
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const/4 v0, 0x1

    return v0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1354
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1369
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const/4 v0, 0x1

    return v0

    .line 1372
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getDialogFocus()Z
    .locals 1

    .line 1257
    iget-boolean v0, p0, Landroid/app/Dialog;->mHasFocus:Z

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1733
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 1

    .line 1928
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .line 1607
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final whitelist getVolumeControlStream()I
    .locals 1

    .line 1889
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    .line 934
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist hide()V
    .locals 2

    .line 766
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 767
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_0
    return-void
.end method

.method public whitelist invalidateOptionsMenu()V
    .locals 2

    .line 1525
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 1528
    :cond_0
    return-void
.end method

.method public whitelist isShowing()Z
    .locals 2

    .line 427
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method synthetic blacklist lambda$new$0$android-app-Dialog(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 237
    invoke-direct {p0, p1}, Landroid/app/Dialog;->isNeedToUpdateAttributes(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 238
    invoke-direct {p0}, Landroid/app/Dialog;->alignToAnchor()V

    .line 239
    return-void
.end method

.method synthetic blacklist lambda$new$1$android-app-Dialog()V
    .locals 1

    .line 311
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 314
    :cond_0
    return-void
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1649
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1650
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1652
    :cond_0
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1637
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1638
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 1270
    return-void
.end method

.method public whitelist onBackPressed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 1155
    :cond_0
    return-void
.end method

.method public whitelist onContentChanged()V
    .locals 0

    .line 1246
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1562
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1569
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 855
    return-void
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1535
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1475
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1419
    if-nez p1, :cond_0

    .line 1420
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1423
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 1411
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 1274
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1073
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1075
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1103
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    .line 1104
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1106
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 1108
    const/4 v0, 0x1

    return v0

    .line 1110
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1453
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1442
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 1443
    iget-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1445
    :cond_0
    return v0
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1501
    return-void
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1461
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1462
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1464
    :cond_0
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1487
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 1431
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1432
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1434
    :cond_1
    return v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 913
    const-string v0, "android:dialogHierarchy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 914
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 916
    return-void

    .line 918
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 919
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 920
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 923
    :cond_1
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 895
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/app/Dialog;->mShowing:Z

    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 896
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:dialogHierarchy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 899
    :cond_0
    return-object v0
.end method

.method public whitelist onSearchRequested()Z
    .locals 8

    .line 1585
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1586
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1589
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v7

    .line 1590
    .local v7, "appName":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1591
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1592
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1593
    const/4 v1, 0x1

    return v1

    .line 1595
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 1576
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1577
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected whitelist onStart()V
    .locals 3

    .line 861
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 863
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    new-instance v0, Landroid/app/Dialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 866
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 870
    :cond_1
    return-void
.end method

.method protected whitelist onStop()V
    .locals 2

    .line 876
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 877
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 880
    :cond_1
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1182
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 1184
    const/4 v0, 0x1

    return v0

    .line 1187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1205
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1239
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v1, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    :cond_0
    return-void
.end method

.method public greylist-max-o onWindowDismissed(ZZ)V
    .locals 0
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 1279
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1280
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 1264
    iput-boolean p1, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 1266
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1612
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v1, :cond_0

    .line 1613
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1615
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1621
    const/4 v0, 0x0

    :try_start_0
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1622
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1622
    return-object v1

    .line 1624
    :catchall_0
    move-exception v1

    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1625
    throw v1
.end method

.method public whitelist openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1555
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1556
    return-void
.end method

.method public whitelist openOptionsMenu()V
    .locals 3

    .line 1507
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 1510
    :cond_0
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1541
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1542
    return-void
.end method

.method public final whitelist requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 1697
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 988
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 992
    return-object v0

    .line 990
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist semSetAnchor(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 708
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 709
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x1110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetAnchor set x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dialog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0}, Landroid/app/Dialog;->semGetDialogWidth()I

    move-result v1

    .line 713
    .local v1, "dialogWidth":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const v2, 0x10504cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 716
    .local v2, "statusBarHeight":I
    :goto_0
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 717
    .local v3, "l":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 718
    div-int/lit8 v4, v1, 0x2

    sub-int v4, p1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 719
    sub-int v4, p2, v2

    const v5, 0x10503cc

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 720
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 722
    .end local v1    # "dialogWidth":I
    .end local v2    # "statusBarHeight":I
    .end local v3    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method public whitelist semSetAnchor(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 565
    return-void
.end method

.method public whitelist semSetAnchor(Landroid/view/View;I)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "anchorType"    # I

    .line 578
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetAnchor anchorView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , anchorType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-object p1, p0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    .line 582
    iput p2, p0, Landroid/app/Dialog;->mAnchorType:I

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    .line 585
    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 587
    iget-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/Dialog;->isNeedToUpdateAttributes(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 590
    :cond_1
    invoke-direct {p0}, Landroid/app/Dialog;->alignToAnchor()V

    .line 592
    :cond_2
    return-void
.end method

.method public whitelist setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1804
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1805
    return-void
.end method

.method public whitelist setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1741
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1742
    return-void
.end method

.method public whitelist setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 1753
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_0

    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1757
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1758
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 1002
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 1003
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1013
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1014
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1025
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    return-void
.end method

.method public whitelist setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1841
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1842
    return-void
.end method

.method public blacklist setDismissOverride(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "override"    # Ljava/lang/Runnable;

    .line 1856
    iput-object p1, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    .line 1857
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1721
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1722
    return-void
.end method

.method public final whitelist setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1729
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1730
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1705
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1706
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1713
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1714
    return-void
.end method

.method public whitelist setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 1786
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1791
    if-eqz p1, :cond_0

    .line 1792
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0

    .line 1794
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1796
    :goto_0
    return-void

    .line 1787
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1812
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1817
    if-eqz p1, :cond_0

    .line 1818
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0

    .line 1820
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1822
    :goto_0
    return-void

    .line 1813
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 1896
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1897
    return-void
.end method

.method public whitelist setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 1829
    if-eqz p1, :cond_0

    .line 1830
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0

    .line 1832
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1834
    :goto_0
    return-void
.end method

.method public final whitelist setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 406
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 408
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 409
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .line 1056
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1057
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1045
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1047
    return-void
.end method

.method public final whitelist setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .line 1882
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1883
    return-void
.end method

.method public whitelist show()V
    .locals 12

    .line 449
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 454
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :cond_1
    return-void

    .line 459
    :cond_2
    iput-boolean v2, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 461
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_3

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 467
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 470
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 471
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 473
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 475
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 476
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 477
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 480
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 481
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 482
    .local v1, "restoreSoftInputMode":Z
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_5

    .line 484
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 486
    const/4 v1, 0x1

    .line 490
    :cond_5
    iget-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    .line 492
    const/4 v3, 0x0

    .line 494
    .local v3, "isGlobalAction":Z
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110221

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 495
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 496
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    if-eqz v2, :cond_6

    const v2, 0x3f266666    # 0.65f

    goto :goto_1

    :cond_6
    const v2, 0x3e3851ec    # 0.18f

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .line 499
    :cond_7
    iget-boolean v5, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    if-nez v5, :cond_9

    .line 500
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_reduce_transparency"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_8

    move v2, v4

    .line 503
    .local v2, "isReduceTransparency":Z
    :cond_8
    if-eqz v2, :cond_9

    .line 504
    const v5, 0x3eb33333    # 0.35f

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 509
    .end local v2    # "isReduceTransparency":Z
    :cond_9
    :goto_2
    instance-of v2, p0, Landroid/app/ProgressDialog;

    if-eqz v2, :cond_a

    .line 510
    move-object v2, p0

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getCurrentProgressStyle()I

    move-result v2

    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_a

    .line 511
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050535

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 512
    .local v2, "dialogBaseSize":I
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 513
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 517
    .end local v2    # "dialogBaseSize":I
    :cond_a
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0175

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 521
    .end local v3    # "isGlobalAction":Z
    :cond_b
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    if-eqz v2, :cond_c

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 528
    :cond_c
    if-eqz v1, :cond_d

    .line 529
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 535
    :cond_d
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    if-eqz v2, :cond_e

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v2, :cond_e

    .line 536
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080b94

    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 537
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 536
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 539
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 540
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iget-object v5, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 541
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10503ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 543
    .local v3, "bottomInset":I
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, v2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 544
    .local v5, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    iget-object v6, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 550
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottomInset":I
    .end local v5    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    :cond_e
    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    .line 552
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 553
    return-void
.end method

.method public greylist-max-o takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1862
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1863
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    goto :goto_0

    .line 1864
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1868
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1869
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1870
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1872
    const/4 v0, 0x1

    return v0

    .line 1865
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .line 1682
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1683
    return-void
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1549
    return-void
.end method
