.class public final Lcom/android/systemui/accessibility/AccessibilityLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public lastEventThrottled:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

.field public lastTimeThrottledMs:J

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->clock:Lcom/android/systemui/util/time/SystemClock;

    return-void
.end method
