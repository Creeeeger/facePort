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
.field private blacklist mvalue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 3088
    new-instance v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->EMPTY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 3092
    new-instance v1, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v3, "SPAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 3096
    new-instance v3, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v5, "STYLUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 3100
    new-instance v5, Landroid/hardware/input/InputManager$SemTspCommandType;

    const-string v7, "BRUSH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/hardware/input/InputManager$SemTspCommandType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    .line 3083
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/hardware/input/InputManager$SemTspCommandType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3105
    iput p3, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mvalue:I

    .line 3106
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3083
    const-class v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/hardware/input/InputManager$SemTspCommandType;
    .locals 1

    .line 3083
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->$VALUES:[Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, [Landroid/hardware/input/InputManager$SemTspCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/InputManager$SemTspCommandType;

    return-object v0
.end method


# virtual methods
.method public blacklist getvalue()I
    .locals 1

    .line 3110
    iget v0, p0, Landroid/hardware/input/InputManager$SemTspCommandType;->mvalue:I

    return v0
.end method
