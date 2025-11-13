.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
