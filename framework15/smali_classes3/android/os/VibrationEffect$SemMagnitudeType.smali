.class public final enum Landroid/os/VibrationEffect$SemMagnitudeType;
.super Ljava/lang/Enum;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemMagnitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/VibrationEffect$SemMagnitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum whitelist TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum blacklist TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum blacklist TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum whitelist TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum whitelist TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum whitelist TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

.field public static final enum whitelist TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 7

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    sget-object v6, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    filled-new-array/range {v0 .. v6}, [Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_CALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_MIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_EXTRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_FORCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->$values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, [Landroid/os/VibrationEffect$SemMagnitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method
