.class public Lcom/android/systemui/statusbar/policy/QSClockHeaderView;
.super Lcom/android/systemui/statusbar/policy/QSClock;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->ShowSecondsClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->Demo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeTextWithSeconds:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeContentDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
