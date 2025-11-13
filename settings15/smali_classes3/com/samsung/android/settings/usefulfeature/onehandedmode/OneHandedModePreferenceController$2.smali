.class public final Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffFunctionsConflictWithOneHandedMode(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->-$$Nest$msetOneHandOperation(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;->-$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/onehandedmode/OneHandedModePreferenceController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
