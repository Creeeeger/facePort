.class public final Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final phonePicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

.field public final tabletPicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    invoke-direct {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;-><init>()V

    new-instance v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;-><init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V

    iput-object v1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->phonePicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    new-instance v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;-><init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V

    new-instance v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;-><init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V

    iput-object v1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->tabletPicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;

    return-void
.end method


# virtual methods
.method public final getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->tabletPicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->phonePicker:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    :goto_0
    return-object p0
.end method
