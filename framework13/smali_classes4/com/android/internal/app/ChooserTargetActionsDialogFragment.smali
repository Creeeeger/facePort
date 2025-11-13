.class public Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChooserTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;,
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;
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
.method public constructor blacklist <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method private blacklist getPinIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isPinned"    # Z

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080397

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108038b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0
.end method

.method private blacklist getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "isPinned"    # Z
    .param p2, "targetLabel"    # Ljava/lang/CharSequence;

    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040e4f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040afc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0
.end method

.method private static blacklist getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "packageName"    # Ljava/lang/String;
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

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, "contextAsUser":Landroid/content/Context;
    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 244
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;-><init>()V

    .line 246
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 248
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 249
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 245
    return-object v2
.end method

.method private blacklist getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 6

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 289
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 290
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    .line 293
    .local v1, "iconDpi":I
    new-instance v2, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 294
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    .line 293
    return-object v2
.end method

.method private blacklist isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 1
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 298
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

    .line 302
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
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Landroid/content/pm/ShortcutInfo;

    .line 247
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
    .param p0, "window"    # Landroid/view/Window;

    .line 139
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method private blacklist pinComponent(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 256
    .local v2, "currentVal":Z
    if-eqz v2, :cond_0

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    :goto_0
    return-void
.end method

.method private blacklist toggleShortcutPinned(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 228
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "pinnedShortcuts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 237
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 236
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected blacklist getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 278
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v1

    .line 279
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

    .line 278
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$onCreateView$1$com-android-internal-app-ChooserTargetActionsDialogFragment(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;
    .locals 3
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 144
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 213
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->toggleShortcutPinned(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->pinComponent(Landroid/content/ComponentName;)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged()V

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->dismiss()V

    .line 220
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    return-void

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    .line 98
    :goto_0
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    .line 137
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

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 147
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;>;>;"
    const v1, 0x1090064

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, "v":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 150
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 151
    .local v3, "icon":Landroid/widget/ImageView;
    const v4, 0x10203b1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    .line 153
    .local v4, "rv":Lcom/android/internal/widget/RecyclerView;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v5

    .line 154
    .local v5, "pg":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
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

    .line 155
    iget-object v6, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    new-instance v6, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 158
    return-object v1
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 111
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v1, "user_handle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    const-string/jumbo v1, "target_infos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v1, "shortcut_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    const-string v1, "is_shortcut_pinned"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    const-string/jumbo v1, "shortcut_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "intent_filter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    return-void
.end method

.method blacklist setStateFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .line 101
    const-string/jumbo v0, "target_infos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 102
    const-string/jumbo v0, "user_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 103
    const-string/jumbo v0, "shortcut_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "shortcut_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    .line 105
    const-string v0, "is_shortcut_pinned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    .line 106
    const-string v0, "intent_filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    return-void
.end method
