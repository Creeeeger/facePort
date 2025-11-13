.class public Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;
.super Ljava/lang/Object;
.source "ShaderData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v1

    :goto_0
    if-nez p5, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Ljava/util/HashMap;->size()I

    move-result v2

    :goto_1
    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p6}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_2
    shl-int/lit8 v3, v2, 0x8

    or-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    if-lez v1, :cond_4

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    array-length v7, v6

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v7, 0x0

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_3

    aget v8, v6, v7

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    goto :goto_3

    :cond_4
    if-lez v2, :cond_6

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    array-length v7, v6

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v7, 0x0

    :goto_6
    array-length v8, v6

    if-ge v7, v8, :cond_5

    aget v8, v6, v7

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    goto :goto_5

    :cond_6
    if-lez v0, :cond_7

    invoke-virtual {p6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    invoke-virtual {p6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_7

    :cond_7
    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapData"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    and-int/lit16 v9, v8, 0xff

    if-lez v9, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    new-array v10, v5, [F

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object v10, v0

    :goto_2
    shr-int/lit8 v0, v8, 0x8

    and-int/lit16 v11, v0, 0xff

    if-lez v11, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    new-array v5, v4, [I

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    aput v13, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object v12, v1

    :goto_5
    shr-int/lit8 v0, v8, 0x10

    and-int/lit16 v13, v0, 0xff

    if-lez v13, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object v14, v2

    :goto_7
    new-instance v15, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-object v0, v15

    move v1, v6

    move v2, v7

    move-object v3, v10

    move-object v4, v12

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;-><init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
