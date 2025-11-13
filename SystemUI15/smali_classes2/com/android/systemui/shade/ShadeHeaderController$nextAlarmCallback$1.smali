.class public final Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmIntent:Landroid/app/PendingIntent;

    return-void
.end method
