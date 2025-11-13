.class public final synthetic Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerBackgroundUsageDetail$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
