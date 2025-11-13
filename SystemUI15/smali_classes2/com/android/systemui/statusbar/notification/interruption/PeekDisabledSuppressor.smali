.class public final Lcom/android/systemui/statusbar/notification/interruption/PeekDisabledSuppressor;
.super Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final logger:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionLogger;Landroid/os/Handler;)V
    .locals 0

    sget-object p2, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;->PEEK:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const-string p3, "peek disabled by global setting"

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionCondition;-><init>(Ljava/util/Set;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/PeekDisabledSuppressor;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    return-void
.end method
