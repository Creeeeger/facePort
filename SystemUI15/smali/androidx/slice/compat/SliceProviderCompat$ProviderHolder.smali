.class public final Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mProvider:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/slice/compat/SliceProviderCompat$ProviderHolder;->mProvider:Landroid/content/ContentProviderClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-void
.end method
