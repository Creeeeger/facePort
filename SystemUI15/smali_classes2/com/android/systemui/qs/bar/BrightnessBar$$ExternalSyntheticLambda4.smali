.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    const/4 p0, 0x1

    return p0
.end method
