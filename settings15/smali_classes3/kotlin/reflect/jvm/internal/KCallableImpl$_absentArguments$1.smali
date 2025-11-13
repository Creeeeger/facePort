.class final Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002 \u0003*\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0004 \u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "R",
        "invoke",
        "()[Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KCallableImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-interface {v3}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KCallableImpl;->parametersNeedMFVCFlattening:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KParameter;

    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/KParameterImpl;->kind:Lkotlin/reflect/KParameter$Kind;

    sget-object v9, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v8, v9, :cond_0

    invoke-virtual {v5, v7}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameterTypeSize(Lkotlin/reflect/KParameter;)I

    move-result v7

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v4

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v4

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/KParameter;

    check-cast v5, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/KParameterImpl;->kind:Lkotlin/reflect/KParameter$Kind;

    sget-object v7, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v5, v7, :cond_3

    add-int/2addr v6, v0

    if-ltz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1f

    div-int/lit8 v6, v6, 0x20

    add-int v2, v3, v6

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/KParameter;

    check-cast v5, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KParameterImpl;->isOptional()Z

    move-result v7

    iget v8, v5, Lkotlin/reflect/jvm/internal/KParameterImpl;->index:I

    if-eqz v7, :cond_d

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v7

    sget-object v9, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v7, :cond_8

    sget v9, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->$r8$clinit:I

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v4

    :goto_5
    if-ne v7, v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v9, v5, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Type;

    goto :goto_6

    :cond_9
    move-object v10, v7

    :goto_6
    if-nez v10, :cond_c

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    :cond_a
    if-eqz v7, :cond_b

    move-object v10, v7

    goto :goto_7

    :cond_b
    invoke-static {v5, v4}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v5

    move-object v10, v5

    :cond_c
    :goto_7
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v8

    goto :goto_4

    :cond_d
    :goto_8
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KParameterImpl;->isVararg()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/KCallableImpl;->defaultEmptyArray(Lkotlin/reflect/jvm/internal/KTypeImpl;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v8

    goto :goto_4

    :cond_e
    move p0, v4

    :goto_9
    if-ge p0, v6, :cond_f

    add-int v1, v3, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/2addr p0, v0

    goto :goto_9

    :cond_f
    return-object v2
.end method
