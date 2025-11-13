.class public final synthetic Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/VolumePanelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelDialog;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
