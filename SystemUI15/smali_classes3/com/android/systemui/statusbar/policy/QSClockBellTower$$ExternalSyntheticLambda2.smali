.class public final synthetic Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
