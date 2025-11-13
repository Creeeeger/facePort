.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private greylist-max-o strategy:I

.field private greylist-max-o xend:I

.field private greylist-max-o xstart:I

.field private greylist-max-o yend:I

.field private greylist-max-o ystart:I

.field private greylist-max-o zend:I

.field private greylist-max-o zstart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 0

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method


# virtual methods
.method public whitelist getXEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public whitelist getXStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public whitelist getYEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public whitelist getYStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public whitelist getZEnd()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public whitelist getZStart()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public whitelist setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return-object p0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return-object p0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2

    if-ltz p1, :cond_0

    if-le p2, p1, :cond_0

    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-object p0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
