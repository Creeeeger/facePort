.class public final Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetailController;->qsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$setupDetailHeader$3$1;->$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    :cond_0
    return-void
.end method
