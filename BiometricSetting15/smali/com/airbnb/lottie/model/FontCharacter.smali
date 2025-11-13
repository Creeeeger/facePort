.class public final Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final character:C

.field public final fontFamily:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final style:Ljava/lang/String;

.field public final width:D


# direct methods
.method public constructor <init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 5
    .line 6
    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 9
    .line 10
    iput-object p5, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x1f

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/2addr p1, p0

    .line 8
    mul-int/lit8 p1, p1, 0x1f

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/2addr p0, p1

    .line 15
    return p0
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 4
    .line 5
    iget-char p0, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
