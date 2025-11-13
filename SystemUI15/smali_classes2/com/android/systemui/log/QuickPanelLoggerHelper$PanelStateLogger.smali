.class public final Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

.field public lastPanelState:Ljava/lang/String;

.field public final logBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/QuickPanelExternalLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->logBuilder:Ljava/lang/StringBuilder;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;->lastPanelState:Ljava/lang/String;

    return-void
.end method
