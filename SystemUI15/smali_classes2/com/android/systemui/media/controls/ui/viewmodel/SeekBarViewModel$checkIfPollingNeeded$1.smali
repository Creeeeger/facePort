.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cancelPolling:Ljava/lang/Runnable;

.field public final synthetic $traceCookie:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;->$cancelPolling:Ljava/lang/Runnable;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;->$traceCookie:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;->$cancelPolling:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "SeekBarPollingPosition"

    iget p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;->$traceCookie:I

    invoke-static {v0, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
