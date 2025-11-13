.class public Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;
.super Ljava/lang/Object;
.source "DecorCaptionCompatWindow.java"

# interfaces
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_NAME_DEX_LABS_OPTIONS:Ljava/lang/String; = "com.android.launcher3.settings.SamsungDexLabsOptions"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorCaptionWindow"

.field private static blacklist sExistsDexLabsActivity:Z

.field private static blacklist sNeedToCheckDexLabsActivity:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mParentWindow:Landroid/view/Window;

.field private final blacklist mWM:Landroid/view/WindowManager;

.field private blacklist mWindow:Landroid/view/Window;

.field private blacklist mWindowAdded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->sNeedToCheckDexLabsActivity:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Window;)V
    .locals 1
    .param p1, "parentWindow"    # Landroid/view/Window;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    .line 61
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWM:Landroid/view/WindowManager;

    .line 64
    return-void
.end method

.method private static blacklist existsDexLabsActivity(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 148
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->sNeedToCheckDexLabsActivity:Z

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->sNeedToCheckDexLabsActivity:Z

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.desktoplauncher"

    const-string v4, "com.android.launcher3.settings.SamsungDexLabsOptions"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->sExistsDexLabsActivity:Z

    .line 155
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->sExistsDexLabsActivity:Z

    return v0
.end method

.method private blacklist generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 102
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 103
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    const v1, 0x1000508

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, 0x20110

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecorCaptionWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0
.end method

.method private static blacklist getActivityOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 161
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityOptions, DisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorCaptionWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist addWindow()V
    .locals 5

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWM:Landroid/view/WindowManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    .line 78
    invoke-virtual {v3}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    iput-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 81
    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setParentWindow(Landroid/view/Window;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    const/16 v3, 0x700

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v1}, Lcom/android/internal/policy/DecorView;->requestTransparentRegion(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    .line 91
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getWindow()Landroid/view/Window;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0
.end method

.method public blacklist onWindowDismissed(ZZ)V
    .locals 1
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 136
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->dispatchOnWindowDismissed(ZZ)V

    .line 137
    return-void
.end method

.method public blacklist removeWindow()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWM:Landroid/view/WindowManager;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    .line 98
    :cond_0
    return-void
.end method

.method public blacklist showRestartNotificationTipPopup(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getMaximize()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mParentWindow:Landroid/view/Window;

    .line 173
    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;-><init>(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 174
    .local v1, "popup":Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->-$$Nest$mshowRestartNotificationHelp(Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;Lcom/android/internal/policy/DecorView;Landroid/os/IBinder;)V

    .line 177
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "popup":Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;
    :cond_0
    return-void
.end method

.method public blacklist updateCaptionState(I)V
    .locals 2
    .param p1, "captionState"    # I

    .line 116
    if-nez p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "visibility":I
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindowAdded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setVisibility(I)V

    .line 127
    :cond_1
    return-void
.end method
