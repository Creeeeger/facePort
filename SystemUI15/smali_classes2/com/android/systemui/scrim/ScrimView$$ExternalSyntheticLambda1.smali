.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iput-boolean p3, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-boolean p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v2, v0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v3, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v3, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
