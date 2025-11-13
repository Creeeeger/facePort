.class public Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field private blacklist mAttribute:[B

.field private blacklist mLen:I

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(II[B)V
    .locals 0
    .param p1, "mType"    # I
    .param p2, "mLen"    # I
    .param p3, "mAttribute"    # [B

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mType:I

    .line 14
    iput p2, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mLen:I

    .line 15
    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mAttribute:[B

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist getData()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mAttribute:[B

    return-object v0
.end method

.method public blacklist getLen()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mLen:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;->mType:I

    return v0
.end method
