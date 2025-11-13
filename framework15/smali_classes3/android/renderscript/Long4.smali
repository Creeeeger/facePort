.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:J

.field public whitelist x:J

.field public whitelist y:J

.field public whitelist z:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    return-void
.end method

.method public constructor whitelist <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Long4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .locals 6

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 3

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 5

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(J)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Long4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o addAt(IJ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-void

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-void

    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o addMultiple(Landroid/renderscript/Long4;J)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o copyTo([JI)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    aput-wide v1, p1, v0

    return-void
.end method

.method public greylist-max-o div(J)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Long4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Long4;)J
    .locals 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-wide v0

    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o length()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public greylist-max-o mod(J)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Long4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o mul(J)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Long4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Long4;)V
    .locals 2

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o setAt(IJ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

    return-void

    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    return-void

    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    return-void

    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o setValues(JJJJ)V
    .locals 0

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o sub(J)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Long4;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method
