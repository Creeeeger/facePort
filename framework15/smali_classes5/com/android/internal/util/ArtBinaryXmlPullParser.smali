.class public Lcom/android/internal/util/ArtBinaryXmlPullParser;
.super Lcom/android/modules/utils/BinaryXmlPullParser;
.source "ArtBinaryXmlPullParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/ArtFastDataInput;->obtain(Ljava/io/InputStream;)Lcom/android/internal/util/ArtFastDataInput;

    move-result-object v0

    return-object v0
.end method
