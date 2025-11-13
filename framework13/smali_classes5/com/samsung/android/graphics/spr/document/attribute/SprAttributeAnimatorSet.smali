.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeAnimatorSet.java"


# instance fields
.field public blacklist duration:I

.field private blacklist mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist repeatCount:I

.field public blacklist startOffset:I


# direct methods
.method public constructor blacklist <init>(B)V
    .locals 1
    .param p1, "type"    # B

    .line 25
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist addAnimatorData(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 105
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .line 106
    .local v0, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 109
    .local v2, "animator":Landroid/animation/Animator;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 6
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->startOffset:I

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    .line 39
    const/4 v0, 0x0

    .local v0, "o":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    .line 41
    .local v2, "type":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    .line 43
    .local v3, "size":I
    packed-switch v2, :pswitch_data_0

    .line 63
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto :goto_1

    .line 60
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_1

    .line 45
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorFillColor;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorFillColor;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_1

    .line 48
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorStrokeColor;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorStrokeColor;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_1

    .line 51
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorRotate;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorRotate;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_1

    .line 54
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_1

    .line 57
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    nop

    .line 39
    .end local v2    # "type":I
    .end local v3    # "size":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "o":I
    .end local v1    # "n":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAnimators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSPRSize()I
    .locals 4

    .line 87
    const/16 v0, 0x10

    .line 89
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 90
    .local v2, "animator":Landroid/animation/Animator;
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    .line 91
    .end local v2    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 92
    :cond_0
    return v0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->startOffset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 76
    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .line 77
    .local v2, "animatorBase":Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 78
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 80
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v2    # "animatorBase":Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public blacklist updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 117
    .local v1, "animator":Landroid/animation/Animator;
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    .end local v1    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
