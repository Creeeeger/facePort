.class public final Lcom/android/systemui/log/QuickPanelLoggerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dispatchTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

.field public final flingLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;

.field public final handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

.field public final onInterceptTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

.field public final onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

.field public final panelStateLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/log/QuickPanelLoggerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/log/QuickPanelExternalLogger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/QuickPanelExternalLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    const-string v2, "dispatchTouchEvent"

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;-><init>(Ljava/lang/String;Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->dispatchTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;

    invoke-direct {v1, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;-><init>(Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->flingLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    const-string v2, "handleTouch"

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;-><init>(Ljava/lang/String;Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    const-string v2, "onInterceptTouchEvent"

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;-><init>(Ljava/lang/String;Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onInterceptTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    const-string v2, "onTouchEvent"

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;-><init>(Ljava/lang/String;Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    new-instance v1, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;

    invoke-direct {v1, v0}, Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;-><init>(Lcom/android/systemui/log/QuickPanelExternalLogger;)V

    iput-object v1, p0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->panelStateLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$PanelStateLogger;

    return-void
.end method
