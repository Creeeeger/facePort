.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# instance fields
.field public attached:Z

.field public color:I

.field private fakeCover:Z

.field private fotaMode:I

.field private heightPixel:I

.field private mVisibleRect:Landroid/graphics/Rect;

.field public model:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>(ZIIII)V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 377
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 378
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 379
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 380
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 381
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 383
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    .line 384
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    .line 385
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 398
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 399
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 400
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 401
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 402
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 403
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    const/4 p1, 0x0

    .line 404
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    .line 405
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    .line 406
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 421
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 422
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 423
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 424
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 425
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 426
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 427
    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    .line 429
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZIZ)V
    .locals 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 445
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 446
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 447
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 448
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 449
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 450
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 451
    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    .line 452
    iput-boolean p8, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    const/4 p1, 0x0

    .line 453
    iput p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method

.method public constructor <init>(ZIIIIZIZI)V
    .locals 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    .line 472
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 473
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 474
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 475
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 476
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 477
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 478
    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    .line 479
    iput-boolean p8, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    .line 480
    iput p9, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 499
    iget p0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    return p0
.end method

.method public setVisibleRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 567
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 580
    iget-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 582
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fotaMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->mVisibleRect:Landroid/graphics/Rect;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    const-string p0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d attached=%b fakeCover=%b fotaMode=%d VisibleRect=%s)"

    .line 580
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
