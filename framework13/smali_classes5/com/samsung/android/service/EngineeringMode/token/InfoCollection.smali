.class Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.super Ljava/lang/Object;
.source "Infocollection.java"


# instance fields
.field private blacklist mMagicString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMagicString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->mMagicString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setMagicString(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->mMagicString:Ljava/lang/String;

    .line 12
    return-void
.end method
