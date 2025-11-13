.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;->$r8$classId:I

    check-cast p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->-$$Nest$monRemoved(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    return-void

    :goto_0
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->-$$Nest$monRemoved(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    iget-object p1, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mPredecessor:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
