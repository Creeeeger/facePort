.class public Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;
.super Ljava/lang/Object;
.source "AndroidPackageSplitImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackageSplit;


# instance fields
.field private final blacklist mClassLoaderName:Ljava/lang/String;

.field private blacklist mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mRevisionCode:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    iput p4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    iput-object p5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    iget v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    iget v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public blacklist fillDependencies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot fill split dependencies more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist isHasCode()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
