.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final synthetic f$1:Lcom/android/internal/view/AppearanceRegion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;->f$1:Lcom/android/internal/view/AppearanceRegion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda15;->f$1:Lcom/android/internal/view/AppearanceRegion;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mIsCustomizingForBackNav:Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    :goto_2
    return-void
.end method
