.class public final synthetic Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    invoke-virtual {p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateWifiEntries()V

    invoke-virtual {p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateUi()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
