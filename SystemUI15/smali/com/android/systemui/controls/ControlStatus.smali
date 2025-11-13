.class public final Lcom/android/systemui/controls/ControlStatus;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ControlInterface;
.implements Lcom/android/systemui/controls/SecControlInterface;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final control:Landroid/service/controls/Control;

.field public favorite:Z

.field public final removed:Z


# direct methods
.method public constructor <init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    iput-object p2, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    iput-boolean p4, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/ControlStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ControlStatus;

    iget-object v1, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    iget-object v3, p1, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    iget-boolean v3, p1, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getControlId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public final getFavorite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    return p0
.end method

.method public final getIconWithoutPadding()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutPadding()Z

    move-result p0

    return p0
.end method

.method public final getIconWithoutShadowBg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutShadowBg()Z

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationEndFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getCustomIconAnimationEndFrame()I

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLottieIconAnimationJsonCache()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLottieIconAnimationRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getCustomIconAnimationRepeatCount()I

    move-result p0

    return p0
.end method

.method public final getLottieIconAnimationStartFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getCustomIconAnimationStartFrame()I

    move-result p0

    return p0
.end method

.method public final getOverlayCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final getRemoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    return p0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v0}, Landroid/service/controls/Control;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    iget-object v1, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    iget-boolean v2, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ControlStatus(control="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", component="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", favorite="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", removed="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    const-string v0, ")"

    invoke-static {v3, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
