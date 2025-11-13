.class public final synthetic Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSEditButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSEditButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSEditButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSEditButton;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
