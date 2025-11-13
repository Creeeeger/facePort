.class public abstract Lcom/android/systemui/statusbar/policy/QSClock;
.super Landroid/widget/TextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# instance fields
.field public mClockVisibleByPolicy:Z

.field public mViewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const-string p1, "QSClock"

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const-string p1, "QSClock"

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateVisibility()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    return p0
.end method

.method public final disable(IIIZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x800000

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq p1, p3, :cond_4

    if-ne p3, p1, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->calculateVisibility()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    return-object p0
.end method

.method public notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->Demo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->TimeContentDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->calculateVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
