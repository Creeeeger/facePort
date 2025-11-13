.class public final enum Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_MODULE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_PROPERTY:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;


# instance fields
.field private final debugText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v1, "<Error class: %s>"

    const-string v2, "ERROR_CLASS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v2, "<Error function>"

    const-string v3, "ERROR_FUNCTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v3, "<Error scope>"

    const-string v4, "ERROR_SCOPE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v4, "<Error module>"

    const-string v5, "ERROR_MODULE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_MODULE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v5, "<Error property>"

    const-string v6, "ERROR_PROPERTY"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_PROPERTY:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v6, "[Error type: %s]"

    const-string v7, "ERROR_TYPE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    const-string v7, "<Fake parent for error lexical scope>"

    const-string v8, "PARENT_OF_ERROR_SCOPE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->debugText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    return-object v0
.end method


# virtual methods
.method public final getDebugText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->debugText:Ljava/lang/String;

    return-object p0
.end method
