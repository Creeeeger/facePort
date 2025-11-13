.class public final Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString$Companion;


# instance fields
.field public final separator:Ljava/lang/CharSequence;

.field public final texts:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->Companion:Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->texts:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->separator:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, " "

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    const/16 p0, 0x21

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->texts:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->texts:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->separator:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->separator:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->texts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->separator:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final bridge length()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->texts:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;->separator:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MultiSequenceString(texts="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", separator="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
