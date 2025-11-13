.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    check-cast p1, Landroid/util/Property;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
