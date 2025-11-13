.class public final Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method


# virtual methods
.method public final getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-object p0
.end method

.method public final replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;->attributes:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleTypeWithAttributes;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)V

    return-object v0
.end method
