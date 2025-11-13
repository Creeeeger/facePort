.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

.field public final synthetic blacklist f$1:Landroid/media/MediaExtractor;

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    iput-wide p3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$1:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda4;->f$2:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->lambda$run$4$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;JI)V

    return-void
.end method
