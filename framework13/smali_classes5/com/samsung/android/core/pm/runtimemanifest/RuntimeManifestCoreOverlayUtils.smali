.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestCoreOverlayUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = true

.field public static final blacklist TAG:Ljava/lang/String; = "RuntimeManifestUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/ComponentInfo;",
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

    .line 139
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<TComponent;>;"
    .local p2, "compPolicies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
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

    .line 143
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, "targetName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 145
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    .line 150
    .local v4, "target":Landroid/content/pm/ComponentInfo;, "TComponent;"
    if-nez v4, :cond_3

    .line 152
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

    const-string v6, "RuntimeManifestUtils"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object v5

    .line 158
    .local v5, "matched":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    if-eqz v5, :cond_4

    .line 159
    invoke-static {v4, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->modifyMainComponent(Landroid/content/pm/ComponentInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    .line 161
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    .end local v2    # "targetName":Ljava/lang/String;
    .end local v3    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    .end local v4    # "target":Landroid/content/pm/ComponentInfo;, "TComponent;"
    .end local v5    # "matched":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    :cond_4
    goto :goto_0

    .line 162
    :cond_5
    return-void

    .line 140
    :cond_6
    :goto_1
    return-void
.end method

.method public static blacklist applyPackageRuntimeManifest(Landroid/content/pm/PackageParser$Package;Ljava/util/List;)V
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    move-result-object v0

    .line 181
    .local v0, "matched":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    if-eqz v0, :cond_1

    .line 182
    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->modifyPackage(Landroid/content/pm/PackageParser$Package;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    .line 184
    :cond_1
    return-void

    .line 178
    .end local v0    # "matched":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist applyRuntimeManifestIfNeeded(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)V
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 77
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getRuntimeManifestOverlayParser(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 78
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_0

    .line 79
    nop

    .line 80
    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    move-result-object v1

    .line 81
    .local v1, "overlay":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getApplicationPolicies()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->applyPackageRuntimeManifest(Landroid/content/pm/PackageParser$Package;Ljava/util/List;)V

    .line 82
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 83
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 84
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getActivityInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getActivityPolicies()Ljava/util/Map;

    move-result-object v4

    .line 83
    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 85
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 86
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getServiceInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getServicePolicies()Ljava/util/Map;

    move-result-object v4

    .line 85
    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 87
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 88
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getProviderInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getProviderPolicies()Ljava/util/Map;

    move-result-object v4

    .line 87
    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 89
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 90
    invoke-static {v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->getActivityInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->getReceiverPolicies()Ljava/util/Map;

    move-result-object v4

    .line 89
    invoke-static {v2, v3, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->applyComponentRuntimeManifest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "overlay":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static blacklist getActivityInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 116
    .local p0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 121
    return-object v0

    .line 118
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static blacklist getMatchingComponent(Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ComponentInfo;
    .locals 4
    .param p0, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/ComponentInfo;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;)TComponent;"
        }
    .end annotation

    .line 166
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<TComponent;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 167
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ComponentInfo;

    .line 169
    .local v2, "comp":Landroid/content/pm/ComponentInfo;, "TComponent;"
    iget-object v3, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    return-object v2

    .line 167
    .end local v2    # "comp":Landroid/content/pm/ComponentInfo;, "TComponent;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getProviderInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 107
    .local p0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Provider;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 112
    return-object v0

    .line 109
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static blacklist getRuntimeManifestOverlayParser(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 126
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 127
    .local v0, "metaData":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v1, "runtime.manifest.overlay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "resId":I
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    return-object v2

    .line 133
    .end local v1    # "resId":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getServiceInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 98
    .local p0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Service;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    return-object v0

    .line 100
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$getActivityInfoList$2(Ljava/util/List;Landroid/content/pm/PackageParser$Activity;)V
    .locals 1
    .param p0, "infoList"    # Ljava/util/List;
    .param p1, "element"    # Landroid/content/pm/PackageParser$Activity;

    .line 120
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getProviderInfoList$1(Ljava/util/List;Landroid/content/pm/PackageParser$Provider;)V
    .locals 1
    .param p0, "infoList"    # Ljava/util/List;
    .param p1, "element"    # Landroid/content/pm/PackageParser$Provider;

    .line 111
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getServiceInfoList$0(Ljava/util/List;Landroid/content/pm/PackageParser$Service;)V
    .locals 1
    .param p0, "infoList"    # Ljava/util/List;
    .param p1, "element"    # Landroid/content/pm/PackageParser$Service;

    .line 102
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static blacklist modifyComponent(Landroid/content/pm/ComponentInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 3
    .param p1, "policy"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/ComponentInfo;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    .line 38
    .local p0, "component":Landroid/content/pm/ComponentInfo;, "TComponent;"
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    const-string v1, "RuntimeManifestUtils"

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set component icon to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set component labelRes to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set component nonLocalizedLabel to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    return-void
.end method

.method public static blacklist modifyMainComponent(Landroid/content/pm/ComponentInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 2
    .param p1, "policy"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Landroid/content/pm/ComponentInfo;",
            ">(TComponent;",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ")V"
        }
    .end annotation

    .line 28
    .local p0, "component":Landroid/content/pm/ComponentInfo;, "TComponent;"
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set component enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuntimeManifestUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestCoreOverlayUtils;->modifyComponent(Landroid/content/pm/ComponentInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V

    .line 33
    return-void
.end method

.method public static blacklist modifyPackage(Landroid/content/pm/PackageParser$Package;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)V
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "policy"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 54
    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasEnabled()Z

    move-result v0

    const-string v1, "RuntimeManifestUtils"

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set pkg.enabled to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set pkg.icon to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getIconRes()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set pkg.labelRes to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getLabelRes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set pkg.nonLocalizedLabel to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4
    return-void

    .line 55
    :cond_5
    :goto_0
    return-void
.end method
