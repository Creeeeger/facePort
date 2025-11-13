.class public final Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public columnWidths:[I

.field public rowHeights:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->rowHeights:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;->columnWidths:[I

    return-void
.end method
