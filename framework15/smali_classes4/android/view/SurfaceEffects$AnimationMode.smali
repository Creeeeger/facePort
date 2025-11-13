.class public final enum Landroid/view/SurfaceEffects$AnimationMode;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/SurfaceEffects$AnimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum blacklist LOOP:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum blacklist ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum blacklist ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum blacklist ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum blacklist STATIC:Landroid/view/SurfaceEffects$AnimationMode;


# instance fields
.field public final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/view/SurfaceEffects$AnimationMode;
    .locals 5

    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->LOOP:Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v2, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v3, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v4, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/view/SurfaceEffects$AnimationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "LOOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->LOOP:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "ONCE_STAY_START"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "ONCE_STAY_END"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "ONCE_DESTROY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-static {}, Landroid/view/SurfaceEffects$AnimationMode;->$values()[Landroid/view/SurfaceEffects$AnimationMode;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

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

    iput p3, p0, Landroid/view/SurfaceEffects$AnimationMode;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/view/SurfaceEffects$AnimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$AnimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method
