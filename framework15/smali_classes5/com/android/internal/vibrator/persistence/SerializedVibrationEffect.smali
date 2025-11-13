.class final Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;
.super Ljava/lang/Object;
.source "SerializedVibrationEffect.java"

# interfaces
.implements Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
        "Landroid/os/VibrationEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    return-void
.end method

.method constructor blacklist <init>([Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unsupported empty vibration"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    return-void
.end method


# virtual methods
.method public blacklist deserialize()Landroid/os/VibrationEffect;
    .locals 5

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4, v0}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;->deserializeIntoComposition(Landroid/os/VibrationEffect$Composition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist deserialize()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->deserialize()Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedVibrationEffect{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "vibration-effect"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V

    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public blacklist writeContent(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect;->mSegments:[Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/internal/vibrator/persistence/SerializedVibrationEffect$SerializedSegment;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
