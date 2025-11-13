.class Landroid/media/AudioMetadata$1;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioMetadata;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$type:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/AudioMetadata$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/AudioMetadata$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Landroid/media/AudioMetadata$1;->val$name:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    iget-object p1, p0, Landroid/media/AudioMetadata$1;->val$type:Ljava/lang/Class;

    iput-object p1, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/AudioMetadata$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/AudioMetadata$Key;

    iget-object v3, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/media/AudioMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    invoke-interface {v1}, Landroid/media/AudioMetadata$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
