.class public final Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/logging/InstanceIdSequence;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/logging/InstanceIdSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method
