.class public final Lcom/android/wm/shell/util/SplitBounds;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/SplitBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appsStackedVertically:Z

.field public final cellDividerBounds:Landroid/graphics/Rect;

.field public final cellDividerHeightPercent:F

.field public final cellDividerWidthPercent:F

.field public final cellLeftTaskPercent:F

.field public final cellPosition:I

.field public final cellTaskBounds:Landroid/graphics/Rect;

.field public final cellTaskId:I

.field public final cellTopTaskPercent:F

.field public final dividerHeightPercent:F

.field public final dividerWidthPercent:F

.field public final leftTaskPercent:F

.field public final leftTopBounds:Landroid/graphics/Rect;

.field public final leftTopTaskId:I

.field public final rightBottomBounds:Landroid/graphics/Rect;

.field public final rightBottomTaskId:I

.field public final snapPosition:I

.field public final topTaskPercent:F

.field public final visualDividerBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/util/SplitBounds$1;

    invoke-direct {v0}, Lcom/android/wm/shell/util/SplitBounds$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iput p5, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->snapPosition:I

    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    iput p8, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eqz p4, :cond_7

    const/4 p4, -0x1

    if-eq p7, p4, :cond_7

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 p7, 0x3f800000    # 1.0f

    if-nez p9, :cond_3

    iput-boolean p6, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    and-int/lit8 p5, p8, 0x8

    if-eqz p5, :cond_1

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p6, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    int-to-float p5, p5

    new-instance p6, Landroid/graphics/Rect;

    iget p9, p4, Landroid/graphics/Rect;->right:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p6, p8, 0x10

    if-eqz p6, :cond_0

    new-instance p6, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->left:I

    iget p9, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance p6, Landroid/graphics/Rect;

    iget p8, p1, Landroid/graphics/Rect;->left:I

    iget p9, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget p5, p4, Landroid/graphics/Rect;->right:I

    iget p6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    int-to-float p5, p5

    new-instance p6, Landroid/graphics/Rect;

    iget p9, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p6, p8, 0x10

    if-eqz p6, :cond_2

    new-instance p6, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->left:I

    iget p9, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    new-instance p6, Landroid/graphics/Rect;

    iget p8, p2, Landroid/graphics/Rect;->left:I

    iget p9, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    goto/16 :goto_2

    :cond_3
    iput-boolean p5, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    and-int/lit8 p5, p8, 0x10

    if-eqz p5, :cond_5

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    iget p6, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p6

    int-to-float p5, p5

    new-instance p6, Landroid/graphics/Rect;

    iget p9, p4, Landroid/graphics/Rect;->left:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p6, p8, 0x8

    if-eqz p6, :cond_4

    new-instance p6, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->right:I

    iget p9, p3, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    new-instance p6, Landroid/graphics/Rect;

    iget p8, p1, Landroid/graphics/Rect;->right:I

    iget p9, p1, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_5
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget p5, p4, Landroid/graphics/Rect;->bottom:I

    iget p6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p6

    int-to-float p5, p5

    new-instance p6, Landroid/graphics/Rect;

    iget p9, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    and-int/lit8 p6, p8, 0x8

    if-eqz p6, :cond_6

    new-instance p6, Landroid/graphics/Rect;

    iget p8, p3, Landroid/graphics/Rect;->right:I

    iget p9, p3, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_6
    new-instance p6, Landroid/graphics/Rect;

    iget p8, p2, Landroid/graphics/Rect;->right:I

    iget p9, p2, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p6, p8, p9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p6

    int-to-float p6, p6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p6, p1

    iput p6, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    iput p7, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    move v3, p5

    move p5, p1

    move p1, v3

    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p5

    iput p2, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    iget-object p2, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    goto :goto_4

    :cond_7
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    if-le p3, p4, :cond_8

    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    iget p6, p1, Landroid/graphics/Rect;->bottom:I

    iget p7, p1, Landroid/graphics/Rect;->right:I

    iget p8, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p3, p4, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    iput-boolean p5, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    goto :goto_3

    :cond_8
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p5, p1, Landroid/graphics/Rect;->top:I

    iget p7, p2, Landroid/graphics/Rect;->left:I

    iget p8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p4, p5, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    iput-boolean p6, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    :goto_3
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    iput p4, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    iget-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    :goto_4
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->snapPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/wm/shell/util/SplitBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LeftTop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nRightBottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncell: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n(Percent) top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cell_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cell_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nDivider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nCellDivider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nCellPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAppsVertical? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nsnapPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->snapPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerWidthPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->dividerHeightPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->snapPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerWidthPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellDividerHeightPercent:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
