.class public final enum Landroid/view/SurfaceEffects$EffectTarget;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/SurfaceEffects$EffectTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

.field public static final enum blacklist BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

.field public static final enum blacklist SELF:Landroid/view/SurfaceEffects$EffectTarget;

.field public static final enum blacklist SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;


# instance fields
.field public final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/SurfaceEffects$EffectTarget;
    .locals 3

    sget-object v0, Landroid/view/SurfaceEffects$EffectTarget;->SELF:Landroid/view/SurfaceEffects$EffectTarget;

    sget-object v1, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    sget-object v2, Landroid/view/SurfaceEffects$EffectTarget;->SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    filled-new-array {v0, v1, v2}, [Landroid/view/SurfaceEffects$EffectTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/SurfaceEffects$EffectTarget;

    const-string v1, "SELF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->SELF:Landroid/view/SurfaceEffects$EffectTarget;

    new-instance v0, Landroid/view/SurfaceEffects$EffectTarget;

    const-string v1, "BEHIND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/view/SurfaceEffects$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    new-instance v0, Landroid/view/SurfaceEffects$EffectTarget;

    const-string v1, "SELF_AND_BEHIND"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    invoke-static {}, Landroid/view/SurfaceEffects$EffectTarget;->$values()[Landroid/view/SurfaceEffects$EffectTarget;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->$VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

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

    iput p3, p0, Landroid/view/SurfaceEffects$EffectTarget;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/view/SurfaceEffects$EffectTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$EffectTarget;->$VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$EffectTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method
