.class public final Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;
.super Ljava/lang/Object;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputMap"
.end annotation


# instance fields
.field private blacklist cvData_:Lcom/samsung/android/sume/Duo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mbData_:Lcom/samsung/android/sume/Duo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getContentValues$0(Lcom/samsung/android/sume/Duo;)[Landroid/content/ContentValues;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic blacklist lambda$getMediaBuffers$1(Lcom/samsung/android/sume/Duo;)[Lcom/samsung/android/sume/MediaBuffer;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/sume/MediaBuffer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$setId$2(Lcom/samsung/android/sume/Duo;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/content/ContentValues;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setId$3(Lcom/samsung/android/sume/Duo;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/Duo;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blacklist clear()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 252
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    .line 253
    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    .line 254
    return-void
.end method

.method public final blacklist getContentValues()[Landroid/content/ContentValues;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    return-object v0
.end method

.method public final blacklist getCvData_()Lcom/samsung/android/sume/Duo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    return-object v0
.end method

.method public final blacklist getMbData_()Lcom/samsung/android/sume/Duo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    return-object v0
.end method

.method public final blacklist getMediaBuffers()[Lcom/samsung/android/sume/MediaBuffer;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaBuffer;

    return-object v0
.end method

.method public final blacklist remove(I)V
    .locals 2
    .param p1, "contentsId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "both cvData & mbData are null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist setCvData_(Lcom/samsung/android/sume/Duo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .line 168
    .local p1, "data":Lcom/samsung/android/sume/Duo;, "Lcom/samsung/android/sume/Duo<[Landroid/content/ContentValues;Ljava/util/HashMap<Ljava/lang/Integer;Landroid/content/ContentValues;>;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    .line 169
    return-void
.end method

.method public final blacklist setData([Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "array"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not allow combination of ContentValues & SemMediaBuffer as input"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v0, Lcom/samsung/android/sume/Duo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    .line 183
    return-void
.end method

.method public final blacklist setData([Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 3
    .param p1, "array"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not allow combination of ContentValues & SemMediaBuffer as input"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v0, Lcom/samsung/android/sume/Duo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    .line 189
    return-void
.end method

.method public final blacklist setId([I)V
    .locals 8
    .param p1, "idArray"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idArray"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "data is cleared abnormally"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "not allow combination of ContentValues & SemMediaBuffer as input"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    .line 206
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "size":I
    array-length v3, p1

    if-eq v0, v3, :cond_6

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    const-string v5, ", size="

    const-string v6, "["

    if-eqz v4, :cond_4

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cv="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    iget-object v6, v6, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    iget-object v4, v4, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    iget-object v5, v5, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v5, [Landroid/content/ContentValues;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 216
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mb="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    iget-object v6, v6, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    iget-object v4, v4, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    iget-object v5, v5, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v5, [Lcom/samsung/android/sume/MediaBuffer;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_5
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, p1

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    .line 222
    const-string v1, "# of returned ids(%d) is differ from length of input data(%d): %s"

    invoke-static {v1, v5}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v3    # "msg":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    if-eqz v1, :cond_7

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 228
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    iget-object v2, v2, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v2, [Landroid/content/ContentValues;

    aget-object v2, v2, v1

    .line 229
    .local v2, "cv":Landroid/content/ContentValues;
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "media-id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->cvData_:Lcom/samsung/android/sume/Duo;

    iget-object v3, v3, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v2    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 234
    .end local v1    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    if-eqz v1, :cond_8

    .line 235
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_8

    .line 236
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    iget-object v2, v2, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/sume/MediaBuffer;

    aget-object v2, v2, v1

    .line 237
    .local v2, "buf":Lcom/samsung/android/sume/MediaBuffer;
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/MediaBuffer;->setId(I)V

    .line 238
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    iget-object v3, v3, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v2    # "buf":Lcom/samsung/android/sume/MediaBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 241
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method public final blacklist setMbData_(Lcom/samsung/android/sume/Duo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/Duo<",
            "[",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    .local p1, "data":Lcom/samsung/android/sume/Duo;, "Lcom/samsung/android/sume/Duo<[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/sume/MediaBuffer;>;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->mbData_:Lcom/samsung/android/sume/Duo;

    .line 178
    return-void
.end method
