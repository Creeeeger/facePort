.class public final Lcom/android/systemui/power/SecPowerUI$8;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$8;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-object p3, p0, Lcom/android/systemui/power/SecPowerUI$8;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$8;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$8;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "turn_off_psm_trigger_level"

    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    iput p0, p1, Lcom/android/systemui/power/SecPowerUI;->mTurnOffPsmLevel:I

    return-void
.end method
