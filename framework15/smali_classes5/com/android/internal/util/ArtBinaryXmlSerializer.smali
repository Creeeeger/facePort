.class public Lcom/android/internal/util/ArtBinaryXmlSerializer;
.super Lcom/android/modules/utils/BinaryXmlSerializer;
.source "ArtBinaryXmlSerializer.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist obtainFastDataOutput(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/ArtFastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/ArtFastDataOutput;

    move-result-object v0

    return-object v0
.end method
