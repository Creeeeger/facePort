.class public final Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string p1, "QSClockIndicatorView"

    const-string v0, "12-24 format changed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void
.end method
