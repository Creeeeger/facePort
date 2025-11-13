.class public final Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic $this_run:Lcom/android/systemui/qs/SecQSSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/DetailAdapter;Lcom/android/systemui/qs/SecQSSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;->$this_run:Lcom/android/systemui/qs/SecQSSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupHeaderSwitchListener$1$1;->$this_run:Lcom/android/systemui/qs/SecQSSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    return-void
.end method
