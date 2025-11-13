.class public final synthetic Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ScrimController"

    const-string/jumbo v1, "setFrontScrimToBlack in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    return-void
.end method
