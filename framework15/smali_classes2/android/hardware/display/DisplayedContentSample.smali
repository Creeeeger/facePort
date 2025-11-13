.class public final Landroid/hardware/display/DisplayedContentSample;
.super Ljava/lang/Object;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    }
.end annotation


# instance fields
.field private blacklist mNumFrames:J

.field private blacklist mSamplesComponent0:[J

.field private blacklist mSamplesComponent1:[J

.field private blacklist mSamplesComponent2:[J

.field private blacklist mSamplesComponent3:[J


# direct methods
.method public constructor blacklist <init>(J[J[J[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    iput-object p3, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    iput-object p4, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    iput-object p5, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    iput-object p6, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-void
.end method


# virtual methods
.method public blacklist getNumFrames()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/display/DisplayedContentSample;->mNumFrames:J

    return-wide v0
.end method

.method public blacklist getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent3:[J

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent2:[J

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent1:[J

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/display/DisplayedContentSample;->mSamplesComponent0:[J

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
