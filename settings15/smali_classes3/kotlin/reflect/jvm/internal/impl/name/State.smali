.class final enum Lkotlin/reflect/jvm/internal/impl/name/State;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/name/State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/name/State;

.field public static final enum AFTER_DOT:Lkotlin/reflect/jvm/internal/impl/name/State;

.field public static final enum BEGINNING:Lkotlin/reflect/jvm/internal/impl/name/State;

.field public static final enum MIDDLE:Lkotlin/reflect/jvm/internal/impl/name/State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/State;

    const-string v1, "BEGINNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/State;->BEGINNING:Lkotlin/reflect/jvm/internal/impl/name/State;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/State;

    const-string v2, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/State;->MIDDLE:Lkotlin/reflect/jvm/internal/impl/name/State;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/State;

    const-string v3, "AFTER_DOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/name/State;->AFTER_DOT:Lkotlin/reflect/jvm/internal/impl/name/State;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/name/State;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/State;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/name/State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/State;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/name/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/State;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/name/State;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/State;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/name/State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/name/State;

    return-object v0
.end method
