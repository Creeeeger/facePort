.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 1

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion$build$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion$build$1;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;->getLabelRes()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;->build(Lkotlin/jvm/functions/Function0;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lkotlin/jvm/functions/Function0;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 13

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/CharSequence;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->expandedAccessibilityClass:Lkotlin/reflect/KClass;

    if-eqz p1, :cond_0

    check-cast p1, Lkotlin/jvm/internal/ClassReference;

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v12, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v11, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;Ljava/lang/CharSequence;Ljava/util/Set;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;Ljava/lang/String;)V

    return-object p0
.end method
