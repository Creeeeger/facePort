.class public final synthetic Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    check-cast p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->mode:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->toTransitionModeInt()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object v4, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->bounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/BoundsPair;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    iget-object v3, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->appearanceRegions:Ljava/util/List;

    new-array v2, v2, [Lcom/android/internal/view/AppearanceRegion;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/view/AppearanceRegion;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/data/model/StatusBarAppearance;->navbarColorManagedByIme:Z

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZZZ)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/LightBarController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
