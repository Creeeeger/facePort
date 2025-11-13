.class public Lcom/android/internal/accessibility/AccessibilityDirectAccessController;
.super Ljava/lang/Object;
.source "AccessibilityDirectAccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityDirectAccessController"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static blacklist sFrameworkShortcutFeaturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlertDialog:Landroid/app/AlertDialog;

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$A4zE8A8-a8ryODQfvlCTKvdEqDk(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->lambda$createShortcutWarningDialog$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_GL1BvjwK36ddyrUab1xwIJ99o0(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->lambda$performAccessibilityDirectAccess$0(ILandroid/content/ContentResolver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xCBEJdCFTRvDGJ6fJwmLJKH62w8(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->lambda$createShortcutWarningDialog$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->playNotificationTone()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104016d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;I)V

    const v3, 0x104015c

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getFrameworkShortcutFeaturesMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_inversion_enabled"

    const v4, 0x10402c8

    const-string v5, "1"

    const-string v6, "0"

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_daltonizer_enabled"

    const v4, 0x10402c7

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getShortcutFeatureDescription()Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v4

    :cond_3
    const-string v6, "%s\n%s"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private blacklist getShortcutTargetComponentName()Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shortcutTargets.get(0) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AccessibilityDirectAccessController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1040151

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v0

    const-string v1, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x104013e

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x104013d

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x1040161

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v1

    const-string v3, "\n"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v5, 0x104013c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v5, 0x104013b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x1040143

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x1040144

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v1, 0x1040142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v1, 0x1040141

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFeatureLeanback()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isKeyguardLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic blacklist lambda$createShortcutWarningDialog$1(ILandroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic blacklist lambda$createShortcutWarningDialog$2(ILandroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic blacklist lambda$performAccessibilityDirectAccess$0(ILandroid/content/ContentResolver;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performTtsPrompt(Landroid/app/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->playNotificationTone()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const-string v2, "accessibility_direct_access_dialog_shown"

    const/4 v3, 0x1

    invoke-static {p2, v2, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic blacklist lambda$performTtsPrompt$3(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->dismiss()V

    return-void
.end method

.method private blacklist performTtsPrompt(Landroid/app/AlertDialog;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutFeatureDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    :goto_0
    return v3
.end method

.method private blacklist playNotificationTone()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->hasFeatureLeanback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist performAccessibilityDirectAccess()V
    .locals 10

    const-string v0, "Accessibility direct access activated"

    const-string v1, "AccessibilityDirectAccessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "accessibility_direct_access_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const-string v5, "accessibility_direct_access_target_service"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Accessibility directAccessTargetService == null"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-static {v0, v5, v7, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v6, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isSupportDCMotorHapticFeedback(Landroid/os/Vibrator;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->vibrateDCMotorHapticFeedback(Landroid/content/Context;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107011b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v7

    const/4 v8, -0x1

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/ContentResolver;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const-string v7, "com.samsung.accessibility/com.samsung.accessibility.shortcut.InteractionControlShortcut"

    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessControlEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v4, "Interaction Control is activated"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->turnOffAccessControl(Landroid/content/Context;)V

    return-void

    :cond_5
    const-string v7, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "Universal switch is activated"

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v1, v8, v4, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_7
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityDirectAccess()V

    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string v4, "Accessibility direct access isEmpty"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
