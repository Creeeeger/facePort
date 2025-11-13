.class public final synthetic Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    iput p4, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$3:I

    iget p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda6;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->$r8$lambda$Ff-psLGbkN2urWzA0UuZ1qkwUBE(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/content/Intent;Landroid/os/UserHandle;II)V

    return-void
.end method
