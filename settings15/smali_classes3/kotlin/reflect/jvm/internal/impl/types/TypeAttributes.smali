.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
.super Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

.field public static final Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->getId(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->getSize()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    iget v3, v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->index:I

    if-ne v3, v1, :cond_1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;-><init>(ILkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;)V

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    goto :goto_0

    :cond_1
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, v4, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-virtual {v4, v3, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->set(ILkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;)V

    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    invoke-virtual {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->set(ILkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;-><init>(ILkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;)V

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;->arrayMap:Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    goto :goto_0

    :cond_3
    return-void
.end method
