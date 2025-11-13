.class public final Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mQuickStarDateStringFormat:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->mRingBellOfTowerRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
