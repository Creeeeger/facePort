.class public final Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final salesCode:Ljava/lang/String;

.field public final singleSKU:Z

.field public final unified:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->salesCode:Ljava/lang/String;

    const-string v0, "mdc.singlesku"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->singleSKU:Z

    const-string v0, "mdc.unified"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;->unified:Z

    const-string p0, "persist.ril.config.dualims"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
