.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeDisplay id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayLifecycle"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
