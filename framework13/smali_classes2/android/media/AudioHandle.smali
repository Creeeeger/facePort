.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final greylist mId:I


# direct methods
.method constructor greylist-max-r <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/media/AudioHandle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/media/AudioHandle;

    .line 47
    .local v1, "ah":Landroid/media/AudioHandle;
    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {v1}, Landroid/media/AudioHandle;->id()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 44
    .end local v1    # "ah":Landroid/media/AudioHandle;
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 52
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method greylist-max-o id()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
