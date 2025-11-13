.class public final synthetic Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController$4;IIZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController$5;IIZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$5;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$5;->this$0:Lcom/android/systemui/biometrics/AuthController;

    const/16 v3, 0x8

    invoke-static {v0, v3, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthController;->-$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$4;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$4;->this$0:Lcom/android/systemui/biometrics/AuthController;

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthController;->-$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
