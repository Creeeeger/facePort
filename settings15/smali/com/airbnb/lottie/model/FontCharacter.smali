.class public final Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final character:C

.field public final fontFamily:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final style:Ljava/lang/String;

.field public final width:D


# direct methods
.method public constructor <init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    iput-wide p3, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    iput-object p5, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    iput-object p6, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x1f

    mul-int/2addr p0, v0

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    iget-char p0, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
