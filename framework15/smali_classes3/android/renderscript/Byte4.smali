.class public Landroid/renderscript/Byte4;
.super Ljava/lang/Object;
.source "Byte4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:B

.field public whitelist x:B

.field public whitelist y:B

.field public whitelist z:B


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(BBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Byte4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)B
    .locals 3

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Byte4;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o addAt(IB)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    :pswitch_3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

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

.method public greylist-max-o addMultiple(Landroid/renderscript/Byte4;B)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o copyTo([BI)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public greylist-max-o div(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Byte4;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Byte4;)B
    .locals 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()B
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o get(I)B
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return v0

    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    return v0

    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    return v0

    :pswitch_3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o length()B
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mul(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Byte4;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Byte4;)V
    .locals 1

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o setAt(IB)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    :pswitch_2
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    :pswitch_3
    iput-byte p2, p0, Landroid/renderscript/Byte4;->x:B

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

.method public greylist-max-o setValues(BBBB)V
    .locals 0

    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o sub(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Byte4;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method
