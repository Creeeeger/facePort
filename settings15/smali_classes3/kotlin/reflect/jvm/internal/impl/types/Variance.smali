.class public final enum Lkotlin/reflect/jvm/internal/impl/types/Variance;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/Variance;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field public static final enum INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field public static final enum IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field public static final enum OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;


# instance fields
.field private final allowsInPosition:Z

.field private final allowsOutPosition:Z

.field private final label:Ljava/lang/String;

.field private final superpositionFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/Variance;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const-string v9, "IN_VARIANCE"

    const/4 v10, 0x1

    const-string v11, "in"

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/types/Variance;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const-string v16, "OUT_VARIANCE"

    const/16 v17, 0x2

    const-string v18, "out"

    const/16 v19, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lkotlin/reflect/jvm/internal/impl/types/Variance;-><init>(Ljava/lang/String;ILjava/lang/String;ZZI)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    filled-new-array {v7, v0, v1}, [Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->label:Ljava/lang/String;

    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->allowsInPosition:Z

    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->allowsOutPosition:Z

    iput p6, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->superpositionFactor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object v0
.end method


# virtual methods
.method public final getAllowsOutPosition()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->allowsOutPosition:Z

    return p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->label:Ljava/lang/String;

    return-object p0
.end method
