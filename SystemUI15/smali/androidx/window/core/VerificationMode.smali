.class public final enum Landroidx/window/core/VerificationMode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/window/core/VerificationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/window/core/VerificationMode;

.field public static final enum LOG:Landroidx/window/core/VerificationMode;

.field public static final enum QUIET:Landroidx/window/core/VerificationMode;

.field public static final enum STRICT:Landroidx/window/core/VerificationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/window/core/VerificationMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/core/VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/core/VerificationMode;->STRICT:Landroidx/window/core/VerificationMode;

    new-instance v1, Landroidx/window/core/VerificationMode;

    const-string v2, "LOG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/window/core/VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    new-instance v2, Landroidx/window/core/VerificationMode;

    const-string v3, "QUIET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/window/core/VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/window/core/VerificationMode;->QUIET:Landroidx/window/core/VerificationMode;

    filled-new-array {v0, v1, v2}, [Landroidx/window/core/VerificationMode;

    move-result-object v0

    sput-object v0, Landroidx/window/core/VerificationMode;->$VALUES:[Landroidx/window/core/VerificationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/window/core/VerificationMode;
    .locals 1

    const-class v0, Landroidx/window/core/VerificationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/window/core/VerificationMode;

    return-object p0
.end method

.method public static values()[Landroidx/window/core/VerificationMode;
    .locals 1

    sget-object v0, Landroidx/window/core/VerificationMode;->$VALUES:[Landroidx/window/core/VerificationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/window/core/VerificationMode;

    return-object v0
.end method
