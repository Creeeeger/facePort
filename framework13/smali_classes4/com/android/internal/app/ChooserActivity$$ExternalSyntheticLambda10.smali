.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$2:Z

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$2:Z

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda10;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->lambda$requestEnhancedImage$12$com-android-internal-app-ChooserActivity(IZI)V

    return-void
.end method
