.class public final Landroidx/slice/builders/ListBuilder$HeaderBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleLoading:Z

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method
