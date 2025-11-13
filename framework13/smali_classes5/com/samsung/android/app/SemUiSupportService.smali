.class public Lcom/samsung/android/app/SemUiSupportService;
.super Landroid/app/Service;
.source "SemUiSupportService.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemUiSupportService"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mDecor:Landroid/view/View;

.field private blacklist mWindow:Landroid/view/Window;

.field private blacklist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist removeDecorView()V
    .locals 3

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already remove this view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemUiSupportService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void
.end method

.method public whitelist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 365
    const-string v0, "SemUiSupportService"

    const-string v1, "createLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v0, 0x7d2

    .line 370
    .local v0, "windowType":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 377
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 378
    const/16 v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 381
    return-object v1
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    nop

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 488
    :goto_0
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 336
    const-string v0, "SemUiSupportService"

    const-string v1, "getWindowAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 728
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 722
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 665
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onContentChanged()V
    .locals 0

    .line 644
    return-void
.end method

.method public whitelist onCreate()V
    .locals 5

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemUiSupportService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    .line 99
    iput-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 105
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 106
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded theme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Failed to get running tasks."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 115
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 120
    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemUiSupportService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 676
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 443
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopService()V

    .line 445
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 688
    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested()Z
    .locals 1

    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 154
    const-string v0, "SemUiSupportService"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    .line 163
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 167
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    .line 174
    .end local v0    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 633
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 654
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 273
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void
.end method

.method public whitelist setWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .line 351
    const-string v0, "SemUiSupportService"

    const-string/jumbo v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 353
    return-void
.end method

.method public blacklist stopService()V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    .line 227
    return-void
.end method

.method public whitelist stopUiSupportService()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    .line 237
    return-void
.end method
