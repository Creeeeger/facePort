.class public Lcom/samsung/vekit/Content/FragmentAudio;
.super Lcom/samsung/vekit/Content/Content;
.source "FragmentAudio.java"


# instance fields
.field private blacklist bodyDurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist bodyPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist introDuration:J

.field private blacklist introPath:Ljava/lang/String;

.field private blacklist outroDuration:J

.field private blacklist outroPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist getBodyDurationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBodyPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIntroDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introDuration:J

    return-wide v0
.end method

.method public blacklist getIntroPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOutroDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroDuration:J

    return-wide v0
.end method

.method public blacklist getOutroPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setDurations(JLjava/util/ArrayList;J)Lcom/samsung/vekit/Content/FragmentAudio;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/samsung/vekit/Content/FragmentAudio;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introDuration:J

    iput-object p3, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyDurationList:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroDuration:J

    return-object p0
.end method

.method public blacklist setPaths(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/vekit/Content/FragmentAudio;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/vekit/Content/FragmentAudio;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Content/FragmentAudio;->introPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/vekit/Content/FragmentAudio;->bodyPathList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/vekit/Content/FragmentAudio;->outroPath:Ljava/lang/String;

    return-object p0
.end method
