.class public final synthetic Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$cancelPolling$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$cancelPolling$1;->$tmp0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$cancelPolling$1;->$tmp0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    return-void
.end method
