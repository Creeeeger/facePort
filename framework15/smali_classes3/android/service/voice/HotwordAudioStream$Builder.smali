.class public final Landroid/service/voice/HotwordAudioStream$Builder;
.super Landroid/service/voice/HotwordAudioStream$BaseBuilder;
.source "HotwordAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mInitialAudio:[B

.field private blacklist mMetadata:Landroid/os/PersistableBundle;

.field private blacklist mTimestamp:Landroid/media/AudioTimestamp;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;J)V
    .locals 0

    iput-wide p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialAudio(Landroid/service/voice/HotwordAudioStream$Builder;[B)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

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
.method public whitelist build()Landroid/service/voice/HotwordAudioStream;
    .locals 7

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultTimestamp()Landroid/media/AudioTimestamp;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    :cond_0
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    :cond_1
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultInitialAudio()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    :cond_2
    new-instance v0, Landroid/service/voice/HotwordAudioStream;

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    iget-object v5, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    iget-object v6, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/voice/HotwordAudioStream;-><init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioTimestamp;Landroid/os/PersistableBundle;[B)V

    return-object v0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public whitelist setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public bridge synthetic whitelist setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/service/voice/HotwordAudioStream$BaseBuilder;->setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setMetadata(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public whitelist setTimestamp(Landroid/media/AudioTimestamp;)Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    return-object p0
.end method
