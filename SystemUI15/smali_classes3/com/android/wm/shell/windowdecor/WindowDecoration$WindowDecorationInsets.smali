.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBoundingRects:[Landroid/graphics/Rect;

.field public final mFlags:I

.field public final mFrame:Landroid/graphics/Rect;

.field public final mOwner:Landroid/os/Binder;

.field public final mToken:Landroid/window/WindowContainerToken;


# direct methods
.method private constructor <init>(Landroid/window/WindowContainerToken;Landroid/os/Binder;Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/window/WindowContainerToken;Landroid/os/Binder;Landroid/graphics/Rect;[Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;-><init>(Landroid/window/WindowContainerToken;Landroid/os/Binder;Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V

    return-void
.end method


# virtual methods
.method public final addOrUpdate(Landroid/window/WindowContainerTransaction;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFlags:I

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;[Landroid/graphics/Rect;I)Landroid/window/WindowContainerTransaction;

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v13

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;[Landroid/graphics/Rect;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v1, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFlags:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFlags:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final remove(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mToken:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$WindowDecorationInsets;->mOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v1

    invoke-virtual {p1, v0, p0, v3, v1}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    return-void
.end method
