.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

.field public final synthetic blacklist f$1:Landroid/media/MediaExtractor;

.field public final synthetic blacklist f$2:Ljava/io/FileDescriptor;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;Landroid/media/MediaExtractor;Ljava/io/FileDescriptor;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaExtractor;

    iput-object p3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$2:Ljava/io/FileDescriptor;

    iput p4, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$2:Ljava/io/FileDescriptor;

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$3:I

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sume/core/filter/MediaParserFilter;->lambda$run$3$com-samsung-android-sume-core-filter-MediaParserFilter(Landroid/media/MediaExtractor;Ljava/io/FileDescriptor;ILjava/util/List;I)V

    return-void
.end method
