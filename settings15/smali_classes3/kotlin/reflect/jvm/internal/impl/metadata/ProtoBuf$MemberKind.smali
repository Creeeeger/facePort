.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

.field public static final enum DECLARATION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

.field public static final enum DELEGATION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

.field public static final enum FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

.field public static final enum SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    const-string v2, "FAKE_OVERRIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    const-string v3, "DELEGATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    const-string v4, "SYNTHESIZED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->value:I

    return p0
.end method
