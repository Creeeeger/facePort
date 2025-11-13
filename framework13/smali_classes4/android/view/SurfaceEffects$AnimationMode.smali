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
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 75
    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    .line 76
    new-instance v1, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v3, "LOOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/view/SurfaceEffects$AnimationMode;->LOOP:Landroid/view/SurfaceEffects$AnimationMode;

    .line 77
    new-instance v3, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v5, "ONCE_STAY_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

    .line 78
    new-instance v5, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v7, "ONCE_STAY_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    .line 79
    new-instance v7, Landroid/view/SurfaceEffects$AnimationMode;

    const-string v9, "ONCE_DESTROY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    .line 74
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$AnimationMode;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    const-class v0, Landroid/view/SurfaceEffects$AnimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    .line 74
    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$AnimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method
