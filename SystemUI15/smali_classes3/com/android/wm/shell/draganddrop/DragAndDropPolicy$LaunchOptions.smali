.class public final Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cellPosition:I

.field public final splitDivision:I

.field public final splitPosition:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitPosition:I

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->cellPosition:I

    iput p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitDivision:I

    return-void
.end method
