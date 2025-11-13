.class public abstract Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final _boolean:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _enum:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final annotation:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final annotationRetention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final annotationTarget:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final any:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final arrayClassFqNameToPrimitiveType:Ljava/util/Map;

.field public static final charSequence:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final cloneable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final collection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final comparable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final contextFunctionTypeParams:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final deprecated:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final deprecationLevel:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final extensionFunctionType:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final fqNameToPrimitiveType:Ljava/util/Map;

.field public static final iterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final iterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kProperty:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final list:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final listIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final map:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mustBeDocumented:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableCollection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableIterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableList:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableListIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableMap:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableMapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableSet:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final nothing:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final number:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final parameterName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final primitiveArrayTypeShortNames:Ljava/util/Set;

.field public static final primitiveTypeShortNames:Ljava/util/Set;

.field public static final replaceWith:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final retention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final set:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final string:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final throwable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uByteArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uIntArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uLong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uLongArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uShortArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Any"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->any:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Nothing"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->nothing:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Cloneable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->cloneable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Suppress"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Unit"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "CharSequence"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->charSequence:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "String"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->string:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Array"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Boolean"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_boolean:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Char"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Byte"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Short"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Int"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Long"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Float"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Double"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Number"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->number:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Enum"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_enum:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Function"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "Throwable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->throwable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Comparable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->comparable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->RANGES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "IntRange"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    const-string/jumbo v2, "toUnsafe(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "LongRange"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Deprecated"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecated:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "DeprecatedSinceKotlin"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "DeprecationLevel"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecationLevel:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ReplaceWith"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->replaceWith:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ExtensionFunctionType"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->extensionFunctionType:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ContextFunctionTypeParams"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->contextFunctionTypeParams:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ParameterName"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->parameterName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Annotation"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotation:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Target"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "AnnotationTarget"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationTarget:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "AnnotationRetention"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationRetention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Retention"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->retention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "Repeatable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "MustBeDocumented"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mustBeDocumented:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "UnsafeVariance"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "PublishedApi"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_INTERNAL_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "AccessibleLateinitPropertyLiteral"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Iterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->iterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Iterable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->iterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Collection"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "List"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->list:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ListIterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->listIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Set"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->set:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "Map"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->map:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "Entry"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableIterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableIterable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableIterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableCollection"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableCollection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableList"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableList:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableListIterator"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableListIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableSet"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableSet:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "MutableMap"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableMap:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "MutableEntry"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableMapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "KClass"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KType"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KCallable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KProperty0"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KProperty1"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KProperty2"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KMutableProperty0"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KMutableProperty1"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KMutableProperty2"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "KProperty"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    const-string v1, "KMutableProperty"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->toSafe()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kProperty:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "KDeclarationContainer"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "UByte"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    const-string v1, "UShort"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    const-string v2, "UInt"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    const-string v3, "ULong"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uLong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "UByteArray"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uByteArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "UShortArray"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uShortArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "UIntArray"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uIntArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "ULongArray"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uLongArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    div-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->primitiveTypeShortNames:Ljava/util/Set;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/HashSet;

    if-ge v0, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    div-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v3, v0

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->primitiveArrayTypeShortNames:Ljava/util/Set;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/HashMap;

    if-ge v0, v2, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    div-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    :goto_4
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v3, v0

    move v5, v4

    :goto_5
    const-string v6, "asString(...)"

    if-ge v5, v3, :cond_5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameToPrimitiveType:Ljava/util/Map;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Ljava/util/HashMap;

    if-ge v0, v2, :cond_6

    goto :goto_6

    :cond_6
    div-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    :goto_6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v2, v0

    :goto_7
    if-ge v4, v2, :cond_7

    aget-object v3, v0, v4

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->arrayClassFqNameToPrimitiveType:Ljava/util/Map;

    return-void
.end method

.method public static annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ANNOTATION_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0
.end method

.method public static collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COLLECTIONS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0
.end method

.method public static fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0
.end method

.method public static fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .locals 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    const-string/jumbo v0, "toUnsafe(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    const-string/jumbo v0, "toUnsafe(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
