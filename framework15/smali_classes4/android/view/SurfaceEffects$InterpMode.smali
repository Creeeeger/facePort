.class public final enum Landroid/view/SurfaceEffects$InterpMode;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/SurfaceEffects$InterpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/SurfaceEffects$InterpMode;

.field public static final enum blacklist HOLD:Landroid/view/SurfaceEffects$InterpMode;

.field public static final enum blacklist LINEAR:Landroid/view/SurfaceEffects$InterpMode;

.field public static final enum blacklist SMOOTH:Landroid/view/SurfaceEffects$InterpMode;

.field public static final enum blacklist SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

.field public static final enum blacklist SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;


# instance fields
.field public final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/SurfaceEffects$InterpMode;
    .locals 5

    sget-object v0, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    sget-object v1, Landroid/view/SurfaceEffects$InterpMode;->LINEAR:Landroid/view/SurfaceEffects$InterpMode;

    sget-object v2, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH:Landroid/view/SurfaceEffects$InterpMode;

    sget-object v3, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    sget-object v4, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/view/SurfaceEffects$InterpMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/SurfaceEffects$InterpMode;

    const-string v1, "HOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    new-instance v0, Landroid/view/SurfaceEffects$InterpMode;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->LINEAR:Landroid/view/SurfaceEffects$InterpMode;

    new-instance v0, Landroid/view/SurfaceEffects$InterpMode;

    const-string v1, "SMOOTH"

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH:Landroid/view/SurfaceEffects$InterpMode;

    new-instance v0, Landroid/view/SurfaceEffects$InterpMode;

    const-string v1, "SMOOTH_OUT"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Landroid/view/SurfaceEffects$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    new-instance v0, Landroid/view/SurfaceEffects$InterpMode;

    const-string v1, "SMOOTH_IN"

    invoke-direct {v0, v1, v3, v4}, Landroid/view/SurfaceEffects$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-static {}, Landroid/view/SurfaceEffects$InterpMode;->$values()[Landroid/view/SurfaceEffects$InterpMode;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects$InterpMode;->$VALUES:[Landroid/view/SurfaceEffects$InterpMode;

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

    iput p3, p0, Landroid/view/SurfaceEffects$InterpMode;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$InterpMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/view/SurfaceEffects$InterpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$InterpMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$InterpMode;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$InterpMode;->$VALUES:[Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$InterpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$InterpMode;

    return-object v0
.end method
