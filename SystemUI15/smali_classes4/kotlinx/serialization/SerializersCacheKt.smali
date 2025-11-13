.class public abstract Lkotlinx/serialization/SerializersCacheKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

.field public static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

.field public static final SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

.field public static final SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    sget-boolean v1, Lkotlinx/serialization/internal/CachingKt;->useClassValue:Z

    if-eqz v1, :cond_0

    new-instance v2, Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/serialization/internal/ConcurrentHashMapCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

    if-eqz v1, :cond_1

    new-instance v2, Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lkotlinx/serialization/internal/ConcurrentHashMapCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    :goto_1
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;

    if-eqz v1, :cond_2

    new-instance v2, Lkotlinx/serialization/internal/ClassValueParametrizedCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ClassValueParametrizedCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;

    invoke-direct {v2, v0}, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    sput-object v2, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    if-eqz v1, :cond_3

    new-instance v1, Lkotlinx/serialization/internal/ClassValueParametrizedCache;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ClassValueParametrizedCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    :goto_3
    sput-object v1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    return-void
.end method
