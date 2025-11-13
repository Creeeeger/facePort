.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;->f$2:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->lambda$setPrivateShareTipClickListener$16$com-android-internal-app-ChooserActivity(IZLandroid/view/View;)V

    return-void
.end method
