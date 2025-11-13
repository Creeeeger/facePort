.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

.field public final synthetic f$1:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
