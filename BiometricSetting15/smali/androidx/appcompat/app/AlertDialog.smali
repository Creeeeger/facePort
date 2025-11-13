.class public final Landroidx/appcompat/app/AlertDialog;
.super Landroid/app/Dialog;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroidx/appcompat/app/AppCompatCallback;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# instance fields
.field public _lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final mAlert:Landroidx/appcompat/app/AlertController;

.field public mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field public final mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

.field public final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field public final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;


# direct methods
.method public static $r8$lambda$qrzmfDOyDuplJFtpJLozn3P9EZI(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f0400b2

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, p2

    .line 27
    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroidx/savedstate/SavedStateRegistryController;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Landroidx/appcompat/app/AlertDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 36
    .line 37
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher;

    .line 38
    .line 39
    new-instance v3, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Landroidx/appcompat/app/AlertDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 48
    .line 49
    new-instance v2, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Landroidx/appcompat/app/AlertDialog;->mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez p2, :cond_1

    .line 61
    .line 62
    new-instance p2, Landroid/util/TypedValue;

    .line 63
    .line 64
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 72
    .line 73
    .line 74
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 75
    .line 76
    :cond_1
    move-object p1, v2

    .line 77
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 78
    .line 79
    iput p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate()V

    .line 82
    .line 83
    .line 84
    new-instance p1, Landroidx/appcompat/app/AlertController;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/view/Window;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 98
    .line 99
    return-void
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f040029

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v1, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, v0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->removeDelegateFromActives(Landroidx/appcompat/app/AppCompatDelegate;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuPosted:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mInvalidatePanelMenuRunnable:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    .line 44
    .line 45
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 46
    .line 47
    const/16 v1, -0x64

    .line 48
    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 52
    .line 53
    instance-of v1, v0, Landroid/app/Activity;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v0, Landroid/app/Activity;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->sLocalNightModes:Landroidx/collection/SimpleArrayMap;

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHost:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoTimeNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->cleanup()V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAutoBatteryNightModeManager:Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;

    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->cleanup()V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mKeyDispatcher:Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AlertDialog;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    return p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/AppCompatCallback;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 15
    .line 16
    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 4
    .line 5
    return-object p0
.end method

.method public final initViewTreeOwners()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<this>"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a01fb

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f0a01fd

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a01fc

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/WindowDecorActionBar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->invalidatePanelMenu(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate$androidx$appcompat$app$AppCompatDialog(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 9
    .line 10
    iget v2, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 16
    .line 17
    const v2, 0x7f0a014f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v2, 0x7f0a01ec

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v4, 0x7f0a008a

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const v6, 0x7f0a006f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const v8, 0x7f0a0091

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/ViewGroup;

    .line 53
    .line 54
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 55
    .line 56
    const/high16 v9, 0x20000

    .line 57
    .line 58
    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 59
    .line 60
    .line 61
    const/16 v8, 0x8

    .line 62
    .line 63
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v2, v3}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v6, v7}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 91
    .line 92
    const v6, 0x7f0a0184

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 110
    .line 111
    .line 112
    const v5, 0x102000b

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 122
    .line 123
    const/4 v7, -0x1

    .line 124
    if-nez v5, :cond_0

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 131
    .line 132
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 138
    .line 139
    if-eqz v5, :cond_1

    .line 140
    .line 141
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Landroid/view/ViewGroup;

    .line 148
    .line 149
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 150
    .line 151
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 156
    .line 157
    .line 158
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 159
    .line 160
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 161
    .line 162
    invoke-direct {v11, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :goto_0
    const v5, 0x1020019

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Landroid/widget/Button;

    .line 180
    .line 181
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 182
    .line 183
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/appcompat/app/AlertController$1;

    .line 184
    .line 185
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    const/4 v11, 0x1

    .line 194
    if-eqz v10, :cond_2

    .line 195
    .line 196
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 197
    .line 198
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    move v10, v6

    .line 202
    goto :goto_1

    .line 203
    :cond_2
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 204
    .line 205
    invoke-virtual {v10, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 209
    .line 210
    invoke-virtual {v10, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    move v10, v11

    .line 214
    :goto_1
    const v12, 0x102001a

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    check-cast v12, Landroid/widget/Button;

    .line 222
    .line 223
    iput-object v12, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 224
    .line 225
    invoke-virtual {v12, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_3

    .line 233
    .line 234
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 235
    .line 236
    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_3
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 241
    .line 242
    invoke-virtual {v12, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 246
    .line 247
    invoke-virtual {v12, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    or-int/2addr v10, v1

    .line 251
    :goto_2
    const v12, 0x102001b

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    check-cast v12, Landroid/widget/Button;

    .line 259
    .line 260
    iput-object v12, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 261
    .line 262
    invoke-virtual {v12, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-eqz v9, :cond_4

    .line 270
    .line 271
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 272
    .line 273
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_4
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 278
    .line 279
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 283
    .line 284
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    or-int/2addr v10, v0

    .line 288
    :goto_3
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    new-instance v12, Landroid/util/TypedValue;

    .line 291
    .line 292
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    const v13, 0x7f040027

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v13, v12, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 303
    .line 304
    .line 305
    iget v9, v12, Landroid/util/TypedValue;->data:I

    .line 306
    .line 307
    if-eqz v9, :cond_7

    .line 308
    .line 309
    const/high16 v9, 0x3f000000    # 0.5f

    .line 310
    .line 311
    if-ne v10, v11, :cond_5

    .line 312
    .line 313
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .line 321
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 322
    .line 323
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 324
    .line 325
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_5
    if-ne v10, v1, :cond_6

    .line 330
    .line 331
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 334
    .line 335
    .line 336
    move-result-object v12

    .line 337
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 338
    .line 339
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 340
    .line 341
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 342
    .line 343
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_6
    if-ne v10, v0, :cond_7

    .line 348
    .line 349
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 350
    .line 351
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 356
    .line 357
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 358
    .line 359
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 360
    .line 361
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_8
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 371
    .line 372
    const v9, 0x7f0a01e8

    .line 373
    .line 374
    .line 375
    if-eqz v0, :cond_9

    .line 376
    .line 377
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 378
    .line 379
    const/4 v10, -0x2

    .line 380
    invoke-direct {v0, v7, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 381
    .line 382
    .line 383
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 384
    .line 385
    invoke-virtual {v2, v10, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 389
    .line 390
    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 400
    .line 401
    const v10, 0x1020006

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    check-cast v0, Landroid/widget/ImageView;

    .line 409
    .line 410
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 411
    .line 412
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 413
    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    xor-int/2addr v0, v11

    .line 419
    if-eqz v0, :cond_c

    .line 420
    .line 421
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 422
    .line 423
    if-eqz v0, :cond_c

    .line 424
    .line 425
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 426
    .line 427
    const v9, 0x7f0a0049

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Landroid/widget/TextView;

    .line 435
    .line 436
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 437
    .line 438
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 439
    .line 440
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    .line 442
    .line 443
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 444
    .line 445
    if-eqz v0, :cond_a

    .line 446
    .line 447
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 448
    .line 449
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 454
    .line 455
    if-eqz v0, :cond_b

    .line 456
    .line 457
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 458
    .line 459
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    .line 461
    .line 462
    goto :goto_6

    .line 463
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 464
    .line 465
    iget-object v9, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 466
    .line 467
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 472
    .line 473
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 478
    .line 479
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    iget-object v13, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 486
    .line 487
    .line 488
    move-result v13

    .line 489
    invoke-virtual {v0, v9, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 493
    .line 494
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 499
    .line 500
    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 508
    .line 509
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-eq p1, v8, :cond_d

    .line 520
    .line 521
    move p1, v11

    .line 522
    goto :goto_7

    .line 523
    :cond_d
    move p1, v6

    .line 524
    :goto_7
    if-eqz v2, :cond_e

    .line 525
    .line 526
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eq v0, v8, :cond_e

    .line 531
    .line 532
    move v0, v11

    .line 533
    goto :goto_8

    .line 534
    :cond_e
    move v0, v6

    .line 535
    :goto_8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    if-eq v4, v8, :cond_f

    .line 540
    .line 541
    move v4, v11

    .line 542
    goto :goto_9

    .line 543
    :cond_f
    move v4, v6

    .line 544
    :goto_9
    if-nez v4, :cond_10

    .line 545
    .line 546
    const v8, 0x7f0a01e3

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object v8

    .line 553
    if-eqz v8, :cond_10

    .line 554
    .line 555
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    :cond_10
    if-eqz v0, :cond_13

    .line 559
    .line 560
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 561
    .line 562
    if-eqz v8, :cond_11

    .line 563
    .line 564
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 565
    .line 566
    .line 567
    :cond_11
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 568
    .line 569
    if-eqz v8, :cond_12

    .line 570
    .line 571
    const v5, 0x7f0a01e7

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    :cond_12
    if-eqz v5, :cond_14

    .line 579
    .line 580
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 581
    .line 582
    .line 583
    goto :goto_a

    .line 584
    :cond_13
    const v2, 0x7f0a01e4

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    if-eqz v2, :cond_14

    .line 592
    .line 593
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    :cond_14
    :goto_a
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 597
    .line 598
    instance-of v5, v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 599
    .line 600
    if-eqz v5, :cond_18

    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    if-eqz v4, :cond_15

    .line 606
    .line 607
    if-nez v0, :cond_18

    .line 608
    .line 609
    :cond_15
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    if-eqz v0, :cond_16

    .line 614
    .line 615
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    .line 616
    .line 617
    .line 618
    move-result v8

    .line 619
    goto :goto_b

    .line 620
    :cond_16
    iget v8, v2, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 621
    .line 622
    :goto_b
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    .line 623
    .line 624
    .line 625
    move-result v9

    .line 626
    if-eqz v4, :cond_17

    .line 627
    .line 628
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    .line 629
    .line 630
    .line 631
    move-result v10

    .line 632
    goto :goto_c

    .line 633
    :cond_17
    iget v10, v2, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 634
    .line 635
    :goto_c
    invoke-virtual {v2, v5, v8, v9, v10}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 636
    .line 637
    .line 638
    :cond_18
    if-nez p1, :cond_1c

    .line 639
    .line 640
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 641
    .line 642
    if-eqz p1, :cond_19

    .line 643
    .line 644
    goto :goto_d

    .line 645
    :cond_19
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 646
    .line 647
    :goto_d
    if-eqz p1, :cond_1c

    .line 648
    .line 649
    if-eqz v4, :cond_1a

    .line 650
    .line 651
    goto :goto_e

    .line 652
    :cond_1a
    move v1, v6

    .line 653
    :goto_e
    or-int/2addr v0, v1

    .line 654
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 655
    .line 656
    const v2, 0x7f0a0183

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 664
    .line 665
    const v4, 0x7f0a0182

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 673
    .line 674
    const/4 v4, 0x3

    .line 675
    invoke-static {p1, v0, v4}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    .line 676
    .line 677
    .line 678
    if-eqz v1, :cond_1b

    .line 679
    .line 680
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 681
    .line 682
    .line 683
    :cond_1b
    if-eqz v2, :cond_1c

    .line 684
    .line 685
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 686
    .line 687
    .line 688
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 689
    .line 690
    if-eqz p1, :cond_1d

    .line 691
    .line 692
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 693
    .line 694
    if-eqz v0, :cond_1d

    .line 695
    .line 696
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 697
    .line 698
    .line 699
    iget p0, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 700
    .line 701
    if-le p0, v7, :cond_1d

    .line 702
    .line 703
    invoke-virtual {p1, p0, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    .line 707
    .line 708
    .line 709
    :cond_1d
    return-void
.end method

.method public final onCreate$androidx$activity$ComponentDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "onBackInvokedDispatcher"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 16
    .line 17
    iget-boolean v1, v0, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onCreate$androidx$appcompat$app$AppCompatDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "AppCompatDelegate"

    .line 32
    .line 33
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate$androidx$activity$ComponentDialog(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.onSaveInstanceState()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->onStop$androidx$activity$ComponentDialog()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/WindowDecorActionBar;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onStop$androidx$activity$ComponentDialog()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setContentView(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->initViewTreeOwners()V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->initViewTreeOwners()V

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatWindowCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->bypassOnContentChanged(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iput-object p0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 4
    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    check-cast p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 8
    iget-boolean v0, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_2

    .line 9
    iput-object p0, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 10
    iget v0, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    iget-boolean p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle$androidx$appcompat$app$AppCompatDialog(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 18
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 19
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTitle$androidx$appcompat$app$AppCompatDialog(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitle:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDecorContentParent:Landroidx/appcompat/widget/DecorContentParent;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 25
    .line 26
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x8

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mTitleView:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
