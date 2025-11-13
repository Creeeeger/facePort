.class public final synthetic Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/condition/Monitor$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/condition/ConditionalCoreStartable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/condition/ConditionalCoreStartable;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/condition/ConditionalCoreStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/condition/ConditionalCoreStartable;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->$r8$lambda$NNQGqWN1cG6wxs6BMk0gwIc6goc(Lcom/android/systemui/util/condition/ConditionalCoreStartable;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->$r8$lambda$tnz6ORQnrqe5Qv2OdRnwNAucl9s(Lcom/android/systemui/util/condition/ConditionalCoreStartable;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
