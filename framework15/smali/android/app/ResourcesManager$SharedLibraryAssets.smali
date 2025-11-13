.class public Landroid/app/ResourcesManager$SharedLibraryAssets;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedLibraryAssets"
.end annotation


# instance fields
.field private final blacklist mResourcesKey:Landroid/content/res/ResourcesKey;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/ResourcesManager$PathCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ResourcesManager$SharedLibraryAssets;->mResourcesKey:Landroid/content/res/ResourcesKey;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;Landroid/app/ResourcesManager$SharedLibraryAssets-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager$SharedLibraryAssets;-><init>(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist getResourcesKey()Landroid/content/res/ResourcesKey;
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager$SharedLibraryAssets;->mResourcesKey:Landroid/content/res/ResourcesKey;

    return-object v0
.end method
