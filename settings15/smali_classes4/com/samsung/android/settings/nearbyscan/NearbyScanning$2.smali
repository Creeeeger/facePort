.class public final Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->rect:Landroid/graphics/Rect;

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p0

    if-ne p0, v1, :cond_1

    const-string/jumbo p1, "off 0)"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "on 1000)"

    :goto_0
    const-string p2, "SwitchBar, send Event Log : 3701, on/off ("

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NearbyScanning"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v1, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x3e8

    :goto_1
    const/16 p2, 0xe74

    const/16 v0, 0xe75

    invoke-static {p2, v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
