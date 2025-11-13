.class public final enum Landroid/os/Vibrator$SemMagnitudeTypes;
.super Ljava/lang/Enum;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemMagnitudeTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/Vibrator$SemMagnitudeTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

.field public static final enum blacklist TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;


# direct methods
.method private static synthetic blacklist $values()[Landroid/os/Vibrator$SemMagnitudeTypes;
    .locals 7

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    filled-new-array/range {v0 .. v6}, [Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_CALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_MIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_EXTRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    const-string v1, "TYPE_FORCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$SemMagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-static {}, Landroid/os/Vibrator$SemMagnitudeTypes;->$values()[Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    sput-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

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

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator$SemMagnitudeTypes;

    return-object v0
.end method

.method public static blacklist values()[Landroid/os/Vibrator$SemMagnitudeTypes;
    .locals 1

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, [Landroid/os/Vibrator$SemMagnitudeTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Vibrator$SemMagnitudeTypes;

    return-object v0
.end method
