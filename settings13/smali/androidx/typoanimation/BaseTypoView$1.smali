.class Landroidx/typoanimation/BaseTypoView$1;
.super Landroid/util/FloatProperty;
.source "BaseTypoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/typoanimation/BaseTypoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 61
    instance-of p0, p1, Landroidx/typoanimation/BaseTypoView;

    if-eqz p0, :cond_0

    .line 62
    check-cast p1, Landroidx/typoanimation/BaseTypoView;

    invoke-virtual {p1}, Landroidx/typoanimation/BaseTypoView;->getProgress()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/typoanimation/BaseTypoView$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 68
    instance-of p0, p1, Landroidx/typoanimation/BaseTypoView;

    if-eqz p0, :cond_0

    .line 69
    check-cast p1, Landroidx/typoanimation/BaseTypoView;

    invoke-virtual {p1, p2}, Landroidx/typoanimation/BaseTypoView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 58
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/typoanimation/BaseTypoView$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
