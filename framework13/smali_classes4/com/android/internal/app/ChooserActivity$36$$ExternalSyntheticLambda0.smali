.class public final synthetic Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity$36;

.field public final synthetic blacklist f$1:Landroid/widget/LinearLayout;

.field public final synthetic blacklist f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$36;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$36;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$36;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity$36;->lambda$onAnimationEnd$0$com-android-internal-app-ChooserActivity$36(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method
