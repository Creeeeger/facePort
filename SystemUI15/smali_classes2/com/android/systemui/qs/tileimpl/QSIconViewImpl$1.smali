.class public final Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$a:Landroid/graphics/drawable/Animatable2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$a:Landroid/graphics/drawable/Animatable2;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$a:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->start()V

    return-void
.end method
