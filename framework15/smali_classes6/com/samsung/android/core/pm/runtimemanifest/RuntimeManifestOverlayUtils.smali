.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestOverlayUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field public static final blacklist TAG:Ljava/lang/String; = "RuntimeManifestOverlayUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RuntimeManifestOverlayUtils"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-static {v6, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    :cond_4
    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public static blacklist applyPackageRuntimeManifest(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyPackage(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist applyRuntimeManifestIfNeeded(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)V
    .locals 5

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->getRuntimeManifestOverlayParser(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    nop

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getApplicationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyPackageRuntimeManifest(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/util/List;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getActivityPolicies()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    nop

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getServicePolicies()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    nop

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getProviderPolicies()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    nop

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getReceiverPolicies()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static blacklist getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;)TComponent;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getRuntimeManifestOverlayParser(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 3

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "runtime.manifest.overlay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist modifyComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    :cond_2
    return-void
.end method

.method public static blacklist modifyMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestOverlayUtils;->modifyComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    return-void
.end method

.method public static blacklist modifyPackage(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 1

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method
