.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    return p0

    :pswitch_0
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
