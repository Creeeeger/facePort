.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;Ljava/util/List;II)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->ACTION_BLUETOOTH_DEVICE_DETAILS:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->refreshPresetInfoAdapter(ILjava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->ACTION_BLUETOOTH_DEVICE_DETAILS:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$1;->this$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->refreshPresetInfoAdapter(ILjava/util/List;)V

    iget-object p0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mApplicationContext:Landroid/content/Context;

    const v0, 0x7f13074e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
