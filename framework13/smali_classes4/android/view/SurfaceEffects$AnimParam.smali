.class public final enum Landroid/view/SurfaceEffects$AnimParam;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/SurfaceEffects$AnimParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist ALPHA:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist BLUR_ALPHA:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum blacklist SATURATION:Landroid/view/SurfaceEffects$AnimParam;


# instance fields
.field public final blacklist id:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    .line 91
    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    .line 92
    new-instance v1, Landroid/view/SurfaceEffects$AnimParam;

    const-string v4, "BLUR_RADIUS"

    const/4 v5, 0x1

    const/16 v6, 0xd

    invoke-direct {v1, v4, v5, v6}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    .line 93
    new-instance v4, Landroid/view/SurfaceEffects$AnimParam;

    const-string v7, "BLUR_SATURATION"

    const/4 v8, 0x2

    const/16 v9, 0xe

    invoke-direct {v4, v7, v8, v9}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    .line 94
    new-instance v7, Landroid/view/SurfaceEffects$AnimParam;

    const-string v10, "BLUR_ALPHA"

    const/4 v11, 0x3

    const/16 v12, 0xf

    invoke-direct {v7, v10, v11, v12}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    .line 95
    new-instance v10, Landroid/view/SurfaceEffects$AnimParam;

    const-string v12, "SATURATION"

    const/4 v13, 0x4

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/view/SurfaceEffects$AnimParam;->SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    .line 96
    new-instance v12, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_SIZE_X"

    const/4 v15, 0x5

    const/16 v13, 0x14

    invoke-direct {v12, v14, v15, v13}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

    .line 97
    new-instance v13, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_SIZE_Y"

    const/4 v15, 0x6

    const/16 v11, 0x15

    invoke-direct {v13, v14, v15, v11}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

    .line 98
    new-instance v11, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_CORNER_SIZE"

    const/4 v15, 0x7

    const/16 v8, 0x16

    invoke-direct {v11, v14, v15, v8}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/view/SurfaceEffects$AnimParam;->REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

    .line 99
    new-instance v8, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_POS_X"

    const/16 v15, 0x8

    const/16 v5, 0x17

    invoke-direct {v8, v14, v15, v5}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

    .line 100
    new-instance v5, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_POS_Y"

    const/16 v15, 0x9

    const/16 v2, 0x18

    invoke-direct {v5, v14, v15, v2}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

    .line 101
    new-instance v2, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_FACTOR_X"

    const/16 v15, 0xa

    const/16 v9, 0x1b

    invoke-direct {v2, v14, v15, v9}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

    .line 102
    new-instance v9, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_FACTOR_Y"

    const/16 v15, 0xb

    const/16 v6, 0x1c

    invoke-direct {v9, v14, v15, v6}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

    .line 103
    new-instance v6, Landroid/view/SurfaceEffects$AnimParam;

    const-string v14, "REGION_OFFSET_X"

    const/16 v15, 0x1f

    invoke-direct {v6, v14, v3, v15}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

    .line 104
    new-instance v14, Landroid/view/SurfaceEffects$AnimParam;

    const-string v15, "REGION_OFFSET_Y"

    const/16 v3, 0x20

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v14, v15, v6, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

    .line 90
    const/16 v3, 0xe

    new-array v3, v3, [Landroid/view/SurfaceEffects$AnimParam;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v10, v3, v0

    const/4 v0, 0x5

    aput-object v12, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v11, v3, v0

    const/16 v0, 0x8

    aput-object v8, v3, v0

    const/16 v0, 0x9

    aput-object v5, v3, v0

    const/16 v0, 0xa

    aput-object v2, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v14, v3, v0

    sput-object v3, Landroid/view/SurfaceEffects$AnimParam;->$VALUES:[Landroid/view/SurfaceEffects$AnimParam;

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

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$AnimParam;->id:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$AnimParam;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Landroid/view/SurfaceEffects$AnimParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimParam;

    return-object v0
.end method

.method public static blacklist values()[Landroid/view/SurfaceEffects$AnimParam;
    .locals 1

    .line 90
    sget-object v0, Landroid/view/SurfaceEffects$AnimParam;->$VALUES:[Landroid/view/SurfaceEffects$AnimParam;

    invoke-virtual {v0}, [Landroid/view/SurfaceEffects$AnimParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceEffects$AnimParam;

    return-object v0
.end method
