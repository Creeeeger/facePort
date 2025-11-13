.class public final synthetic Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "QSClockBellTower"

    const-string v0, "QSClockBellAlternateCalendarUtil receive SettingsHelper callback !"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v1, "."

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
