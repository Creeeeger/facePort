.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final dividerHeight$delegate:Lkotlin/properties/NotNullVar;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final maxGroupExpandedBottomGap$delegate:Lkotlin/properties/NotNullVar;

.field public final maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final resources:Landroid/content/res/Resources;

.field public saveSpaceOnLockscreen:Z

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    const-string v2, "maxKeyguardNotifications"

    const-string v3, "getMaxKeyguardNotifications()I"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v5, "dividerHeight"

    const-string v6, "getDividerHeight()F"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "maxGroupExpandedBottomGap"

    const-string v6, "getMaxGroupExpandedBottomGap()F"

    invoke-static {v1, v5, v6, v4, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lkotlin/properties/NotNullVar;

    invoke-direct {p1}, Lkotlin/properties/NotNullVar;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    new-instance p1, Lkotlin/properties/NotNullVar;

    invoke-direct {p1}, Lkotlin/properties/NotNullVar;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    new-instance p1, Lkotlin/properties/NotNullVar;

    invoke-direct {p1}, Lkotlin/properties/NotNullVar;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxGroupExpandedBottomGap$delegate:Lkotlin/properties/NotNullVar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->updateResources()V

    return-void
.end method

.method public static final access$canStackFitInSpace(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;FF)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeight:F

    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->shelfHeightWithSpaceBefore:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;->notifsHeightSavingSpace:F

    if-nez v1, :cond_2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    goto :goto_0

    :cond_0
    cmpg-float p0, p1, p2

    if-gtz p0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT_IF_SAVE_SPACE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->NO_FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    goto :goto_0

    :cond_2
    add-float/2addr p0, v0

    add-float/2addr p2, p3

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    goto :goto_0

    :cond_3
    add-float/2addr p1, v0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->FIT_IF_SAVE_SPACE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;->NO_FIT:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$FitResult;

    :goto_0
    return-object p0
.end method

.method public static isShowable(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_5

    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_2

    :goto_0
    return v1

    :cond_2
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_1

    :cond_3
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method


# virtual methods
.method public final calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F
    .locals 4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result p1

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    invoke-virtual {v3, p0, v1}, Lkotlin/properties/NotNullVar;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    const/4 p1, 0x0

    if-ne p4, v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result p4

    goto :goto_0

    :cond_1
    move p4, p1

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->getMaxGroupExpandedBottomGap()F

    move-result p4

    add-float/2addr v0, p4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result p4

    goto :goto_1

    :cond_3
    move p4, p1

    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->getMaxGroupExpandedBottomGap()F

    move-result p4

    add-float/2addr v0, p4

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v2, p1

    :goto_2
    if-eqz v2, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result p1

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->getMaxGroupExpandedBottomGap()F

    move-result p0

    add-float/2addr v0, p0

    :cond_7
    add-float/2addr v1, v0

    return v1
.end method

.method public final computeMaxKeyguardNotifications(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FFF)I
    .locals 8

    add-float v0, p2, p3

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {p4, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$maxNotifWithoutSavingSpace$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$maxNotifWithoutSavingSpace$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;FF)V

    new-instance v5, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {v5, p4, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v5}, Lkotlin/sequences/TakeWhileSequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_1
    move-object v6, v4

    check-cast v6, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-virtual {v6}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    throw v2

    :cond_3
    sub-int/2addr v5, v3

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-lt v5, v0, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeMaxKeyguardNotifications$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;FF)V

    new-instance p2, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {p2, p4, v0}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2}, Lkotlin/sequences/TakeWhileSequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_3
    move-object p4, p2

    check-cast p4, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-virtual {p4}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p4}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    if-ltz p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    throw v2

    :cond_7
    add-int/lit8 v5, p3, -0x1

    :goto_4
    invoke-static {p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;

    new-instance p3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {p3, p1, p2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    invoke-static {p3, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of p3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p3, :cond_8

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    iput-boolean p3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSaveSpaceOnLockscreen:Z

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->onLockscreen()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    invoke-virtual {p2, p0, p1}, Lkotlin/properties/NotNullVar;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_a
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getMaxGroupExpandedBottomGap()F
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxGroupExpandedBottomGap$delegate:Lkotlin/properties/NotNullVar;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/NotNullVar;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getSpaceNeeded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;
    .locals 1

    invoke-static {p1, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->isShowable(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeightWithoutLockscreenConstraints()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p4, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result p0

    const/4 p2, 0x1

    if-eqz p5, :cond_1

    instance-of p3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p3

    int-to-float p3, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v0

    :goto_1
    add-float/2addr p3, p0

    if-eqz p5, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p1

    int-to-float v0, p1

    :cond_2
    add-float/2addr v0, p0

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;-><init>(FF)V

    return-object p0
.end method

.method public final onLockscreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getFractionToShade()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final updateResources()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v1, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxKeyguardNotifications$delegate:Lkotlin/properties/NotNullVar;

    iput-object v0, v1, Lkotlin/properties/NotNullVar;->value:Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070b33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->dividerHeight$delegate:Lkotlin/properties/NotNullVar;

    iput-object v0, v1, Lkotlin/properties/NotNullVar;->value:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070b3b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->maxGroupExpandedBottomGap$delegate:Lkotlin/properties/NotNullVar;

    iput-object v0, p0, Lkotlin/properties/NotNullVar;->value:Ljava/lang/Object;

    return-void
.end method
