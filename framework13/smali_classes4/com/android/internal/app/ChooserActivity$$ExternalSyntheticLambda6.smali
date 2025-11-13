.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->lambda$semSetUpSettingsButton$7(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method
