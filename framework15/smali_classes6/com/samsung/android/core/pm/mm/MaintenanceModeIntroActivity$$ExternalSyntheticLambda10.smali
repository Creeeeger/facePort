.class public final synthetic Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/CheckedTextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/CheckedTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;->f$0:Landroid/widget/CheckedTextView;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;->f$0:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$21(Landroid/widget/CheckedTextView;Landroid/view/View;)V

    return-void
.end method
