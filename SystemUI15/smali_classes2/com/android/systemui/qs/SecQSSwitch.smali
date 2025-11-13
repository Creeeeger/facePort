.class public Lcom/android/systemui/qs/SecQSSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsCheckedWhenTouchDown:Z

.field public mIsClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSSwitch;->mIsCheckedWhenTouchDown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSSwitch;->mIsClicked:Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSSwitch;->mIsClicked:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQSSwitch;->mIsCheckedWhenTouchDown:Z

    if-eq v1, p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->callOnClick()Z

    :cond_2
    return v0
.end method

.method public final performClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQSSwitch;->mIsClicked:Z

    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result p0

    return p0
.end method
