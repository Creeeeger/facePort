.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $state:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;->$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScanStateChanged$1;->$state:Z

    sget v1, Lcom/android/systemui/qs/SecQSDetailController;->$r8$clinit:I

    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->scanState:Z

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p0, v0, Lcom/android/systemui/qs/SecQSDetailController;->scanState:Z

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
