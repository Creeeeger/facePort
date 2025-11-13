.class public Lcom/android/wm/shell/draganddrop/DropResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCallingPackage:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mPermissions:Landroid/view/DragAndDropPermissions;

.field public mUserHandle:Landroid/os/UserHandle;

.field public mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 6

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p5, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p5

    :goto_0
    move v5, p5

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result p5

    goto :goto_0

    :goto_1
    const/4 p5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result p0

    invoke-virtual {p1, p4, p5, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p4, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p4, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p4, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Landroid/content/ComponentName;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final appliedThemeResId()I
    .locals 0

    const p0, 0x103043a

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "dropResolverActivity.extra.contentType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    const-string v2, "dropResolverActivity.extra.callingPackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    instance-of v2, v1, Landroid/content/Intent;

    const-string v3, "DropResolverActivity"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Target is not an intent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    invoke-super {p0, v4}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v7, v1

    check-cast v7, Landroid/content/Intent;

    const-string v1, "dropResolverActivity.extra.rlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v9, v2

    goto :goto_0

    :cond_1
    move-object v9, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1041064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v5, v1

    new-array v5, v5, [Landroid/content/Intent;

    move v6, v2

    :goto_1
    array-length v11, v1

    if-ge v6, v11, :cond_3

    aget-object v11, v1, v6

    instance-of v12, v11, Landroid/content/Intent;

    if-nez v12, :cond_2

    const-string p1, "EXTRA_ALTERNATE_INTENTS array entry #"

    const-string v0, " is not an Intent: "

    invoke-static {v6, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, v1, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    invoke-super {p0, v4}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_2
    check-cast v11, Landroid/content/Intent;

    aput-object v11, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    :cond_4
    const-string v1, "dragPermission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/DragAndDropPermissions;

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mPermissions:Landroid/view/DragAndDropPermissions;

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v1}, Landroid/view/DragAndDropPermissions;->takeTransient()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "dnd permission failure"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v1

    const-string v3, "dropResolverActivity.extra.userid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v3

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :cond_6
    const-string v1, "dropResolverActivity.extra.wallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setTranslucent(Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x100000

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_7
    const-string v1, "dropResolverActivity.extra.supportsAlwaysUseOption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object v5, p0

    move-object v6, p1

    invoke-super/range {v5 .. v11}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    const p1, 0x1020278

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    const/4 v1, 0x5

    const v2, 0x7f06013e

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06013f

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackgroundColor(I)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mPermissions:Landroid/view/DragAndDropPermissions;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    const-string p0, "DropResolverActivity"

    const-string v0, "Release permissions"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 4

    const-string v0, ","

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    iget v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "1042"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    return-void
.end method
