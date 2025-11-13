.class public final synthetic Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQuickQSPanelController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget v0, p0, Lcom/android/systemui/qs/SecQuickQSPanelController;->mOrientation:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    return v0
.end method
