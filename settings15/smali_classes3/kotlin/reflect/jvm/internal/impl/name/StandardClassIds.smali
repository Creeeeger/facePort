.class public final Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final EnumEntries:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;

.field public static final KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final primitiveTypes:Ljava/util/Set;

.field public static final unsignedTypes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string/jumbo v1, "reflect"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "collections"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "ranges"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "jvm"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    const-string v5, "internal"

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "annotation"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    const-string v6, "ir"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v6, "coroutines"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v7, "enums"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v7, "contracts"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v7, "concurrent"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string/jumbo v7, "test"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    filled-new-array/range {v0 .. v6}, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    const-string v0, "Nothing"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Unit"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Any"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Enum"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Annotation"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Array"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Boolean"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    const-string v0, "Char"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    const-string v0, "Byte"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    const-string v0, "Short"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    const-string v0, "Int"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v5

    const-string v0, "Long"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    const-string v0, "Float"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v7

    const-string v0, "Double"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v8

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "CharSequence"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "String"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Throwable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Cloneable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KProperty"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KMutableProperty"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KProperty0"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KMutableProperty0"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KProperty1"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KMutableProperty1"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KProperty2"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KMutableProperty2"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KFunction"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KClass"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KCallable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KType"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Comparable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Number"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Function"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    filled-new-array/range {v1 .. v8}, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, "getShortClassName(...)"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$inverseMap(Ljava/util/Map;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    filled-new-array {v0, v1, v3, v6}, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v2

    if-ge v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$inverseMap(Ljava/util/Map;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "Continuation"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Iterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Iterable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Collection"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "List"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "ListIterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Set"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Map"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    const-string v1, "MutableIterator"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "CharIterator"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableIterable"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableCollection"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableList"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableListIterator"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableSet"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v1, "MutableMap"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v4, "Entry"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "MutableEntry"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Result"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "IntRange"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "LongRange"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "CharRange"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "AnnotationRetention"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "AnnotationTarget"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "DeprecationLevel"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->access$baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "EnumEntries"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->EnumEntries:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    :cond_6
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    throw v2
.end method
