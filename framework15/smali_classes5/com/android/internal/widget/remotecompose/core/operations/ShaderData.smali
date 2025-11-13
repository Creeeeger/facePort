.class public Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.super Ljava/lang/Object;
.source "ShaderData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40


# instance fields
.field blacklist mShaderID:I

.field blacklist mShaderTextId:I

.field blacklist mUniformBitmapMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUniformFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field blacklist mUniformIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mUniformRawFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShaderTextId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    return v0
.end method

.method public blacklist getUniformBitmapId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getUniformBitmapNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloatNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloats(Ljava/lang/String;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public blacklist getUniformIntegerNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformInts(Ljava/lang/String;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v4, v2, v3

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHADER DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    :cond_0
    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v5

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v3, :cond_3

    move-object v5, v2

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 7

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method
