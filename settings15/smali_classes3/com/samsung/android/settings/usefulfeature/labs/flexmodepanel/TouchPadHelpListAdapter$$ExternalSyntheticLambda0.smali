.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;

.field public final synthetic f$1:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpListAdapter;->mClickListener:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadGestureHelp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TouchPadHelpModel;->mPosition:I

    const-string v2, "page_position"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
