.class public final Landroid/speech/RecognitionPart$Builder;
.super Landroid/speech/RecognitionPart$BaseBuilder;
.source "RecognitionPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mFormattedText:Ljava/lang/String;

.field private blacklist mRawText:Ljava/lang/String;

.field private blacklist mTimestampMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;J)V
    .locals 0

    iput-wide p1, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedText(Landroid/speech/RecognitionPart$Builder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckNotUsed(Landroid/speech/RecognitionPart$Builder;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/speech/RecognitionPart$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/speech/RecognitionPart;
    .locals 7

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultFormattedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    :cond_1
    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/speech/RecognitionPart;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    :cond_2
    new-instance v0, Landroid/speech/RecognitionPart;

    iget-object v2, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    iget-object v3, p0, Landroid/speech/RecognitionPart$Builder;->mFormattedText:Ljava/lang/String;

    iget-wide v4, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    iget v6, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/speech/RecognitionPart;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/speech/RecognitionPart$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/speech/RecognitionPart$Builder;->mConfidenceLevel:I

    return-object p0
.end method

.method public bridge synthetic whitelist setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/speech/RecognitionPart$BaseBuilder;->setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setRawText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionPart$Builder;->mRawText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTimestampMillis(J)Landroid/speech/RecognitionPart$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/speech/RecognitionPart$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionPart$Builder;->mBuilderFieldsSet:J

    iput-wide p1, p0, Landroid/speech/RecognitionPart$Builder;->mTimestampMillis:J

    return-object p0
.end method
