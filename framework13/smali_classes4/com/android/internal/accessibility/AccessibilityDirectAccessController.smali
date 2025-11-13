.class public Lcom/android/internal/accessibility/AccessibilityDirectAccessController;
.super Ljava/lang/Object;
.source "AccessibilityDirectAccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;,
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

    .line 74
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 76
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    .line 111
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method private blacklist createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "userId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 207
    return-object v2

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    .line 214
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 215
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 216
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 217
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104015e

    .line 218
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104014e

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;I)V

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;I)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 235
    .local v1, "alertDialog":Landroid/app/AlertDialog;
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

    .line 93
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 95
    .local v0, "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;>;"
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    const v3, 0x10402e0

    const-string v4, "accessibility_display_inversion_enabled"

    const-string v5, "1"

    const-string v6, "0"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    const v3, 0x10402df

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    .line 107
    .end local v0    # "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;>;"
    :cond_0
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 290
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 291
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    return-object v1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 296
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getShortcutFeatureDescription()Ljava/lang/String;
    .locals 8

    .line 301
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 302
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    return-object v1

    .line 306
    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;

    .line 307
    .local v2, "frameworkFeatureInfo":Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;
    if-eqz v2, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v3, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 313
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v3, :cond_2

    .line 314
    return-object v1

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 317
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 319
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    return-object v4

    .line 322
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v7, "%s\n%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private blacklist getShortcutTargetComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 370
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "shortcutTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 372
    const/4 v1, 0x0

    return-object v1

    .line 374
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

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 261
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x1040144

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 262
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v0

    const-string v4, " "

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v6, 0x1040133

    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v3

    .line 263
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v6, 0x1040132

    new-array v2, v2, [Ljava/lang/Object;

    .line 268
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v7}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v3

    .line 267
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 275
    .local v5, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v7, 0x1040153

    new-array v8, v2, [Ljava/lang/Object;

    .line 276
    invoke-virtual {v5}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v3

    .line 275
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .end local v5    # "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    goto :goto_0

    .line 278
    :cond_2
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_3

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v5, 0x1040131

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    return-object v1

    .line 283
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v5, 0x1040130

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    return-object v1
.end method

.method private blacklist getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 239
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v3, 0x1040138

    new-array v1, v1, [Ljava/lang/Object;

    .line 243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v0

    .line 241
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v3, 0x1040139

    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v0

    .line 245
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v1, 0x1040137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const v1, 0x1040136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFeatureLeanback()Z
    .locals 2

    .line 326
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

    .line 550
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 551
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
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

.method static synthetic blacklist lambda$performTtsPrompt$3(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "tts"    # Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->dismiss()V

    return-void
.end method

.method private blacklist performTtsPrompt(Landroid/app/AlertDialog;)Z
    .locals 4
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .line 348
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getShortcutFeatureDescription()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "serviceName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 350
    .local v1, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 355
    return v3

    .line 357
    :cond_1
    new-instance v2, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;Ljava/lang/String;)V

    .line 358
    .local v2, "tts":Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;
    new-instance v3, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 359
    const/4 v3, 0x1

    return v3

    .line 351
    .end local v2    # "tts":Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;
    :cond_2
    :goto_0
    return v3
.end method

.method private blacklist playNotificationTone()V
    .locals 4

    .line 332
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->hasFeatureLeanback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/16 v0, 0xb

    goto :goto_0

    .line 334
    :cond_0
    const/16 v0, 0xa

    :goto_0
    nop

    .line 337
    .local v0, "audioAttributesUsage":I
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 339
    .local v1, "tone":Landroid/media/Ringtone;
    if-eqz v1, :cond_1

    .line 340
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 341
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 343
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 345
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$createShortcutWarningDialog$1$com-android-internal-accessibility-AccessibilityDirectAccessController(ILandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 221
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 226
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 228
    return-void
.end method

.method synthetic blacklist lambda$createShortcutWarningDialog$2$com-android-internal-accessibility-AccessibilityDirectAccessController(ILandroid/content/DialogInterface;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;

    .line 231
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_direct_access_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 233
    return-void
.end method

.method synthetic blacklist lambda$performAccessibilityDirectAccess$0$com-android-internal-accessibility-AccessibilityDirectAccessController(ILandroid/content/ContentResolver;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 162
    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performTtsPrompt(Landroid/app/AlertDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->playNotificationTone()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 169
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 170
    .local v1, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 173
    const/4 v2, 0x1

    const-string v3, "accessibility_direct_access_dialog_shown"

    invoke-static {p2, v3, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 174
    return-void
.end method

.method public blacklist performAccessibilityDirectAccess()V
    .locals 10

    .line 119
    const-string v0, "AccessibilityDirectAccessController"

    const-string v1, "Accessibility direct access activated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 122
    .local v2, "userId":I
    const-string v3, "accessibility_direct_access_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 126
    .local v3, "dialogAlreadyShown":I
    const-string v5, "accessibility_direct_access_target_service"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "directAccessTargetService":Ljava/lang/String;
    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    const-string v7, "Accessibility directAccessTargetService == null"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v7, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-static {v1, v5, v7, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 132
    const-string v6, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 137
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 145
    .local v5, "vibrator":Landroid/os/Vibrator;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    invoke-static {v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isSupportDCMotorHapticFeedback(Landroid/os/Vibrator;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/internal/accessibility/util/ShortcutUtils;->vibrateDCMotorHapticFeedback(Landroid/content/Context;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10700eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 151
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v7

    .line 153
    .local v7, "vibePattern":[J
    const/4 v8, -0x1

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 157
    .end local v7    # "vibePattern":[J
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 160
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/ContentResolver;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 177
    :cond_4
    const-string v7, "com.samsung.accessibility/com.samsung.accessibility.shortcut.InteractionControlShortcut"

    .line 178
    .local v7, "interactionControl":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 179
    invoke-static {v8}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessControlEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 180
    const-string v4, "Interaction Control is activated"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->turnOffAccessControl(Landroid/content/Context;)V

    .line 182
    return-void

    .line 186
    .end local v7    # "interactionControl":Ljava/lang/String;
    :cond_5
    const-string v7, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 187
    .local v7, "universalSwitch":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 188
    invoke-static {v8, v7}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 189
    const-string v8, "Universal switch is activated"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 190
    invoke-static {v0, v8, v4, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 192
    return-void

    .line 195
    .end local v7    # "universalSwitch":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityDirectAccess()V

    .line 202
    :goto_1
    return-void

    .line 139
    .end local v5    # "vibrator":Landroid/os/Vibrator;
    :cond_8
    :goto_2
    const-string v4, "Accessibility direct access isEmpty"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
