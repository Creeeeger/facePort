.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public whitelist id:I

.field public whitelist toolType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 4989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4990
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 4991
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 4998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4999
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 5000
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "size"    # I

    .line 5005
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 5006
    .local v0, "array":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5007
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 5006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5009
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private greylist-max-o equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 5055
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 1

    .line 5032
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 5033
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 5034
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 5042
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 5043
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 5044
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 5048
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_0

    .line 5049
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p0, v0}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    return v0

    .line 5051
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 5060
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
