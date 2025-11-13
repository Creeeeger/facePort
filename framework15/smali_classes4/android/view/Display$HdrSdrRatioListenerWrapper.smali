.class Landroid/view/Display$HdrSdrRatioListenerWrapper;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrSdrRatioListenerWrapper"
.end annotation


# instance fields
.field blacklist mLastReportedRatio:F

.field blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/Display;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Display;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    iput-object p2, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display$HdrSdrRatioListenerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result v0

    iget v1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    iget-object v1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
