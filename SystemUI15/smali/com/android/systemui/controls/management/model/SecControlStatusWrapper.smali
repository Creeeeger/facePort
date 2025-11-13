.class public final Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;
.super Lcom/android/systemui/controls/management/model/SecElementWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ControlInterface;
.implements Lcom/android/systemui/controls/SecControlInterface;


# instance fields
.field public final controlStatus:Lcom/android/systemui/controls/ControlStatus;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ControlStatus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/SecElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getControlId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public final getFavorite()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    return p0
.end method

.method public final getIconWithoutPadding()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getIconWithoutPadding()Z

    move-result p0

    return p0
.end method

.method public final getIconWithoutShadowBg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getIconWithoutShadowBg()Z

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationEndFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLottieIconAnimationEndFrame()I

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLottieIconAnimationJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLottieIconAnimationJsonCache()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLottieIconAnimationJsonCache()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLottieIconAnimationRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLottieIconAnimationRepeatCount()I

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationStartFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getLottieIconAnimationStartFrame()I

    move-result p0

    return p0
.end method

.method public final getOverlayCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getRemoved()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    return p0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecControlStatusWrapper(controlStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
