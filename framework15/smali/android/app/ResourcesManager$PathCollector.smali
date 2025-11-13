.class Landroid/app/ResourcesManager$PathCollector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathCollector"
.end annotation


# instance fields
.field public final blacklist libsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist originalKey:Landroid/content/res/ResourcesKey;

.field public final blacklist overlaysSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iput-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    :cond_0
    return-void
.end method

.method static blacklist appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2, p1, p2}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static blacklist appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist appendKey(Landroid/content/res/ResourcesKey;)V
    .locals 3

    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    return-void
.end method

.method blacklist collectedKey()Landroid/content/res/ResourcesKey;
    .locals 12

    new-instance v9, Landroid/content/res/ResourcesKey;

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v0, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget v0, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move v7, v0

    :goto_2
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v8, v0

    :goto_3
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v0, :cond_4

    move-object v10, v1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v10, v0

    :goto_4
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v0, :cond_5

    move-object v11, v1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object v11, v0

    :goto_5
    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    return-object v9
.end method

.method blacklist isSameAsOriginal()Z
    .locals 4

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    :cond_5
    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1
.end method
