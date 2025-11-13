.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    int-to-long v0, p1

    const p1, 0xeb14

    const v2, 0xeb16

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;->onClickResult(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    int-to-long v0, p1

    const v2, 0xeb14

    const v3, 0xeb16

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInfoDialogFragment;->listener:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$$ExternalSyntheticLambda0;->onClickResult(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
