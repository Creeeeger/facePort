.class Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtchLongPressEvent"
.end annotation


# instance fields
.field private blacklist bundle:Landroid/os/Bundle;

.field private blacklist eventFlag:I

.field private blacklist eventToolType:I

.field private blacklist findViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist foundViewContent:Ljava/lang/Object;

.field private final blacklist requestCode:J

.field private final blacklist touchedPoint:Landroid/graphics/PointF;

.field private final blacklist touchedRawPoint:Landroid/graphics/PointF;

.field private blacklist touchedView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeteventToolType(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventToolType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->foundViewContent:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->requestCode:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettouchedPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettouchedRawPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedRawPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->foundViewContent:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    return-void
.end method

.method public constructor blacklist <init>(JILandroid/view/MotionEvent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    iput-wide p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->requestCode:J

    iput p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedRawPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventToolType:I

    return-void
.end method

.method public constructor blacklist <init>(JILandroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    iput-wide p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->requestCode:J

    iput p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    iput-object p4, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedPoint:Landroid/graphics/PointF;

    iput-object p6, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedRawPoint:Landroid/graphics/PointF;

    iput-object p7, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected blacklist clone()Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;
    .locals 9

    new-instance v8, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    iget-wide v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->requestCode:J

    iget v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedRawPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;-><init>(JILandroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->findViewInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->foundViewContent:Ljava/lang/Object;

    iput-object v1, v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->foundViewContent:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->clone()Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content( requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->requestCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->eventFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchedPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", touchRawPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->touchedRawPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
