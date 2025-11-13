.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$fontSizeObserver$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->lastUpdateTime:J

    return-void
.end method
