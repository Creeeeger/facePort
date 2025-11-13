.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/qs/QSSecurityFooter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialogView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda30;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
