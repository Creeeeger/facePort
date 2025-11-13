.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KshView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KshView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x15

    const/4 p3, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-ne p2, p1, :cond_1

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    :cond_1
    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
