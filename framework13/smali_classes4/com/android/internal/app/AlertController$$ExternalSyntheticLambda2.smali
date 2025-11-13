.class public final synthetic Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AlertController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AlertController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AlertController;

    iput p2, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AlertController;

    iget v1, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/AlertController;->lambda$semSetupButtonsPadding$2$com-android-internal-app-AlertController(ILandroid/widget/Button;)V

    return-void
.end method
