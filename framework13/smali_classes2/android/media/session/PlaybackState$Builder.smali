.class public final Landroid/media/session/PlaybackState$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mActions:J

.field private greylist-max-o mActiveItemId:J

.field private greylist-max-o mBufferedPosition:J

.field private final greylist-max-o mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mErrorMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mPosition:J

.field private greylist-max-o mSpeed:F

.field private greylist-max-o mState:I

.field private greylist-max-o mUpdateTime:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    .line 744
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 751
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "from"    # Landroid/media/session/PlaybackState;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    .line 744
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 760
    if-nez p1, :cond_0

    .line 761
    return-void

    .line 763
    :cond_0
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmState(Landroid/media/session/PlaybackState;)I

    move-result v1

    iput v1, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    .line 764
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmPosition(Landroid/media/session/PlaybackState;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    .line 765
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmBufferedPosition(Landroid/media/session/PlaybackState;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    .line 766
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmSpeed(Landroid/media/session/PlaybackState;)F

    move-result v1

    iput v1, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    .line 767
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmActions(Landroid/media/session/PlaybackState;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    .line 768
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmCustomActions(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 769
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmCustomActions(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 771
    :cond_1
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmErrorMessage(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 772
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmUpdateTime(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    .line 773
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmActiveItemId(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 774
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-$$Nest$fgetmExtras(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    .line 775
    return-void
.end method


# virtual methods
.method public whitelist addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;
    .locals 2
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;

    .line 929
    if-eqz p1, :cond_0

    .line 933
    iget-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    return-object p0

    .line 930
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not add a null CustomAction to PlaybackState."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/media/session/PlaybackState$Builder;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .line 914
    new-instance v6, Landroid/media/session/PlaybackState$CustomAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$CustomAction-IA;)V

    invoke-virtual {p0, v6}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/media/session/PlaybackState;
    .locals 20

    .line 993
    move-object/from16 v0, p0

    new-instance v18, Landroid/media/session/PlaybackState;

    move-object/from16 v1, v18

    iget v2, v0, Landroid/media/session/PlaybackState$Builder;->mState:I

    iget-wide v3, v0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    iget-wide v5, v0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    iget v7, v0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    iget-wide v8, v0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    iget-wide v10, v0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    iget-object v12, v0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    iget-wide v13, v0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    iget-object v15, v0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState-IA;)V

    return-object v18
.end method

.method public whitelist setActions(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "actions"    # J

    .line 889
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    .line 890
    return-object p0
.end method

.method public whitelist setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "id"    # J

    .line 959
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 960
    return-object p0
.end method

.method public whitelist setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "bufferedPosition"    # J

    .line 947
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    .line 948
    return-object p0
.end method

.method public whitelist setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 971
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 972
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 982
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    .line 983
    return-object p0
.end method

.method public whitelist setState(IJF)Landroid/media/session/PlaybackState$Builder;
    .locals 7
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setState(IJFJ)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "updateTime"    # J

    .line 816
    iput p1, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    .line 817
    iput-wide p2, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    .line 818
    iput-wide p5, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    .line 819
    iput p4, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    .line 820
    return-object p0
.end method
