.class public final Landroidx/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBuilderImpl:Landroidx/media/AudioAttributesImplApi26$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    new-instance v0, Landroidx/media/AudioAttributesImplApi26$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi26$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImplApi26$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/media/AudioAttributesCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    new-instance v0, Landroidx/media/AudioAttributesImplApi26$Builder;

    iget-object p1, p1, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    invoke-interface {p1}, Landroidx/media/AudioAttributesImpl;->getAudioAttributes()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media/AudioAttributesImplApi26$Builder;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImplApi26$Builder;

    return-void
.end method
