.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetHeight:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {v2, v2, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    if-eq v3, v1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isBottomGestureMode(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->rotation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    invoke-static {v2, v2, p0, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    invoke-static {p0, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method
