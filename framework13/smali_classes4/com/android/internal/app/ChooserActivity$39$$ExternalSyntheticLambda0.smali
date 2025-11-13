.class public final synthetic Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity$39;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/View;

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$39;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$39;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$39;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$39;->lambda$onTransitionEnd$0$com-android-internal-app-ChooserActivity$39(ILandroid/view/View;Z)V

    return-void
.end method
