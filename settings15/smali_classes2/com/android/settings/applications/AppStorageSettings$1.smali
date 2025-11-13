.class public final Lcom/android/settings/applications/AppStorageSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppStorageSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/AppStorageSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    sget-object p2, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p0}, Lcom/android/settings/applications/AppStorageSettings;->-$$Nest$minitiateClearUserData(Lcom/android/settings/applications/AppStorageSettings;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
