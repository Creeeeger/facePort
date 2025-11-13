.class public final synthetic Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SecQSPanelControllerBase"

    const-string v1, "OnConfigurationChangedListener ,onConfigurationChange event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
