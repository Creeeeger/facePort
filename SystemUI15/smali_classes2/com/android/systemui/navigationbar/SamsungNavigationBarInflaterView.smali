.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;
.super Lcom/android/systemui/navigationbar/NavigationBarInflaterView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

.field public static final buttonSpace:Ljava/lang/String;

.field public static final centerGestureHint:Ljava/lang/String;

.field public static final keymargin:Ljava/lang/String;

.field public static final leftGestureHint:Ljava/lang/String;

.field public static final leftRemoteView:Ljava/lang/String;

.field public static final leftstr:Ljava/lang/String;

.field public static final navkey:Ljava/lang/String;

.field public static final pin:Ljava/lang/String;

.field public static final rightGestureHint:Ljava/lang/String;

.field public static final rightRemoteView:Ljava/lang/String;

.field public static final rightstr:Ljava/lang/String;

.field public static final space:Ljava/lang/String;

.field public static final taskStack:Ljava/lang/String;


# instance fields
.field public final displayId:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    const-string/jumbo v0, "space"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->space:Ljava/lang/String;

    const-string v0, "left"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    const-string/jumbo v0, "right"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    const-string v0, "pin"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    const-string v0, "navkey"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    const-string v0, "gap"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    const-string v0, "hint_left"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    const-string v0, "hint_center"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    const-string v0, "hint_right"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    const-string v0, "left_remote_view"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    const-string/jumbo v0, "right_remote_view"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    const-string/jumbo v0, "task_stack"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->taskStack:Ljava/lang/String;

    const-string v0, "button_space"

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    return-void
.end method


# virtual methods
.method public final addSidePadding(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    invoke-direct {v1, p2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;-><init>(Z)V

    iget p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p0, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowKeyboardButtonOnLeft()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p0

    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0d00a1

    const v3, 0x7f0d00a2

    const v4, 0x7f0d004d

    const v5, 0x7f0d0130

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    if-nez p1, :cond_7

    move v2, v5

    goto :goto_1

    :cond_7
    if-nez p0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    :cond_9
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d0125

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    :cond_a
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x7f0d0124

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_b
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const p0, 0x7f0d0126

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_c
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const p0, 0x7f0d0251

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_d
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const p1, 0x7f0d0250

    if-eqz p0, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_e
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->taskStack:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const p0, 0x7f0d0254

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_f
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const p0, 0x7f0d024f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_11
    move-object p0, v6

    :goto_2
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    :cond_12
    return-object p0

    :cond_13
    return-object v6
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f1303ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;-><init>(Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070b05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p2, :cond_2

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_1
    instance-of p2, p4, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz p2, :cond_4

    check-cast p4, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_5
    if-eqz p3, :cond_6

    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_2

    :cond_6
    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_2
    return-void
.end method

.method public final inflateChildren()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;-><init>(Z)V

    iget v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    const v5, 0x7f0d0258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;-><init>(Z)V

    iget v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    const v5, 0x7f0d0259

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    return-void
.end method

.method public final inflateLayout(Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    const v2, 0x7f0a07b3

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->space:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    sget-object v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    invoke-virtual {p0, v5, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    invoke-virtual {p0, v6, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    invoke-virtual {p0, v4, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, v5, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    invoke-virtual {p0, v6, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0416

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

.method public final inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 7

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d0253

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    invoke-direct {v4, p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;-><init>(Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070b05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v3, p0, v4, p1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_2
    instance-of p2, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz p2, :cond_4

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_5
    if-eqz p3, :cond_6

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_3

    :cond_6
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :cond_7
    :goto_3
    return-void
.end method

.method public final updateLayoutProviderView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateChildren()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method
