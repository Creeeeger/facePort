.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public final synthetic f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V
    .locals 0

    iput p4, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object p3, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object v0, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    sget-object v2, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    iget-object v2, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/app/viewcapture/ViewCapture;

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iget-object v2, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
