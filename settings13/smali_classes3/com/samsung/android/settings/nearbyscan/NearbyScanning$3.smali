.class Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;
.super Ljava/lang/Object;
.source "NearbyScanning.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 276
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

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;->rect:Landroid/graphics/Rect;

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 279
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 281
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p1, 0xe75

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p0

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SwitchBar, send Event Log : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", on/off ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    const-string v0, "off 0)"

    goto :goto_0

    :cond_1
    const-string v0, "on 1000)"

    .line 286
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NearbyScanning"

    .line 284
    invoke-static {v0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xe74

    if-ne p0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3e8

    .line 287
    :goto_1
    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
