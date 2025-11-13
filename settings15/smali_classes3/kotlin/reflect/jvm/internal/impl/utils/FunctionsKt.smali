.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALWAYS_TRUE:Lkotlin/jvm/functions/Function1;

.field public static final DO_NOTHING_3:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$IDENTITY$1;->$r8$clinit:I

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$ALWAYS_TRUE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$ALWAYS_TRUE$1;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->ALWAYS_TRUE:Lkotlin/jvm/functions/Function1;

    sget v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$ALWAYS_NULL$1;->$r8$clinit:I

    sget v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING$1;->$r8$clinit:I

    sget v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING_2$1;->$r8$clinit:I

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING_3$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING_3$1;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->DO_NOTHING_3:Lkotlin/jvm/functions/Function3;

    return-void
.end method
