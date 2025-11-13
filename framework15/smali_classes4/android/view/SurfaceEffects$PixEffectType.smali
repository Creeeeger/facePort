.class public final enum Landroid/view/SurfaceEffects$PixEffectType;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/SurfaceEffects$PixEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum blacklist BLUR:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum blacklist MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum blacklist NONE:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum blacklist SATURATE:Landroid/view/SurfaceEffects$PixEffectType;


# instance fields
.field public final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/SurfaceEffects$PixEffectType;
    .locals 4

    sget-object v0, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    sget-object v1, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    sget-object v2, Landroid/view/SurfaceEffects$PixEffectType;->SATURATE:Landroid/view/SurfaceEffects$PixEffectType;

    sget-object v3, Landroid/view/SurfaceEffects$PixEffectType;->MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/view/SurfaceEffects$PixEffectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string v1, "BLUR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string v1, "SATURATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->SATURATE:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const-string v3, "MAGNIFIER"

    invoke-direct {v0, v3, v1, v2}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

    invoke-static {}, Landroid/view/SurfaceEffects$PixEffectType;->$values()[Landroid/view/SurfaceEffects$PixEffectType;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->$VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

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

    iput p3, p0, Landroid/view/SurfaceEffects$PixEffectType;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/view/SurfaceEffects$PixEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$PixEffectType;->$VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$PixEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method
