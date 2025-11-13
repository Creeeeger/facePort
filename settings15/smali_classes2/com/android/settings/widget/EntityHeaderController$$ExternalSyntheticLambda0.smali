.class public final synthetic Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/EntityHeaderController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/EntityHeaderController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/EntityHeaderController;

    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget v0, p1, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    const/16 v1, 0x1d04

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p1, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
