.class public final Lcom/android/systemui/theme/ThemeOverlayApplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field public static final DEBUG:Z

.field static final OVERLAY_CATEGORY_FONT:Ljava/lang/String; = "android.theme.customization.font"

.field static final OVERLAY_CATEGORY_ICON_ANDROID:Ljava/lang/String; = "android.theme.customization.icon_pack.android"

.field static final OVERLAY_CATEGORY_ICON_LAUNCHER:Ljava/lang/String; = "android.theme.customization.icon_pack.launcher"

.field static final OVERLAY_CATEGORY_ICON_SETTINGS:Ljava/lang/String; = "android.theme.customization.icon_pack.settings"

.field static final OVERLAY_CATEGORY_ICON_SYSUI:Ljava/lang/String; = "android.theme.customization.icon_pack.systemui"

.field static final OVERLAY_CATEGORY_ICON_THEME_PICKER:Ljava/lang/String; = "android.theme.customization.icon_pack.themepicker"

.field static final OVERLAY_CATEGORY_SHAPE:Ljava/lang/String; = "android.theme.customization.adaptive_icon_shape"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final SYSTEM_USER_CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final THEME_CATEGORIES:Ljava/util/List;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCategoryToTargetPackage:Ljava/util/Map;

.field public final mLauncherPackage:Ljava/lang/String;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mOverlayManager:Landroid/content/om/OverlayManager;

.field public final mTargetPackageToCategories:Ljava/util/Map;

.field public final mThemePickerPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "ThemeOverlayApplier"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    const-string v9, "android.theme.customization.icon_pack.settings"

    const-string v10, "android.theme.customization.icon_pack.themepicker"

    const-string v1, "android.theme.customization.system_palette"

    const-string v2, "android.theme.customization.icon_pack.launcher"

    const-string v3, "android.theme.customization.adaptive_icon_shape"

    const-string v4, "android.theme.customization.font"

    const-string v5, "android.theme.customization.accent_color"

    const-string v6, "android.theme.customization.dynamic_color"

    const-string v7, "android.theme.customization.icon_pack.android"

    const-string v8, "android.theme.customization.icon_pack.systemui"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    const-string v6, "android.theme.customization.icon_pack.android"

    const-string v7, "android.theme.customization.icon_pack.systemui"

    const-string v1, "android.theme.customization.system_palette"

    const-string v2, "android.theme.customization.accent_color"

    const-string v3, "android.theme.customization.dynamic_color"

    const-string v4, "android.theme.customization.font"

    const-string v5, "android.theme.customization.adaptive_icon_shape"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mLauncherPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mThemePickerPackage:Ljava/lang/String;

    const-string v6, "android.theme.customization.adaptive_icon_shape"

    const-string v7, "android.theme.customization.icon_pack.android"

    const-string v2, "android.theme.customization.system_palette"

    const-string v3, "android.theme.customization.accent_color"

    const-string v4, "android.theme.customization.dynamic_color"

    const-string v5, "android.theme.customization.font"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    const-string p2, "android"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "android.theme.customization.icon_pack.systemui"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p6

    const-string v2, "com.android.systemui"

    invoke-interface {v0, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "android.theme.customization.icon_pack.settings"

    filled-new-array {p6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.theme.customization.icon_pack.launcher"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v5

    invoke-interface {v0, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.theme.customization.icon_pack.themepicker"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    invoke-interface {v0, p4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.accent_color"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.dynamic_color"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.font"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.adaptive_icon_shape"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.theme.customization.icon_pack.android"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ThemeOverlayApplier"

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mTargetPackageToCategories="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mCategoryToTargetPackage="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTransactionBuilder()Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 0

    new-instance p0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {p0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    return-object p0
.end method

.method public final setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;ILjava/util/Set;ZZ)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    const-string v1, "ThemeOverlayApplier"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setEnabled: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " category: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p6, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/om/OverlayManager;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p7, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Won\'t enable "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", it doesn\'t exist for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1, p2, p6, p4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    sget-object p7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p4, v0, :cond_2

    sget-object p4, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p1, p2, p6, p3}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {p3, p2, p7}, Landroid/content/om/OverlayManager;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p4, p3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object p7, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mLauncherPackage:Ljava/lang/String;

    invoke-virtual {p4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p3, p3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mThemePickerPackage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    check-cast p5, Ljava/util/HashSet;

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p1, p2, p6, p3}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
