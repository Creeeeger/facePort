.class public final Lcom/android/systemui/controls/ui/SecSelectionItem;
.super Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/CharSequence;

.field public final componentName:Landroid/content/ComponentName;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final isPanel:Z

.field public final panelComponentName:Landroid/content/ComponentName;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    iput-object p5, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->panelComponentName:Landroid/content/ComponentName;

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->isPanel:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/SecSelectionItem;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    iget v3, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->panelComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecSelectionItem;->panelComponentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAppName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->panelComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->panelComponentName:Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SelectionItem{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPanel = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/SecSelectionItem;->isPanel:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", appName = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", panelComponent = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
