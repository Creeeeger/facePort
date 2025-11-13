.class public final Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public circleBitmaps:[Landroid/graphics/Bitmap;

.field public final mCirclePathBuffer:Landroid/graphics/Path;

.field public final synthetic this$0:Lcom/github/mikephil/charting/renderer/LineChartRenderer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->this$0:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->mCirclePathBuffer:Landroid/graphics/Path;

    return-void
.end method
