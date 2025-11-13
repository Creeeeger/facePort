.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget p1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;->rotation:I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    invoke-direct {p1, p0, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_4
    iget p1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;->rotation:I

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, v4, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_6
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, p0, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_7
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, p0, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_8
    new-instance p1, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    invoke-direct {p1, v4, v4, p0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p1
.end method
