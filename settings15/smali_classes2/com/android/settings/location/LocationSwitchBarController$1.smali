.class public final Lcom/android/settings/location/LocationSwitchBarController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/location/LocationSwitchBarController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->this$0:Lcom/android/settings/location/LocationSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->this$0:Lcom/android/settings/location/LocationSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/location/LocationSwitchBarController;->-$$Nest$fgetmLocationEnabler(Lcom/android/settings/location/LocationSwitchBarController;)Lcom/android/settings/location/LocationEnabler;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->this$0:Lcom/android/settings/location/LocationSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/location/LocationSwitchBarController;->-$$Nest$fgetmLocationEnabler(Lcom/android/settings/location/LocationSwitchBarController;)Lcom/android/settings/location/LocationEnabler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
