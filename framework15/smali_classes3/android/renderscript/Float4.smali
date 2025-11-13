.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:F

.field public whitelist x:F

.field public whitelist y:F

.field public whitelist z:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float4;->x:F

    iput p2, p0, Landroid/renderscript/Float4;->y:F

    iput p3, p0, Landroid/renderscript/Float4;->z:F

    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .locals 3

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iget v2, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iget v2, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    iget v2, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float4;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void

    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    return-void

    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    return-void

    :pswitch_3
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->x:F

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

.method public greylist-max-o addMultiple(Landroid/renderscript/Float4;F)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    aput v1, p1, v0

    return-void
.end method

.method public greylist-max-o div(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float4;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float4;)F
    .locals 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()F
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)F
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    return v0

    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    return v0

    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    return v0

    :pswitch_3
    iget v0, p0, Landroid/renderscript/Float4;->x:F

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

.method public greylist-max-o length()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mul(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float4;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float4;)V
    .locals 1

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float4;->w:F

    return-void

    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    return-void

    :pswitch_2
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    return-void

    :pswitch_3
    iput p2, p0, Landroid/renderscript/Float4;->x:F

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

.method public greylist-max-o setValues(FFFF)V
    .locals 0

    iput p1, p0, Landroid/renderscript/Float4;->x:F

    iput p2, p0, Landroid/renderscript/Float4;->y:F

    iput p3, p0, Landroid/renderscript/Float4;->z:F

    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o sub(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float4;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method
