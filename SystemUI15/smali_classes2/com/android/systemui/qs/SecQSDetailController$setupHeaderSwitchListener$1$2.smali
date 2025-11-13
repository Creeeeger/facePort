.class public final Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $this_run:Lcom/android/systemui/qs/SecQSSwitch;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/SecQSSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->$this_run:Lcom/android/systemui/qs/SecQSSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    sget v0, Lcom/android/systemui/qs/SecQSDetailController;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->isBluetoothOrWifiTile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQSDetailController;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const p1, 0x7f13132a

    goto :goto_2

    :cond_2
    const p1, 0x7f131329    # 1.95496E38f

    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$2;->$this_run:Lcom/android/systemui/qs/SecQSSwitch;

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
