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
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 1505
    new-instance v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v1, "TYPE_TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1509
    new-instance v1, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v3, "TYPE_NOTIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1513
    new-instance v3, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v5, "TYPE_CALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1517
    new-instance v5, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v7, "TYPE_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1521
    new-instance v7, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v9, "TYPE_MIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1525
    new-instance v9, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v11, "TYPE_EXTRA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1529
    new-instance v11, Landroid/os/VibrationEffect$SemMagnitudeType;

    const-string v13, "TYPE_FORCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/os/VibrationEffect$SemMagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1501
    const/4 v13, 0x7

    new-array v13, v13, [Landroid/os/VibrationEffect$SemMagnitudeType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1501
    const-class v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    .line 1501
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->$VALUES:[Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v0}, [Landroid/os/VibrationEffect$SemMagnitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method
