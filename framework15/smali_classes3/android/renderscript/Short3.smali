.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:S

.field public whitelist y:S

.field public whitelist z:S


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Short3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public constructor greylist-max-o <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    return-void
.end method

.method public constructor whitelist <init>(SSS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .locals 3

    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    iget-short v2, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2

    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/renderscript/Short3;)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o add(S)V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o addAt(IS)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void

    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    return-void

    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Short3;S)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o copyTo([SI)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    aput-short v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    aput-short v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    aput-short v1, p1, v0

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Short3;)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o div(S)V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Short3;)S
    .locals 3

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()S
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o get(I)S
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    return v0

    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    return v0

    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o length()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mod(Landroid/renderscript/Short3;)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o mod(S)V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Short3;)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o mul(S)V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Short3;)V
    .locals 1

    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o setAt(IS)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

    return-void

    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    return-void

    :pswitch_2
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setValues(SSS)V
    .locals 0

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Short3;)V
    .locals 2

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method

.method public greylist-max-o sub(S)V
    .locals 1

    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    return-void
.end method
