.class public final enum Landroid/hardware/input/InputManager$SemTspCommandType;
.super Ljava/lang/Enum;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemTspCommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/input/InputManager$SemTspCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum whitelist BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum blacklist EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum whitelist SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

.field public static final enum whitelist STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 4

    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    sget-object v2, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    sget-object v3, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/hardware/input/InputManager$SemTspCommandType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v1, "SPAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v1, "STYLUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v1, "BRUSH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-static {}, Landroid/hardware/input/InputManager$SemTspCommandType;->$values()[Landroid/hardware/input/InputManager$SemTspCommandType;

    move-result-object v0

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mValue:I

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1

    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, [Landroid/hardware/input/InputManager$SemTspCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method


# virtual methods
.method public blacklist getvalue()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mValue:I

    return v0
.end method
