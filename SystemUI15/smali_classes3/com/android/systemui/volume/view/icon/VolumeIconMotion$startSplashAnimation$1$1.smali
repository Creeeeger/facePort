.class public final Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $splash:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;->$splash:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 0

    const/4 p1, 0x0

    cmpg-float p2, p2, p1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;->$splash:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;->$splash:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method
