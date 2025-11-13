.class public final synthetic Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;II)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/FlagOp;

    iput p2, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$1:I

    not-int p0, p0

    and-int/2addr p0, p1

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$1:I

    or-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
