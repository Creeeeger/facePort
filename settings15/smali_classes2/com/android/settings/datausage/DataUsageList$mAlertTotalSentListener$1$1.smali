.class public final Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->access$resetTimeData(Lcom/android/settings/datausage/DataUsageList;I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->access$resetTimeData(Lcom/android/settings/datausage/DataUsageList;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
