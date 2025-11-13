.class Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;
.super Landroid/media/MediaFormat$FilteredMappedKeySet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefixedKeySetWithPrefixRemoved"
.end annotation


# instance fields
.field private blacklist mPrefix:Ljava/lang/String;

.field private blacklist mPrefixLength:I

.field final synthetic blacklist this$0:Landroid/media/MediaFormat;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaFormat;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->this$0:Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;-><init>(Landroid/media/MediaFormat;)V

    iput-object p2, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefixLength:I

    return-void
.end method


# virtual methods
.method protected blacklist keepKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/media/MediaFormat$PrefixedKeySetWithPrefixRemoved;->mPrefixLength:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
