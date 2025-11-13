.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mSignalMeasureFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->startScan()V

    :cond_0
    return-void

    :pswitch_1
    sget p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
