.class public final Lcom/android/systemui/media/controls/util/MediaControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;
    .locals 1

    new-instance v0, Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method
