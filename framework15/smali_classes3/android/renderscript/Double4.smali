.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:D

.field public whitelist x:D

.field public whitelist y:D

.field public whitelist z:D


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Double4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .locals 6

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 3

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 5

    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Double4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o addAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-void

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-void

    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Double4;D)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o copyTo([DI)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    aput-wide v1, p1, v0

    return-void
.end method

.method public greylist-max-o div(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Double4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Double4;)D
    .locals 6

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)D
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-wide v0

    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mul(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Double4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Double4;)V
    .locals 2

    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o setAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

    return-void

    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    return-void

    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    return-void

    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setValues(DDDD)V
    .locals 0

    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o sub(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Double4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-void
.end method
