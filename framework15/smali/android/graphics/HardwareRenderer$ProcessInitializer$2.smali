.class Landroid/graphics/HardwareRenderer$ProcessInitializer$2;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer$ProcessInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v1}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmContext(Landroid/graphics/HardwareRenderer$ProcessInitializer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "HardwareRenderer"

    if-nez v1, :cond_0

    const-string/jumbo v1, "mContext is null."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v1}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmContext(Landroid/graphics/HardwareRenderer$ProcessInitializer;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    const-string v3, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, "Failed to find default display for display-based configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    mul-int v8, v6, v7

    iget-object v9, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v9}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v9

    iget-object v10, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v10}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v10

    mul-int/2addr v9, v10

    if-eq v8, v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onDisplayChanged. displayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " current wxh="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " mLargest wxh="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v11}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v10}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v2, v6}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fputmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;I)V

    iget-object v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v2, v7}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fputmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;I)V

    nop

    invoke-virtual {v4}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v3

    goto :goto_0

    :cond_3
    nop

    :goto_0
    move v13, v3

    invoke-virtual {v4}, Landroid/view/Display;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v3

    iget-object v8, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v8}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestWidth(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v10

    iget-object v8, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$2;->this$0:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-static {v8}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->-$$Nest$fgetmLargestHeight(Landroid/graphics/HardwareRenderer$ProcessInitializer;)I

    move-result v11

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v12

    invoke-virtual {v4}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v14

    invoke-virtual {v4}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v16

    const/high16 v8, 0x18810000

    const/16 v0, 0x16

    invoke-virtual {v3, v8, v0}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v18

    const/high16 v0, 0xa0000

    const/high16 v8, 0x800000

    move-object/from16 v21, v1

    const/high16 v1, 0x18000000

    invoke-static {v0, v8, v1}, Landroid/hardware/DataSpace;->pack(III)I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {v3, v0, v1}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v19

    invoke-virtual {v3}, Landroid/hardware/OverlayProperties;->isMixedColorSpacesSupported()Z

    move-result v20

    invoke-static/range {v10 .. v20}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V

    goto :goto_1

    :cond_4
    move/from16 v9, p1

    move-object/from16 v21, v1

    :goto_1
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
