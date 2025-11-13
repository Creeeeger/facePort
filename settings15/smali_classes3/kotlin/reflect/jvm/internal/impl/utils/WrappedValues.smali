.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    return-void
.end method

.method public static unescapeThrowable(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "@NotNull method %s.%s must not return null"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getThrowable"

    aput-object v2, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    throw p0

    :cond_1
    return-void
.end method
