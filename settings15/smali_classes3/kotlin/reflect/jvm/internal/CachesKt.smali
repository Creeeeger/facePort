.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

.field public static final K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    return-void
.end method

.method public static final getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 3

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;->compute:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :cond_1
    :goto_0
    const-string p0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object v2
.end method
