.class public Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChooserTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;,
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
    }
.end annotation


# static fields
.field public static final blacklist INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field public static final blacklist IS_SHORTCUT_PINNED_KEY:Ljava/lang/String; = "is_shortcut_pinned"

.field public static final blacklist SHORTCUT_ID_KEY:Ljava/lang/String; = "shortcut_id"

.field public static final blacklist SHORTCUT_TITLE_KEY:Ljava/lang/String; = "shortcut_title"

.field public static final blacklist TARGET_INFOS_KEY:Ljava/lang/String; = "target_infos"

.field public static final blacklist USER_HANDLE_KEY:Ljava/lang/String; = "user_handle"


# instance fields
.field protected blacklist mIntentFilter:Landroid/content/IntentFilter;

.field protected blacklist mIsShortcutPinned:Z

.field protected blacklist mShortcutId:Ljava/lang/String;

.field protected blacklist mShortcutTitle:Ljava/lang/String;

.field protected blacklist mTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSYD4czaDbmn831qG15NEcrvA5k(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->lambda$onCreateView$1(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist getPinIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10803e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10803d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f7a

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bee

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static blacklist getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private blacklist getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    new-instance v2, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v2
.end method

.method private blacklist isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->isPinned()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private blacklist isShortcutTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getPinnedShortcutsFromPackageAsUser$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$onCreateView$0(Landroid/view/Window;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreateView$1(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist pinComponent(Landroid/content/ComponentName;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private blacklist toggleShortcutPinned(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method protected blacklist getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->toggleShortcutPinned(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->pinComponent(Landroid/content/ComponentName;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->dismiss()V

    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const v1, 0x1090066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x10203bb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    return-object v1
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user_handle"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "target_infos"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "shortcut_id"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "is_shortcut_pinned"

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "shortcut_title"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "intent_filter"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method blacklist setStateFromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "target_infos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    const-string/jumbo v0, "user_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v0, "shortcut_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v0, "shortcut_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    const-string/jumbo v0, "is_shortcut_pinned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    const-string/jumbo v0, "intent_filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method
