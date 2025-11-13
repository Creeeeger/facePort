.class public final Lcom/android/systemui/navigationbar/buttons/DeadZone;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FLASH_PROPERTY:Lcom/android/systemui/navigationbar/buttons/DeadZone$1;


# instance fields
.field public final mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

.field public mDecay:I

.field public final mDisplayId:I

.field public mDisplayRotation:I

.field public mFlashFrac:F

.field public mHold:I

.field public mLastPokeTime:J

.field public final mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public mShouldFlash:Z

.field public mSizeMax:I

.field public mSizeMin:I

.field public final mUseDeadZone:Z

.field public mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone$1;

    const-string v1, "DeadZoneFlash"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/DeadZone$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->FLASH_PROPERTY:Lcom/android/systemui/navigationbar/buttons/DeadZone$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone$2;-><init>(Lcom/android/systemui/navigationbar/buttons/DeadZone;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mUseDeadZone:Z

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayId:I

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    return-void
.end method


# virtual methods
.method public final getSize(J)F
    .locals 5

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMax:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mLastPokeTime:J

    sub-long/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mHold:I

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDecay:I

    add-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_1
    int-to-long v3, v1

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    int-to-float p0, v0

    return p0

    :cond_2
    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    int-to-float p0, p0

    int-to-long v3, v1

    sub-long/2addr p1, v3

    long-to-float p1, p1

    int-to-float p2, v2

    div-float/2addr p1, p2

    invoke-static {p0, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0
.end method

.method public final onConfigurationChanged(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mUseDeadZone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mHold:I

    const v2, 0x7f0b00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDecay:I

    const v2, 0x7f070abe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    const v3, 0x7f070abf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMax:I

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    invoke-direct {v4, v5}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget v9, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayId:I

    invoke-virtual {v8, p0, v4, v9, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    invoke-direct {v2, v6}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;-><init>(Z)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v7, p0, v2, v9, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMax:I

    :cond_1
    const v2, 0x7f0b00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    move v5, v6

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mUseDeadZone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mLastPokeTime:J

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    if-eqz p0, :cond_2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_2
    return v4

    :cond_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->touchAutoDim(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    if-ne v3, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_7

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_7

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_6
    return v4

    :cond_7
    return v1
.end method
