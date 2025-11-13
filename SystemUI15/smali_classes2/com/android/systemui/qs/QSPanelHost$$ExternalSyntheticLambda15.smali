.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanelHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanelHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    return-void
.end method


# virtual methods
.method public final applyResetSetting()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->resetSettings()V

    return-void
.end method
